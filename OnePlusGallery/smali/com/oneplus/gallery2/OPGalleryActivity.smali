.class public Lcom/oneplus/gallery2/OPGalleryActivity;
.super Lcom/oneplus/gallery2/GalleryActivity;
.source "OPGalleryActivity.java"

# interfaces
.implements Lcom/oneplus/base/SnackBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery2/OPGalleryActivity$38;,
        Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;,
        Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;,
        Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;,
        Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    }
.end annotation


# static fields
.field private static final ADD_ALBUM_BUTTON_MOVING_THRESHOLD:F = 0.8f

.field private static final CHECK_APP_AND_PLATFORM_VERSION:Z = true

.field private static final DEFAULT_MEDIA_SET_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final DELAY_CLICK_VIEW_PAGER:J = 0x64L

.field private static final DURATION_BURSTVIEWER_ENTER_ANIMATION:J = 0x96L

.field private static final DURATION_BURSTVIEWER_EXIT_ANIMATION:J = 0x96L

.field private static final DURATION_DEACTIVATE_MEDIA_SOURCES_DELAY:J = 0x5dcL

.field private static final DURATION_ENTRY_TABS_ANIMATION:J = 0xc8L

.field private static final DURATION_FILMSTRIP_ENTER_ANIMATION:J = 0x96L

.field private static final DURATION_FILMSTRIP_EXIT_ANIMATION:J = 0x96L

.field private static final DURATION_GRIDVIEW_ENTER_ANIMATION:J = 0x12cL

.field private static final DURATION_GRIDVIEW_ENTER_DELAY:J = 0xc8L

.field private static final DURATION_GRIDVIEW_EXIT_ANIMATION:J = 0x12cL

.field private static final DURATION_RELEASE_MEDIA_SET_LIST_DELAY:J = 0xbb8L

.field private static final DURATION_SNACKBAR_ANIMATION:J = 0x96L

.field private static final EXTRA_START_PAGE:Ljava/lang/String; = "OPGalleryActivity.StartPage"

.field private static final EXTRA_START_PAGE_ALBUMS:Ljava/lang/String; = "ALBUMS"

.field private static final EXTRA_START_PAGE_PHOTOS:Ljava/lang/String; = "PHOTOS"

.field private static final FRAGMENT_TAG_BURST_VIEWER:Ljava/lang/String; = "GalleryActivity.BurstViewer"

.field private static final FRAGMENT_TAG_DEFAULT_GRID_VIEW:Ljava/lang/String; = "GalleryActivity.DefaultGridView"

.field private static final FRAGMENT_TAG_FILMSTRIP:Ljava/lang/String; = "GalleryActivity.Filmstrip"

.field private static final FRAGMENT_TAG_GRID_VIEW:Ljava/lang/String; = "GalleryActivity.GridView"

.field private static final FRAGMENT_TAG_MEDIA_SET_LIST:Ljava/lang/String; = "GalleryActivity.MediaSetList"

.field private static final INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

.field private static final IS_ENTRY_TABS_SCROLLABLE:Z = true

.field private static final MSG_UPDATE_BACKGROUNDS_FOR_BURSTVIEWER:I = 0x2711

.field private static final MSG_UPDATE_BACKGROUNDS_FOR_FILMSTRIP:I = 0x2710

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

.field private static final SHARE_DEFAULT_GRIDVIEW:Z = false

.field private static final SHOW_ALL_MEDIA_IN_PHOTOS_PAGE:Z = false

.field private static final SHOW_TITLE_BAR:Z = true

.field private static final STATE_KEY_ALL_MEDIA_MEDIA_SET:Ljava/lang/String;

.field private static final STATE_KEY_CURRENT_MEDIA_SET_HANDLE:Ljava/lang/String;

.field private static final STATE_KEY_DEFAULT_MEDIA_LIST:Ljava/lang/String;

.field private static final STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

.field private static final STATE_KEY_DEFAULT_MEDIA_SET_HANDLE:Ljava/lang/String;

.field private static final STATE_KEY_ENTRY_VIEW_PAGER_CURRENT_ITEM:Ljava/lang/String;

.field private static final STATE_KEY_MEDIA_LIST:Ljava/lang/String;

.field private static final STATE_KEY_MEDIA_SET_LIST:Ljava/lang/String;

.field private static final STATE_KEY_MODE:Ljava/lang/String;

.field private static final STATE_KEY_PREFIX:Ljava/lang/String;

.field private static final STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String;

.field private static final STATE_KEY_SUB_MEDIA_LIST:Ljava/lang/String;

.field private static final TAB_ALBUMS_INDEX:I = 0x1

.field private static final TAB_PHOTOS_INDEX:I

.field private static final m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

.field private static m_SharedMediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

.field private static m_SharedMediaSetListRefCount:I


# instance fields
.field private m_ActionBarHeight:I

.field private m_AddAlbumButton:Landroid/widget/RelativeLayout;

.field private m_AddAlbumButtonMarginBottom:I

.field private m_AddAlbumButtonSize:I

.field private final m_AlbumCreatedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/media/AlbumEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

.field private m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

.field private final m_BurstViewerButtonClickHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_BurstViewerClosedRunnable:Ljava/lang/Runnable;

.field private m_BurstViewerContainer:Landroid/view/View;

.field private m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

.field private final m_BurstViewerOpenedRunnable:Ljava/lang/Runnable;

.field private final m_BurstViewerSaveCompletedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_BurstViewerStatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private final m_CameraRollVisibilityChangedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ContentView:Landroid/view/ViewGroup;

.field private m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

.field private m_CurrentTabIndex:I

.field private final m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

.field private m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

.field private m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

.field private m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

.field private final m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_EntryPageContainer:Landroid/view/View;

.field private m_EntryPageTabContainer:Landroid/view/ViewGroup;

.field private m_EntryPageTabs:Landroid/view/View;

.field private m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

.field private m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

.field private m_EntryPageTitleAndTabTranslationYDistance:I

.field private final m_EntryTabsClosedRunnable:Ljava/lang/Runnable;

.field private final m_EntryTabsOpenedRunnable:Ljava/lang/Runnable;

.field private m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

.field private m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

.field private final m_FilmstripClosedRunnable:Ljava/lang/Runnable;

.field private m_FilmstripContainer:Landroid/view/View;

.field private m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

.field private final m_FilmstripMediaIndexChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_FilmstripOpenedRunnable:Ljava/lang/Runnable;

.field private m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private final m_GridViewClosedRunnable:Ljava/lang/Runnable;

.field private m_GridViewContainer:Landroid/view/View;

.field private m_GridViewEnterPositionY:I

.field private m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

.field private final m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_GridViewOpenedRunnable:Ljava/lang/Runnable;

.field private m_IsBurstViewerFragmentAdded:Z

.field private m_IsFilmstripFragmentAdded:Z

.field private m_IsGridViewFragmentAdded:Z

.field private m_IsInstanceStateSaved:Z

.field private final m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private final m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_MediaRemovingFromMediaListHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
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

.field private final m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

.field private m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

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

.field private m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

.field private m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

.field private final m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_Snackbar:Landroid/view/View;

.field private m_SnackbarActionTextView:Landroid/widget/TextView;

.field private m_SnackbarHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_SnackbarTitleTextView:Landroid/widget/TextView;

.field private m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

.field private m_StatusBarBackground:Landroid/view/View;

.field private m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

.field private m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private final m_SubMediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListChangeEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_TitleBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 83
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSetList"

    const-class v2, Lcom/oneplus/gallery2/media/MediaSetList;

    const-class v3, Lcom/oneplus/gallery2/OPGalleryActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    .line 90
    const-class v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->DEFAULT_MEDIA_SET_CLASS:Ljava/lang/Class;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MODE:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MediaSetList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MEDIA_SET_LIST:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AllMediaMediaSet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_ALL_MEDIA_MEDIA_SET:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DefaultMediaSet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DefaultMediaSetHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET_HANDLE:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DefaultMediaList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_LIST:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CurrentMediaSetHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_CURRENT_MEDIA_SET_HANDLE:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EntryViewPagerCurrentItem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_ENTRY_VIEW_PAGER_CURRENT_ITEM:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MediaList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MEDIA_LIST:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SnackbarHandles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SubMediaList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_SUB_MEDIA_LIST:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    .line 136
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$1;

    invoke-direct {v0}, Lcom/oneplus/gallery2/OPGalleryActivity$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/GalleryActivity;-><init>()V

    .line 170
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 186
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    .line 191
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    .line 200
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$2;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumCreatedHandler:Lcom/oneplus/base/EventHandler;

    .line 209
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$3;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerButtonClickHandler:Lcom/oneplus/base/EventHandler;

    .line 218
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$4;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerSaveCompletedHandler:Lcom/oneplus/base/EventHandler;

    .line 227
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$5;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 235
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$6;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    .line 243
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$7;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaRemovingFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    .line 251
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$8;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 259
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$9;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 267
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$10;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 275
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$11;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 286
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$12;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CameraRollVisibilityChangedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 294
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$13;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$13;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 302
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$14;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$14;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripMediaIndexChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 310
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$15;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$15;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 318
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$16;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$16;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 329
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$17;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$17;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 337
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$18;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$18;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    .line 347
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$19;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$19;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerClosedRunnable:Ljava/lang/Runnable;

    .line 355
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$20;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$20;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerOpenedRunnable:Ljava/lang/Runnable;

    .line 363
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$21;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$21;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

    .line 371
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$22;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$22;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsClosedRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$23;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$23;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsOpenedRunnable:Ljava/lang/Runnable;

    .line 401
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$24;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$24;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripClosedRunnable:Ljava/lang/Runnable;

    .line 409
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$25;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$25;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripOpenedRunnable:Ljava/lang/Runnable;

    .line 417
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$26;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$26;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    .line 425
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$27;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$27;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    .line 467
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 78
    invoke-static {}, Lcom/oneplus/gallery2/OPGalleryActivity;->releaseSharedMediaSetList()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/media/AlbumEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/AlbumEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onAlbumCreated(Lcom/oneplus/gallery2/media/AlbumEventArgs;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery2/OPGalleryActivity;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onCameraRollVisibilityChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery2/OPGalleryActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery2/OPGalleryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onFilmstripMediaIndexChanged(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery2/OPGalleryActivity;Landroid/app/Fragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->onEntryListViewScrollingStateChanged(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery2/OPGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultGridViewSelectionStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/MediaSetListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/MediaSetListFragment;)Lcom/oneplus/gallery2/MediaSetListFragment;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/oneplus/gallery2/OPGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetListSelectionStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery2/OPGalleryActivity;Landroid/app/Fragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery2/OPGalleryActivity;->onEntryListViewScrolled(Landroid/app/Fragment;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onBurstViewerButtonClickedInFilmstripView()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaList;
    .param p2, "x2"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->onSubMediaRemovedFromMediaList(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onBurstViewerClosed()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onBurstViewerOpened()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/base/Handle;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;)Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/oneplus/gallery2/OPGalleryActivity;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery2/OPGalleryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    return v0
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onFilmstripClosed()V

    return-void
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onFilmstripOpened()V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onGridViewClosed()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onBurstViewerSaveCompleted()V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onGridViewOpened()V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery2/OPGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->updateSnackbarVisibility(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery2/OPGalleryActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultGridViewFragmentReady(Lcom/oneplus/gallery2/GridViewFragment;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetListFragmentReady(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/oneplus/gallery2/OPGalleryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onEntryViewPagerPageSelected(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/GridViewFragment;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery2/OPGalleryActivity;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->onEntryViewPagerPageScrolled(IF)V

    return-void
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/AppTracker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/oneplus/gallery2/OPGalleryActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;)Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/ListItemEventArgs;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListItemEventArgs;
    .param p2, "x2"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaClickedInGridView(Lcom/oneplus/gallery2/ListItemEventArgs;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaList;
    .param p2, "x2"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaRemovedFromMediaList(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/media/MediaList;
    .param p2, "x2"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaRemovingFromMediaList(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/ListItemEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery2/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery2/ListItemEventArgs;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetClicked(Lcom/oneplus/gallery2/ListItemEventArgs;)V

    return-void
.end method

.method private attachBurstViewerFragment()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 501
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-nez v1, :cond_1

    .line 503
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "attachBurstViewerFragment() - No fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsBurstViewerFragmentAdded:Z

    if-nez v1, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f060011

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    const-string v4, "GalleryActivity.BurstViewer"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 509
    iput-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsBurstViewerFragmentAdded:Z

    goto :goto_0

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 512
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 513
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private attachFilmstripFragment()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 521
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-nez v1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "attachFilmstripFragment() - No fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v0, 0x0

    .line 535
    :cond_0
    :goto_0
    return v0

    .line 526
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsFilmstripFragmentAdded:Z

    if-nez v1, :cond_2

    .line 528
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06000f

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    const-string v4, "GalleryActivity.Filmstrip"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 529
    iput-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsFilmstripFragmentAdded:Z

    goto :goto_0

    .line 531
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/FilmstripFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private attachGridViewFragment()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 542
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "attachGridViewFragment() - No fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v0, 0x0

    .line 556
    :cond_0
    :goto_0
    return v0

    .line 547
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsGridViewFragmentAdded:Z

    if-nez v1, :cond_2

    .line 549
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06000d

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    const-string v4, "GalleryActivity.GridView"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 550
    iput-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsGridViewFragmentAdded:Z

    goto :goto_0

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 553
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 554
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private attachToMediaList(Lcom/oneplus/gallery2/media/MediaList;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 563
    if-eqz p1, :cond_0

    .line 565
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 566
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaRemovingFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 568
    :cond_0
    return-void
.end method

.method private attachToSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 574
    if-eqz p1, :cond_0

    .line 576
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 578
    :cond_0
    return-void
.end method

.method private changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    .prologue
    .line 583
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;Z)Z

    move-result v0

    return v0
.end method

.method private changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;Z)Z
    .locals 10
    .param p1, "mode"    # Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    .param p2, "animate"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 589
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    .line 590
    .local v2, "prevMode":Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    if-ne v2, p1, :cond_1

    move v6, v5

    .line 699
    :cond_0
    :goto_0
    return v6

    .line 593
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v7, "changeMode() - Change mode from "

    const-string v8, " to "

    invoke-static {v4, v7, v2, v8, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    const/4 v0, -0x1

    .line 597
    .local v0, "mediaIndex":I
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_3

    .line 599
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v7, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 600
    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 601
    :cond_2
    const/4 v0, -0x1

    .line 605
    :cond_3
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$Mode:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 644
    :cond_4
    :goto_1
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$Mode:[I

    invoke-virtual {v2}, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_1

    .line 689
    :cond_5
    :goto_2
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne p1, v4, :cond_7

    .line 691
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 692
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v4, :cond_6

    .line 693
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/OPGallery;

    iget-object v6, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery2/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 694
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 698
    :cond_7
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    move v6, v5

    .line 699
    goto :goto_0

    .line 608
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 609
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 610
    :cond_8
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 611
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 615
    :pswitch_1
    if-eqz p2, :cond_9

    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-eq v2, v4, :cond_9

    move v4, v5

    :goto_3
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->openGridView(Z)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_0

    :cond_9
    move v4, v6

    goto :goto_3

    .line 620
    :pswitch_2
    if-eqz p2, :cond_c

    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-eq v2, v4, :cond_c

    move v4, v5

    :goto_4
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->openFilmstrip(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->enableBeam()V

    .line 623
    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 624
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 625
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery2/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 626
    :cond_a
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 627
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/OPGalleryActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 628
    :cond_b
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v2, v4, :cond_4

    .line 629
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/FilmstripFragment;->backToInitialUIState()V

    goto/16 :goto_1

    :cond_c
    move v4, v6

    .line 620
    goto :goto_4

    .line 633
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->openBurstViewer(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    invoke-virtual {p0, v9}, Lcom/oneplus/gallery2/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 636
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 637
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery2/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 638
    :cond_d
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 639
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery2/OPGalleryActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_1

    .line 648
    :pswitch_4
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v7, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaSet;

    .line 649
    .local v1, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne p1, v4, :cond_5

    .line 651
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v4, :cond_e

    if-eqz v1, :cond_e

    .line 652
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v4, v1, v6}, Lcom/oneplus/gallery2/MediaSetListFragment;->scrollTo(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    .line 653
    :cond_e
    invoke-direct {p0, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeGridView(Z)V

    goto/16 :goto_2

    .line 660
    .end local v1    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :pswitch_5
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_12

    move v3, v5

    .line 661
    .local v3, "rotateActivity":Z
    :goto_5
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->disableBeam()V

    .line 662
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-eq p1, v4, :cond_f

    .line 664
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 665
    if-eqz p2, :cond_13

    if-nez v3, :cond_13

    move v4, v5

    :goto_6
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeFilmstrip(Z)V

    .line 667
    :cond_f
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 668
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne p1, v4, :cond_11

    .line 669
    if-eqz p2, :cond_10

    if-nez v3, :cond_10

    move v6, v5

    :cond_10
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeGridView(Z)V

    .line 670
    :cond_11
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 671
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    .end local v3    # "rotateActivity":Z
    :cond_12
    move v3, v6

    .line 660
    goto :goto_5

    .restart local v3    # "rotateActivity":Z
    :cond_13
    move v4, v6

    .line 665
    goto :goto_6

    .line 677
    .end local v3    # "rotateActivity":Z
    :pswitch_6
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_16

    move v3, v5

    .line 678
    .restart local v3    # "rotateActivity":Z
    :goto_7
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-eq p1, v4, :cond_14

    .line 679
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 680
    :cond_14
    if-eqz p2, :cond_15

    if-nez v3, :cond_15

    move v6, v5

    :cond_15
    invoke-direct {p0, v6}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeBurstViewer(Z)V

    .line 681
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 682
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 683
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    .end local v3    # "rotateActivity":Z
    :cond_16
    move v3, v6

    .line 677
    goto :goto_7

    .line 605
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 644
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private changeToStartingPage(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 706
    if-eqz p1, :cond_1

    const-string v4, "OPGalleryActivity.StartPage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "startPage":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    .line 710
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 719
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeToStartingPage() - Unknown start page : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :goto_2
    return v2

    .line 706
    .end local v1    # "startPage":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 710
    .restart local v1    # "startPage":Ljava/lang/String;
    :sswitch_0
    const-string v5, "PHOTOS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_1

    :sswitch_1
    const-string v5, "ALBUMS"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_1

    .line 713
    :pswitch_0
    const/4 v0, 0x0

    .line 722
    .local v0, "pageIndex":I
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "changeToStartingPage() - Start page : "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v4, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 725
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "changeToStartingPage() - Fail to change mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 716
    .end local v0    # "pageIndex":I
    :pswitch_1
    const/4 v0, 0x1

    .line 717
    .restart local v0    # "pageIndex":I
    goto :goto_3

    .line 728
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v4, :cond_3

    .line 729
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v4, v0, v2}, Lcom/oneplus/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .end local v0    # "pageIndex":I
    :cond_3
    move v2, v3

    .line 731
    goto :goto_2

    .line 710
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7360837f -> :sswitch_0
        0x733943e4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private closeBurstViewer(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 738
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 742
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 743
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-eqz v0, :cond_3

    .line 745
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 746
    invoke-virtual {v0, v2, v2}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    .line 747
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 748
    invoke-virtual {v0, v2, v2}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    .line 752
    :cond_3
    const/16 v1, 0x2711

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 753
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "gallery_activity_background"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 754
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    const-string v2, "entry_page_tab_background"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 755
    if-eqz p1, :cond_4

    .line 757
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 758
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 761
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onBurstViewerClosed()V

    goto :goto_0
.end method

.method private closeEntryTabs()V
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeEntryTabs(Ljava/lang/Float;)V

    .line 768
    return-void
.end method

.method private closeEntryTabs(Ljava/lang/Float;)V
    .locals 4
    .param p1, "translationY"    # Ljava/lang/Float;

    .prologue
    const/4 v2, 0x0

    .line 772
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 774
    :cond_1
    if-eqz p1, :cond_5

    .line 776
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 780
    iget v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 781
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 792
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 798
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 783
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 787
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 788
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 791
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE_PARTIAL:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 802
    :cond_5
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$EntryTabsState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 807
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_6

    .line 808
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 809
    :cond_6
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->CLOSING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 810
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery2/OPGalleryActivity$28;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$28;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 824
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private closeFilmstrip(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x1

    .line 835
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    .line 840
    .local v0, "gallery":Lcom/oneplus/gallery2/Gallery;
    if-eqz v0, :cond_3

    .line 842
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 843
    invoke-virtual {v0, v2, v2}, Lcom/oneplus/gallery2/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    .line 844
    :cond_2
    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 845
    invoke-virtual {v0, v2, v2}, Lcom/oneplus/gallery2/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    .line 849
    :cond_3
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 850
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "gallery_activity_background"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 851
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    const-string v2, "entry_page_tab_background"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 852
    if-eqz p1, :cond_4

    .line 854
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 855
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 858
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onFilmstripClosed()V

    goto :goto_0
.end method

.method private closeGridView(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 866
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    if-eqz p1, :cond_2

    .line 872
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 873
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 882
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onGridViewClosed()V

    goto :goto_0
.end method

.method private detachBurstViewerFragment()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "detachBurstViewerFragment() - Activity has been destroyed, no need to detach fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detachFilmstripFragment()V
    .locals 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 902
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_1

    .line 903
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "detachFilmstripFragment() - Activity has been destroyed, no need to detach fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detachFromMediaList(Lcom/oneplus/gallery2/media/MediaList;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 913
    if-eqz p1, :cond_0

    .line 915
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 916
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaRemovingFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 918
    :cond_0
    return-void
.end method

.method private detachFromSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;

    .prologue
    .line 923
    if-eqz p1, :cond_0

    .line 925
    sget-object v0, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 927
    :cond_0
    return-void
.end method

.method private detachGridViewFragment()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_2

    .line 937
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "detachGridViewFragment() - Activity has been destroyed, no need to detach fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDefaultMediaSetCandidate(Lcom/oneplus/gallery2/media/MediaSet;)Z
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;

    .prologue
    .line 1044
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->DEFAULT_MEDIA_SET_CLASS:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private onAlbumCreated(Lcom/oneplus/gallery2/media/AlbumEventArgs;)V
    .locals 6
    .param p1, "e"    # Lcom/oneplus/gallery2/media/AlbumEventArgs;

    .prologue
    .line 1060
    const/4 v2, 0x0

    .line 1061
    .local v2, "mediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    invoke-virtual {p1}, Lcom/oneplus/gallery2/media/AlbumEventArgs;->getMediaSets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/AlbumMediaSet;

    .line 1063
    .local v0, "candMediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v3, v0}, Lcom/oneplus/gallery2/media/MediaSetList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1065
    move-object v2, v0

    .line 1070
    .end local v0    # "candMediaSet":Lcom/oneplus/gallery2/media/AlbumMediaSet;
    :cond_1
    if-nez v2, :cond_3

    .line 1076
    :cond_2
    :goto_0
    return-void

    .line 1072
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAlbumMediaSetCreated() - mediaSet : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/oneplus/gallery2/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v3, :cond_2

    .line 1075
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->scrollTo(Lcom/oneplus/gallery2/media/MediaSet;Z)Z

    goto :goto_0
.end method

.method private onBurstViewerButtonClickedInFilmstripView()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1157
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1158
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1159
    .local v2, "mediaList":Lcom/oneplus/gallery2/media/MediaList;
    if-nez v2, :cond_0

    .line 1161
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onBurstViewerButtonClickedInFilmstripView() - No media list"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :goto_0
    return-void

    .line 1164
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1165
    .local v0, "currentIndex":I
    if-ltz v0, :cond_1

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 1167
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaClickedInGridView() - invalid media index :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", media list size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1170
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-nez v4, :cond_3

    .line 1172
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onMediaClickedInGridView() - No burst viewer fragment"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1177
    :cond_3
    invoke-interface {v2, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 1178
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    instance-of v4, v1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v4, :cond_4

    instance-of v4, v1, Lcom/oneplus/gallery2/media/GroupedMedia;

    if-eqz v4, :cond_4

    move-object v4, v1

    check-cast v4, Lcom/oneplus/gallery2/media/PhotoMedia;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/PhotoMedia;->isBurstGroup()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1181
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaClickedInGridView() - current media is not burst, index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1186
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachBurstViewerFragment()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1188
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onBurstViewerButtonClickedInFilmstripView() - Fail to attach fragment"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1191
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_7

    .line 1193
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBurstViewerButtonClickedInFilmstripView() - release list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1195
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1196
    iput-object v7, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    :cond_7
    move-object v4, v1

    .line 1198
    check-cast v4, Lcom/oneplus/gallery2/media/GroupedMedia;

    sget-object v5, Lcom/oneplus/gallery2/media/MediaComparator;->FILE_PATH_ASC:Lcom/oneplus/gallery2/media/MediaComparator;

    invoke-interface {v4, v5, v8}, Lcom/oneplus/gallery2/media/GroupedMedia;->openSubMediaList(Lcom/oneplus/gallery2/media/MediaComparator;I)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1199
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachToSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1200
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v6, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1201
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1202
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_COVER_MEDIA:Lcom/oneplus/base/PropertyKey;

    check-cast v1, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {v4, v5, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1203
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1205
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBurstViewerButtonClickedInFilmstripView() - set list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1211
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v4}, Lcom/oneplus/gallery2/BurstViewerFragment;->backToInitialUIState()V

    goto/16 :goto_0

    .line 1215
    :cond_8
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onBurstViewerButtonClickedInFilmstripView() - Fail to change mode"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5, v7}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1217
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5, v7}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1218
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_COVER_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5, v7}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1219
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1220
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1221
    iput-object v7, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1222
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachBurstViewerFragment()V

    goto/16 :goto_0
.end method

.method private onBurstViewerClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1137
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->backToInitialUIState()V

    .line 1139
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1140
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1141
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1142
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_COVER_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1143
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachBurstViewerFragment()V

    .line 1145
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1148
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1149
    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1151
    :cond_0
    return-void
.end method

.method private onBurstViewerFragmentReady(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/oneplus/gallery2/BurstViewerFragment;

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBurstViewerFragmentReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    sget-object v0, Lcom/oneplus/gallery2/BurstViewerFragment;->EVENT_SAVE_COMPLETED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerSaveCompletedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1233
    return-void
.end method

.method private onBurstViewerOpened()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 1239
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1247
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_3

    .line 1248
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1254
    :cond_2
    :goto_0
    const/16 v0, 0x2711

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1255
    return-void

    .line 1250
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBurstViewerOpened() - Activity has been destroyed, no need to hide filmstrip view fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onBurstViewerSaveCompleted()V
    .locals 2

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v0, v1, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBurstViewerSaveCompleted() - go back "

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->goBack()Z

    .line 1265
    :cond_0
    return-void
.end method

.method private onCameraRollVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isVisible"    # Ljava/lang/Boolean;

    .prologue
    .line 1270
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->DEFAULT_MEDIA_SET_CLASS:Ljava/lang/Class;

    const-class v1, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v0, :cond_1

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    goto :goto_0

    .line 1282
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onDefaultGridViewFragmentReady(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    const/4 v2, 0x1

    .line 1473
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultGridViewFragmentReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1479
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1480
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1481
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1482
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1485
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1486
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1487
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1490
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1491
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1492
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ActionBarHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1494
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v0, :cond_2

    .line 1497
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    .line 1503
    :cond_0
    :goto_0
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1504
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultGridViewSelectionStateChanged(Z)V

    .line 1505
    :cond_1
    return-void

    .line 1499
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultGridViewFragmentReady() - No default media set"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDefaultGridViewSelectionStateChanged(Z)V
    .locals 3
    .param p1, "isSelectionMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1511
    if-eqz p1, :cond_2

    .line 1513
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 1516
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->openEntryTabs(Z)V

    .line 1518
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1519
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->lockPosition()V

    .line 1520
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1522
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1529
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1530
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->unlockPosition()V

    .line 1531
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onDefaultMediaSetCreated(Lcom/oneplus/gallery2/media/MediaSet;Z)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery2/media/MediaSet;
    .param p2, "openMediaList"    # Z

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultMediaSetCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 1545
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1546
    sget-object v0, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    .line 1549
    if-eqz p2, :cond_0

    .line 1550
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->openDefaultMediaList()Z

    .line 1551
    :cond_0
    return-void
.end method

.method private onDefaultMediaSetDeleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1557
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultMediaSetDeleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_0

    .line 1562
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1563
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1571
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 1572
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_2

    .line 1574
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1575
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1576
    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1580
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1583
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_3

    .line 1584
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1585
    :cond_3
    return-void
.end method

.method private onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v0, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1594
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 1595
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1597
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onEntryListViewScrolled(Landroid/app/Fragment;II)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "prevOffsetY"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 1683
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1693
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1706
    :cond_4
    sub-int v0, p3, p2

    .line 1707
    .local v0, "diff":I
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    .line 1709
    .local v1, "translationY":F
    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    if-ge p3, v2, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_5

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1711
    :cond_5
    int-to-float v2, v0

    add-float/2addr v1, v2

    .line 1712
    if-gez v0, :cond_6

    .line 1713
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeEntryTabs(Ljava/lang/Float;)V

    goto :goto_0

    .line 1696
    .end local v0    # "diff":I
    .end local v1    # "translationY":F
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 1700
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 1715
    .restart local v0    # "diff":I
    .restart local v1    # "translationY":F
    :cond_6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->openEntryTabs(Ljava/lang/Float;Z)V

    goto :goto_0

    .line 1693
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onEntryListViewScrollingStateChanged(Landroid/app/Fragment;Z)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "isScrolling"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1723
    if-eqz p2, :cond_1

    .line 1767
    :cond_0
    :goto_0
    return-void

    .line 1725
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1728
    const/4 v1, 0x0

    .line 1729
    .local v1, "scrollOffsetY":F
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1746
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 1749
    .local v0, "currentTranslationY":F
    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    cmpl-float v2, v1, v0

    if-gez v2, :cond_0

    .line 1753
    :cond_2
    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 1755
    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    .line 1758
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeEntryTabs(Ljava/lang/Float;)V

    goto :goto_0

    .line 1732
    .end local v0    # "currentTranslationY":F
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-ne p1, v2, :cond_0

    .line 1734
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1736
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v1, v2

    .line 1737
    goto :goto_1

    .line 1739
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-ne p1, v2, :cond_0

    .line 1741
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1743
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v1, v2

    goto/16 :goto_1

    .line 1762
    .restart local v0    # "currentTranslationY":F
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->closeEntryTabs()V

    goto/16 :goto_0

    .line 1766
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->openEntryTabs()V

    goto/16 :goto_0

    .line 1729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onEntryViewPagerPageScrolled(IF)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 1774
    if-nez p1, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p2

    const v9, 0x3a83126f    # 0.001f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 1776
    const/4 p1, 0x1

    .line 1777
    const/4 p2, 0x0

    .line 1780
    :cond_0
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-nez v8, :cond_3

    .line 1782
    iput p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentTabIndex:I

    .line 1783
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1789
    :goto_0
    iget v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButtonSize:I

    iget v9, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButtonMarginBottom:I

    add-int v7, v8, v9

    .line 1790
    .local v7, "tansitionDistance":I
    if-nez p1, :cond_7

    .line 1792
    iget v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentTabIndex:I

    if-nez v8, :cond_5

    .line 1795
    const v8, 0x3f4ccccd    # 0.8f

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_4

    .line 1796
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    int-to-float v9, v7

    const v10, 0x3f4ccccd    # 0.8f

    sub-float v10, p2, v10

    const v11, 0x3e4ccccc    # 0.19999999f

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1815
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_c

    .line 1817
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1818
    .local v6, "tab":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1819
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 1821
    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 1822
    .local v5, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "j":I
    :goto_3
    if-ltz v4, :cond_2

    .line 1824
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1825
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v2, Lcom/oneplus/gallery/drawable/BorderDrawable;

    if-eqz v8, :cond_8

    .line 1827
    move-object v0, v2

    .line 1832
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "j":I
    .end local v5    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    instance-of v8, v0, Lcom/oneplus/gallery/drawable/BorderDrawable;

    if-eqz v8, :cond_b

    .line 1835
    if-ne v3, p1, :cond_9

    .line 1836
    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;->CURRENT:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .line 1841
    .local v1, "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :goto_4
    check-cast v0, Lcom/oneplus/gallery/drawable/BorderDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2, v1}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorderLengthRatio(FLcom/oneplus/gallery/drawable/BorderDrawable$BorderType;)V

    .line 1815
    .end local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1786
    .end local v3    # "i":I
    .end local v6    # "tab":Landroid/widget/TextView;
    .end local v7    # "tansitionDistance":I
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0

    .line 1798
    .restart local v7    # "tansitionDistance":I
    :cond_4
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1800
    :cond_5
    iget v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentTabIndex:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1803
    const v8, 0x3e4ccccc    # 0.19999999f

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_6

    .line 1804
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    int-to-float v9, v7

    const v10, 0x3e4ccccc    # 0.19999999f

    div-float v10, p2, v10

    mul-float/2addr v9, v10

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1806
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    mul-int/lit8 v9, v7, -0x1

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1809
    :cond_7
    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 1811
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    mul-int/lit8 v9, v7, -0x1

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1822
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v6    # "tab":Landroid/widget/TextView;
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1837
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "j":I
    .end local v5    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_9
    add-int/lit8 v8, p1, 0x1

    if-ne v3, v8, :cond_a

    .line 1838
    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;->RELATED_NEIGHBOR:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .restart local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    goto :goto_4

    .line 1840
    .end local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :cond_a
    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;->STRANGER:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .restart local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    goto :goto_4

    .line 1844
    .end local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :cond_b
    iget-object v8, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v9, "onEntryViewPagerPageScrolled() - backgroundDrawable is not BorderDrawable"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1846
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "tab":Landroid/widget/TextView;
    :cond_c
    return-void
.end method

.method private onEntryViewPagerPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1853
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1855
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1856
    .local v1, "tab":Landroid/widget/TextView;
    const v2, 0x7f0a000e

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1857
    if-ne p1, v0, :cond_0

    .line 1859
    const-string v2, "entry_page_tab_text_selected"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1853
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1863
    :cond_0
    const-string v2, "entry_page_tab_text"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1868
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->openEntryTabs()V

    .line 1869
    return-void
.end method

.method private onFilmstripClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1875
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->backToInitialUIState()V

    .line 1877
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1878
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1879
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFilmstripFragment()V

    .line 1880
    return-void
.end method

.method private onFilmstripFragmentReady(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/oneplus/gallery2/FilmstripFragment;

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onFilmstripFragmentReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1892
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripMediaIndexChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1893
    sget-object v0, Lcom/oneplus/gallery2/FilmstripFragment;->EVENT_BURST_VIEWER_BUTTON_CLICK:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerButtonClickHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1894
    return-void
.end method

.method private onFilmstripMediaIndexChanged(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 1900
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 1902
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v2, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1903
    .local v0, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    if-eqz v0, :cond_0

    .line 1905
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 1906
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->scrollTo(IZ)Z

    .line 1911
    .end local v0    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_0
    :goto_0
    return-void

    .line 1907
    .restart local v0    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 1908
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->scrollTo(IZ)Z

    goto :goto_0
.end method

.method private onFilmstripOpened()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 1918
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1920
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1926
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_3

    .line 1927
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1933
    :cond_2
    :goto_0
    const/16 v0, 0x2710

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1934
    return-void

    .line 1929
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onFilmstripOpened() - Activity has been destroyed, no need to hide grid view fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onGridViewClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1940
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1941
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->backToInitialUIState()V

    .line 1942
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1943
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1944
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1945
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachGridViewFragment()V

    .line 1946
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eq v0, v1, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1949
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1950
    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1953
    return-void
.end method

.method private onGridViewFragmentReady(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery2/GridViewFragment;

    .prologue
    const/4 v2, 0x0

    .line 1959
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onGridViewFragmentReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1963
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1966
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ActionBarHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1967
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1970
    sget-object v0, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1971
    return-void
.end method

.method private onGridViewOpened()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1978
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1981
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1984
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1985
    return-void
.end method

.method private onMediaClickedInGridView(Lcom/oneplus/gallery2/ListItemEventArgs;Z)V
    .locals 7
    .param p2, "isDefaultGridView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "e":Lcom/oneplus/gallery2/ListItemEventArgs;, "Lcom/oneplus/gallery2/ListItemEventArgs<Lcom/oneplus/gallery2/media/Media;>;"
    const/4 v6, 0x0

    .line 2005
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListItemEventArgs;->getIndex()I

    move-result v0

    .line 2008
    .local v0, "index":I
    if-eqz p2, :cond_0

    .line 2010
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 2011
    .local v2, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2018
    .local v1, "mediaList":Lcom/oneplus/gallery2/media/MediaList;
    :goto_0
    if-nez v1, :cond_1

    .line 2020
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - No media list"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    :goto_1
    return-void

    .line 2015
    .end local v1    # "mediaList":Lcom/oneplus/gallery2/media/MediaList;
    .end local v2    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSet;

    .line 2016
    .restart local v2    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .restart local v1    # "mediaList":Lcom/oneplus/gallery2/media/MediaList;
    goto :goto_0

    .line 2023
    :cond_1
    if-ltz v0, :cond_2

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 2025
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMediaClickedInGridView() - Invalid media index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2028
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-nez v3, :cond_4

    .line 2030
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - No filmstrip fragment"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2035
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachFilmstripFragment()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2037
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - Fail to attach fragment"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2042
    :cond_5
    if-eqz p2, :cond_6

    .line 2043
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2044
    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2045
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2046
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2047
    sget-object v3, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2048
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/FilmstripFragment;->backToInitialUIState()V

    goto :goto_1

    .line 2051
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - Fail to change mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2053
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v6}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2054
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFilmstripFragment()V

    goto/16 :goto_1
.end method

.method private onMediaRemovedFromMediaList(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;
    .param p2, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v0, v1, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRemovedFromMediaList() - Media list is empty, go back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->goBack()Z

    .line 2067
    :cond_0
    return-void
.end method

.method private onMediaRemovingFromMediaList(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 7
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;
    .param p2, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 2073
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v6, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v5, v6, :cond_0

    .line 2075
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v4

    .line 2076
    .local v4, "start":I
    invoke-virtual {p2}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    .line 2077
    .local v1, "end":I
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    .line 2078
    .local v3, "size":I
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v6, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_COVER_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 2079
    .local v0, "coverMedia":Lcom/oneplus/gallery2/media/Media;
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 2081
    if-ge v2, v3, :cond_1

    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_1

    .line 2083
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v6, "onMediaRemovingFromMediaList() - grouped media is removing from burst view, go back"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->goBack()Z

    .line 2089
    .end local v0    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "start":I
    :cond_0
    return-void

    .line 2079
    .restart local v0    # "coverMedia":Lcom/oneplus/gallery2/media/Media;
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    .restart local v4    # "start":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private onMediaSetAdded(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 5
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    const/4 v4, 0x1

    .line 2095
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2096
    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 2099
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-nez v3, :cond_1

    .line 2101
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 2103
    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v3, v1}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaSet;

    .line 2104
    .local v2, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->isDefaultMediaSetCandidate(Lcom/oneplus/gallery2/media/MediaSet;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2106
    invoke-direct {p0, v2, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultMediaSetCreated(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    .line 2111
    .end local v0    # "endIndex":I
    .end local v1    # "i":I
    .end local v2    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_1
    return-void

    .line 2101
    .restart local v0    # "endIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onMediaSetClicked(Lcom/oneplus/gallery2/ListItemEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery2/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery2/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "e":Lcom/oneplus/gallery2/ListItemEventArgs;, "Lcom/oneplus/gallery2/ListItemEventArgs<Lcom/oneplus/gallery2/media/MediaSet;>;"
    const/4 v4, 0x0

    .line 2118
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-eq v1, v2, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2122
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eq v1, v2, :cond_2

    .line 2124
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 2125
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 2126
    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2130
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListItemEventArgs;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 2132
    .local v0, "set":Lcom/oneplus/gallery2/media/MediaSet;
    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2134
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - mediaSet is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2138
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eq v0, v1, :cond_4

    .line 2140
    sget-object v1, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2141
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 2147
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2148
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/OPGallery;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery2/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 2153
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachGridViewFragment()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2155
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - Fail to attach fragment"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eq v1, v2, :cond_0

    .line 2158
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 2159
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 2160
    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    goto :goto_0

    .line 2144
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    goto :goto_1

    .line 2164
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2165
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2166
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2167
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/GridViewFragment;->backToInitialUIState()V

    goto/16 :goto_0

    .line 2170
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - Fail to change mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2172
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2173
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachGridViewFragment()V

    goto/16 :goto_0
.end method

.method private onMediaSetListFragmentReady(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery2/MediaSetListFragment;

    .prologue
    .line 2187
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetListFragmentReady()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2193
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2194
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2195
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2196
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2199
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2202
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2203
    .local v0, "paddingTop":I
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_LIST_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2204
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ActionBarHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2207
    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2208
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetListSelectionStateChanged(Z)V

    .line 2209
    :cond_0
    return-void
.end method

.method private onMediaSetListSelectionStateChanged(Z)V
    .locals 3
    .param p1, "isSelectionMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2215
    if-eqz p1, :cond_2

    .line 2217
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 2220
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 2223
    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->openEntryTabs(Z)V

    .line 2225
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2226
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->lockPosition()V

    .line 2242
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2236
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2237
    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 2239
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2240
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->unlockPosition()V

    goto :goto_0
.end method

.method private onMediaSetRemoved(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 2249
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2250
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 2251
    :cond_1
    return-void
.end method

.method private onMediaSetRemoving(Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 7
    .param p1, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 2258
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v4, :cond_0

    .line 2260
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v2

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    .local v1, "endIndex":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 2262
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v4, v2}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaSet;

    .line 2263
    .local v3, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-ne v4, v3, :cond_2

    .line 2265
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultMediaSetDeleted()V

    .line 2272
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v5, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-eq v4, v5, :cond_1

    .line 2275
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$Mode:[I

    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-virtual {v5}, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2286
    :goto_1
    const/4 v0, 0x0

    .line 2289
    .local v0, "currentMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :goto_2
    if-eqz v0, :cond_7

    .line 2291
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getStartIndex()I

    move-result v2

    .restart local v2    # "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery2/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    .restart local v1    # "endIndex":I
    :goto_3
    if-gt v2, v1, :cond_1

    .line 2293
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v4, v2}, Lcom/oneplus/gallery2/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaSet;

    .line 2294
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    if-ne v0, v3, :cond_6

    .line 2296
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMediaSetRemoving() - Removing media set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", back to ENTRY mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    .line 2308
    .end local v0    # "currentMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_1
    :goto_4
    return-void

    .line 2260
    .restart local v1    # "endIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2278
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v5, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    move-object v0, v4

    .line 2279
    .restart local v0    # "currentMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_3
    goto :goto_2

    .line 2281
    .end local v0    # "currentMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    move-object v0, v4

    .line 2282
    .restart local v0    # "currentMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_4
    goto :goto_2

    .line 2284
    .end local v0    # "currentMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :pswitch_2
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v5, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/MediaSet;

    move-object v0, v4

    .restart local v0    # "currentMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_5
    goto :goto_1

    .line 2291
    .restart local v1    # "endIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2304
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onMediaSetRemoving() - No media set, back to ENTRY mode"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    sget-object v4, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    goto :goto_4

    .line 2275
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onSubMediaRemovedFromMediaList(Lcom/oneplus/gallery2/media/MediaList;Lcom/oneplus/gallery2/ListChangeEventArgs;)V
    .locals 4
    .param p1, "mediaList"    # Lcom/oneplus/gallery2/media/MediaList;
    .param p2, "e"    # Lcom/oneplus/gallery2/ListChangeEventArgs;

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v0, v1, :cond_0

    .line 2409
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onSubMediaRemovedFromMediaList() - Sub Media list size is "

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " go back"

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2410
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->goBack()Z

    .line 2412
    :cond_0
    return-void
.end method

.method private openBurstViewer(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 2418
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-nez v1, :cond_1

    .line 2449
    :cond_0
    :goto_0
    return v0

    .line 2422
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2424
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    .line 2425
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2430
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachBurstViewerFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2434
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2435
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2436
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2437
    if-eqz p1, :cond_3

    .line 2439
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2440
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2449
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2444
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2445
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onBurstViewerOpened()V

    goto :goto_1
.end method

.method private openDefaultMediaList()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2456
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 2480
    :goto_0
    return v0

    .line 2458
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-nez v0, :cond_1

    move v0, v2

    .line 2459
    goto :goto_0

    .line 2462
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2463
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/OPGallery;

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery2/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery2/media/MediaSet;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 2466
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4, v2}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2467
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v0, :cond_3

    .line 2469
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "openDefaultMediaList() - Fail to open media list"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 2470
    goto :goto_0

    .line 2472
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 2475
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_4

    .line 2477
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2478
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    :cond_4
    move v0, v1

    .line 2480
    goto :goto_0
.end method

.method private openEntryTabs()V
    .locals 2

    .prologue
    .line 2487
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->openEntryTabs(Ljava/lang/Float;Z)V

    .line 2488
    return-void
.end method

.method private openEntryTabs(Ljava/lang/Float;Z)V
    .locals 4
    .param p1, "translationY"    # Ljava/lang/Float;
    .param p2, "doAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2497
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 2550
    :cond_0
    :goto_0
    return-void

    .line 2499
    :cond_1
    if-eqz p1, :cond_5

    .line 2501
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 2503
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 2505
    iget v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 2506
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 2517
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 2519
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2522
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2523
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2508
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 2510
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 2512
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 2513
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 2516
    :cond_4
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->VISIBLE_PARTIAL:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 2527
    :cond_5
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$EntryTabsState:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2532
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    if-ne v0, v1, :cond_6

    .line 2533
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2534
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_7

    .line 2535
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2536
    :cond_7
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->OPENING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 2537
    if-eqz p2, :cond_8

    .line 2539
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2540
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2546
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2544
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_2

    .line 2527
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private openEntryTabs(Z)V
    .locals 1
    .param p1, "doAnimation"    # Z

    .prologue
    .line 2492
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->openEntryTabs(Ljava/lang/Float;Z)V

    .line 2493
    return-void
.end method

.method private openFilmstrip(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 2557
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-nez v1, :cond_1

    .line 2588
    :cond_0
    :goto_0
    return v0

    .line 2561
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2563
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    .line 2564
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2569
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachFilmstripFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2573
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2574
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2575
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2576
    if-eqz p1, :cond_3

    .line 2578
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2579
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2588
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2583
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2584
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onFilmstripOpened()V

    goto :goto_1
.end method

.method private openGridView(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2596
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v1, :cond_1

    .line 2636
    :cond_0
    :goto_0
    return v0

    .line 2600
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2602
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    .line 2603
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2608
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachGridViewFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2612
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2613
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2614
    if-eqz p1, :cond_3

    .line 2616
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2617
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2618
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2619
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2636
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2630
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2631
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2632
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->onGridViewOpened()V

    goto :goto_1
.end method

.method private releaseMediaSetList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2644
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-nez v0, :cond_0

    .line 2695
    :goto_0
    return-void

    .line 2648
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 2650
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2651
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2652
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2655
    sget v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    .line 2656
    sget v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    if-gtz v0, :cond_1

    .line 2658
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaSetList() - Release shared list later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2663
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 2667
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFromSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 2669
    iget-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_4

    .line 2671
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_2

    .line 2673
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 2674
    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2676
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_3

    .line 2678
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 2679
    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2681
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_4

    .line 2683
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 2684
    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 2689
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v0, :cond_5

    .line 2690
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2693
    :cond_5
    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 2694
    iput-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    goto/16 :goto_0
.end method

.method private static releaseSharedMediaSetList()V
    .locals 2

    .prologue
    .line 2702
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-nez v0, :cond_0

    .line 2710
    :goto_0
    return-void

    .line 2705
    :cond_0
    const-class v0, Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseSharedMediaSetList()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaSetList;->release()V

    .line 2708
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 2709
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    goto :goto_0
.end method

.method private setAddAlbumButtonVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 2718
    return-void
.end method

.method private setupMediaSetList(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tempInstanceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2724
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v2, :cond_1

    .line 2776
    :cond_0
    :goto_0
    return-void

    .line 2728
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery2/GalleryApplication;->current()Lcom/oneplus/gallery2/GalleryApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery2/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2731
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v2, :cond_5

    .line 2732
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v3, "setupMediaSetList() - Use existent list"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    :goto_1
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    iput-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 2739
    sget v2, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    .line 2743
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2744
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2745
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2758
    const/4 v0, 0x0

    .line 2759
    .local v0, "cameraRollMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    if-eqz p1, :cond_2

    .line 2760
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cameraRollMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    check-cast v0, Lcom/oneplus/gallery2/media/MediaSet;

    .line 2761
    .restart local v0    # "cameraRollMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_2
    if-nez v0, :cond_3

    .line 2763
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v2, v3}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 2764
    .local v1, "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    if-eqz v1, :cond_3

    .line 2766
    new-instance v0, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    .end local v0    # "cameraRollMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    .line 2769
    .end local v1    # "source":Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .restart local v0    # "cameraRollMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_3
    if-eqz v0, :cond_4

    .line 2770
    invoke-direct {p0, v0, v5}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultMediaSetCreated(Lcom/oneplus/gallery2/media/MediaSet;Z)V

    .line 2774
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v2, :cond_0

    .line 2775
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v3, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2735
    .end local v0    # "cameraRollMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v3, "setupMediaSetList() - Create new list"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2736
    invoke-static {v6, v5}, Lcom/oneplus/gallery2/media/AllMediaSetList;->open(Lcom/oneplus/gallery2/media/MediaType;I)Lcom/oneplus/gallery2/media/AllMediaSetList;

    move-result-object v2

    sput-object v2, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    goto :goto_1
.end method

.method private setupUI(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2784
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2785
    .local v6, "res":Landroid/content/res/Resources;
    const v10, 0x7f050052

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ActionBarHeight:I

    .line 2786
    const v10, 0x7f05008b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewEnterPositionY:I

    .line 2789
    const/high16 v10, 0x7f030000

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ContentView:Landroid/view/ViewGroup;

    .line 2790
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->setContentView(Landroid/view/View;)V

    .line 2793
    sget-object v10, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/ScreenSize;

    .line 2794
    .local v7, "screenSize":Lcom/oneplus/base/ScreenSize;
    const v10, 0x7f060001

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    .line 2795
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    const-string v11, "entry_page_tab_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2796
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    invoke-virtual {v7}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v11

    invoke-static {v10, v11}, Lcom/oneplus/widget/ViewUtils;->setHeight(Landroid/view/View;I)V

    .line 2797
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v10

    const-string v11, "status_bar"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery2/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 2800
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "gallery_activity_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2803
    const v10, 0x7f06000a

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    .line 2804
    const v10, 0x7f060002

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    .line 2805
    const v10, 0x7f060006

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    .line 2806
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const v11, 0x7f060007

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    .line 2807
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    const v11, 0x7f060004

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    .line 2808
    const v10, 0x7f06000c

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    .line 2809
    const v10, 0x7f060012

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    .line 2810
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    const v11, 0x7f060099

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    .line 2811
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    const v11, 0x7f060098

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    .line 2812
    const v10, 0x7f060005

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    .line 2815
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const-string v11, "entry_page_tab_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2818
    const v10, 0x7f050053

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButtonSize:I

    .line 2819
    const v10, 0x7f050055

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButtonMarginBottom:I

    .line 2820
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/oneplus/gallery2/OPGalleryActivity$30;

    invoke-direct {v11, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$30;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2844
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    const-string v11, "action_bar_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2845
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    instance-of v10, v10, Landroid/widget/Toolbar;

    if-eqz v10, :cond_0

    .line 2847
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    check-cast v10, Landroid/widget/Toolbar;

    const v11, 0x7f0a0024

    invoke-virtual {v10, p0, v11}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 2848
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    check-cast v10, Landroid/widget/Toolbar;

    const-string v11, "title_bar_text"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 2852
    :cond_0
    iget v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ActionBarHeight:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    .line 2856
    const-string v10, "entry_page_tab_indicator"

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v3

    .line 2857
    .local v3, "indicatorColor":I
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2860
    .local v4, "indicatorHeight":I
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v10

    sget-object v11, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v10

    sget-object v12, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v12}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {p0, v11, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->updateUIMargins(ZZ)V

    .line 2863
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2864
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v10, "GalleryActivity.DefaultGridView"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/GridViewFragment;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 2865
    const-string v10, "GalleryActivity.MediaSetList"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/MediaSetListFragment;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    .line 2866
    const-string v10, "GalleryActivity.GridView"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/GridViewFragment;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 2867
    const-string v10, "GalleryActivity.Filmstrip"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/FilmstripFragment;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    .line 2868
    const-string v10, "GalleryActivity.BurstViewer"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery2/BurstViewerFragment;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    .line 2870
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-nez v10, :cond_1

    .line 2871
    new-instance v10, Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {v10}, Lcom/oneplus/gallery2/GridViewFragment;-><init>()V

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    .line 2874
    :goto_0
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-nez v10, :cond_2

    .line 2875
    new-instance v10, Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {v10}, Lcom/oneplus/gallery2/FilmstripFragment;-><init>()V

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    .line 2878
    :goto_1
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-nez v10, :cond_3

    .line 2879
    new-instance v10, Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {v10}, Lcom/oneplus/gallery2/BurstViewerFragment;-><init>()V

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    .line 2884
    :goto_2
    const v10, 0x7f060003

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/widget/ViewPager;

    iput-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    .line 2885
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050078

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setPageMargin(I)V

    .line 2886
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setOverScrollMode(I)V

    .line 2887
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    new-instance v11, Lcom/oneplus/gallery2/OPGalleryActivity$31;

    invoke-direct {v11, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$31;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2965
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    new-instance v11, Lcom/oneplus/gallery2/OPGalleryActivity$32;

    invoke-direct {v11, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$32;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2984
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->onEntryViewPagerPageSelected(I)V

    .line 2987
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_4

    .line 2989
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2992
    .local v8, "tab":Landroid/widget/TextView;
    new-instance v9, Lcom/oneplus/gallery/drawable/BorderDrawable;

    invoke-direct {v9, p0}, Lcom/oneplus/gallery/drawable/BorderDrawable;-><init>(Landroid/content/Context;)V

    .line 2993
    .local v9, "tabIndicator":Lcom/oneplus/gallery/drawable/BorderDrawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0200b1

    invoke-virtual {p0, v12}, Lcom/oneplus/gallery2/OPGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v0, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2997
    .local v0, "background":Landroid/graphics/drawable/LayerDrawable;
    sget-object v10, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->BOTTOM:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {v9, v10, v3, v4}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;II)V

    .line 2998
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3001
    move v5, v2

    .line 3002
    .local v5, "position":I
    new-instance v10, Lcom/oneplus/gallery2/OPGalleryActivity$33;

    invoke-direct {v10, p0, v5, v8}, Lcom/oneplus/gallery2/OPGalleryActivity$33;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;ILandroid/widget/TextView;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2987
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2873
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "i":I
    .end local v5    # "position":I
    .end local v8    # "tab":Landroid/widget/TextView;
    .end local v9    # "tabIndicator":Lcom/oneplus/gallery/drawable/BorderDrawable;
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsGridViewFragmentAdded:Z

    goto/16 :goto_0

    .line 2877
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsFilmstripFragmentAdded:Z

    goto/16 :goto_1

    .line 2881
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsBurstViewerFragmentAdded:Z

    goto/16 :goto_2

    .line 3030
    .restart local v2    # "i":I
    :cond_4
    if-eqz p1, :cond_5

    .line 3032
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    sget-object v11, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_ENTRY_VIEW_PAGER_CURRENT_ITEM:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setCurrentItem(I)V

    .line 3036
    :cond_5
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v10, :cond_6

    .line 3037
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->onDefaultGridViewFragmentReady(Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 3038
    :cond_6
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v10, :cond_7

    .line 3039
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->onMediaSetListFragmentReady(Lcom/oneplus/gallery2/MediaSetListFragment;)V

    .line 3040
    :cond_7
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->onGridViewFragmentReady(Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 3041
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->onFilmstripFragmentReady(Lcom/oneplus/gallery2/FilmstripFragment;)V

    .line 3042
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->onBurstViewerFragmentReady(Lcom/oneplus/gallery2/BurstViewerFragment;)V

    .line 3045
    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v10}, Lcom/oneplus/gallery2/media/MediaSetList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 3046
    :cond_8
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/oneplus/gallery2/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 3047
    :cond_9
    return-void
.end method

.method private updateSnackbarTitleAndAction()V
    .locals 3

    .prologue
    .line 3078
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 3087
    :cond_0
    :goto_0
    return-void

    .line 3080
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3082
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;

    .line 3083
    .local v0, "handle":Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;->actionText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3084
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3085
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSnackbarVisibility(Z)V
    .locals 8
    .param p1, "animation"    # Z

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3094
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 3097
    :cond_0
    if-eqz p1, :cond_1

    .line 3099
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3117
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 3118
    .local v0, "height":I
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/OPGalleryActivity$35;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity$35;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/OPGalleryActivity$34;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$34;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3137
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    .line 3201
    .end local v0    # "height":I
    :goto_1
    :pswitch_0
    return-void

    .line 3103
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 3108
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 3141
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3142
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    .line 3143
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 3149
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->updateSnackbarTitleAndAction()V

    .line 3151
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3152
    .restart local v0    # "height":I
    if-eqz p1, :cond_3

    .line 3155
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 3174
    :goto_2
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/OPGalleryActivity$37;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery2/OPGalleryActivity$37;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery2/OPGalleryActivity$36;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery2/OPGalleryActivity$36;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3192
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    goto :goto_1

    .line 3159
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3160
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 3165
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 3196
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3197
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery2/OPGalleryActivity$ViewVisibilityState;

    .line 3198
    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3099
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3155
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateUIMargins(ZZ)V
    .locals 7
    .param p1, "isStatusBarVisible"    # Z
    .param p2, "isNavBarVisible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3208
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-nez v5, :cond_0

    .line 3241
    :goto_0
    return-void

    .line 3212
    :cond_0
    sget-object v5, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 3213
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v3

    .line 3215
    .local v3, "top":I
    :goto_1
    if-eqz p2, :cond_3

    .line 3217
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 3219
    const/4 v1, 0x0

    .line 3220
    .local v1, "right":I
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v0

    .line 3233
    .local v0, "bottom":I
    :goto_2
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 3235
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-static {v5, v4, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 3239
    :goto_3
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-static {v5, v4, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 3240
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-static {v5, v4, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .end local v0    # "bottom":I
    .end local v1    # "right":I
    .end local v3    # "top":I
    :cond_1
    move v3, v4

    .line 3213
    goto :goto_1

    .line 3224
    .restart local v3    # "top":I
    :cond_2
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v1

    .line 3225
    .restart local v1    # "right":I
    const/4 v0, 0x0

    .restart local v0    # "bottom":I
    goto :goto_2

    .line 3230
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_3
    const/4 v1, 0x0

    .line 3231
    .restart local v1    # "right":I
    const/4 v0, 0x0

    .restart local v0    # "bottom":I
    goto :goto_2

    .line 3238
    :cond_4
    iget-object v5, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-static {v5, v4, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_3
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
    .line 949
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    .line 951
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBeamUris()[Landroid/net/Uri;
    .locals 4

    .prologue
    .line 959
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    sget-object v3, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 962
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 964
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 965
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 966
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 969
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "index":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getLaunchType()Lcom/oneplus/gallery2/ActivityLaunchType;
    .locals 1

    .prologue
    .line 977
    sget-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->NORMAL:Lcom/oneplus/gallery2/ActivityLaunchType;

    return-object v0
.end method

.method public goBack()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 985
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$Mode:[I

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-virtual {v3}, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1011
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->goBack()Z

    move-result v1

    :goto_0
    return v1

    .line 988
    :pswitch_0
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    goto :goto_0

    .line 993
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaList;

    .line 994
    .local v0, "mediaList":Lcom/oneplus/gallery2/media/MediaList;
    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-ne v2, v3, :cond_0

    .line 999
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    goto :goto_0

    .line 1002
    :cond_0
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    goto :goto_0

    .line 1007
    .end local v0    # "mediaList":Lcom/oneplus/gallery2/media/MediaList;
    :pswitch_2
    sget-object v2, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;)Z

    goto :goto_0

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v2, 0x7f07004d

    const/4 v1, 0x0

    .line 1020
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1035
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->handleMessage(Landroid/os/Message;)V

    .line 1038
    :goto_0
    return-void

    .line 1023
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1024
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1029
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 1030
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isServiceMode()Z
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1084
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$Mode:[I

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1131
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onBackPressed()V

    .line 1132
    :cond_1
    :goto_1
    return-void

    .line 1087
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->notifyBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->notifyBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1099
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1104
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v1, "Gallery.Leave"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Photos"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1107
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    const-string v1, "Gallery.Leave"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Albums"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/oneplus/gallery2/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1114
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GridViewFragment;->notifyBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1123
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/FilmstripFragment;->notifyBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1127
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/BurstViewerFragment;->notifyBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1084
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1101
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1292
    .local p2, "tempInstanceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p2}, Lcom/oneplus/gallery2/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 1297
    invoke-static {}, Lcom/oneplus/base/Device;->isOnePlus()Z

    move-result v15

    if-nez v15, :cond_1

    .line 1299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v16, "onCreate() - Incorrect application version"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v15, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery2/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_0

    const v15, 0x7f0a000d

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1301
    .local v4, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v15, 0x7f090052

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1302
    const v15, 0x7f090051

    invoke-virtual {v4, v15}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1303
    const v15, 0x104000a

    new-instance v16, Lcom/oneplus/gallery2/OPGalleryActivity$29;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity$29;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1311
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    .line 1467
    .end local v4    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 1300
    :cond_0
    const v15, 0x7f0a000b

    goto :goto_0

    .line 1317
    :cond_1
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v15

    const-class v16, Lcom/oneplus/gallery2/AppTracker;

    invoke-virtual/range {v15 .. v16}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/AppTracker;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery2/AppTracker;

    .line 1320
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v15

    const-class v16, Lcom/oneplus/gallery2/media/AlbumManager;

    invoke-virtual/range {v15 .. v16}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/media/AlbumManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    .line 1323
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    if-eqz v15, :cond_2

    .line 1324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    sget-object v16, Lcom/oneplus/gallery2/media/AlbumManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumCreatedHandler:Lcom/oneplus/base/EventHandler;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/oneplus/gallery2/media/AlbumManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1327
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->setupMediaSetList(Ljava/util/Map;)V

    .line 1330
    if-eqz p2, :cond_4

    const/4 v7, 0x1

    .line 1331
    .local v7, "isValidTempState":Z
    :goto_2
    const/4 v13, 0x0

    .line 1332
    .local v13, "savedMode":Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    const/4 v12, 0x0

    .line 1333
    .local v12, "savedMediaSetList":Lcom/oneplus/gallery2/media/MediaSetList;
    const/4 v10, 0x0

    .line 1334
    .local v10, "savedDefaultMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    const/4 v9, 0x0

    .line 1335
    .local v9, "savedDefaultMediaList":Lcom/oneplus/gallery2/media/MediaList;
    const/4 v11, 0x0

    .line 1336
    .local v11, "savedMediaList":Lcom/oneplus/gallery2/media/MediaList;
    const/4 v14, 0x0

    .line 1337
    .local v14, "savedSubMediaList":Lcom/oneplus/gallery2/media/MediaList;
    if-eqz v7, :cond_8

    .line 1340
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MODE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "savedMode":Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    check-cast v13, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    .line 1341
    .restart local v13    # "savedMode":Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    if-nez v13, :cond_3

    .line 1346
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oneplus/gallery2/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v16, "onCreate() - savedMode is null,set orientaion to portrait for entry mode"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    :cond_3
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MEDIA_SET_LIST:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "savedMediaSetList":Lcom/oneplus/gallery2/media/MediaSetList;
    check-cast v12, Lcom/oneplus/gallery2/media/MediaSetList;

    .line 1350
    .restart local v12    # "savedMediaSetList":Lcom/oneplus/gallery2/media/MediaSetList;
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    check-cast v10, Lcom/oneplus/gallery2/media/MediaSet;

    .line 1351
    .restart local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_LIST:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery2/media/MediaList;
    check-cast v9, Lcom/oneplus/gallery2/media/MediaList;

    .line 1352
    .restart local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery2/media/MediaList;
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MEDIA_LIST:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "savedMediaList":Lcom/oneplus/gallery2/media/MediaList;
    check-cast v11, Lcom/oneplus/gallery2/media/MediaList;

    .line 1353
    .restart local v11    # "savedMediaList":Lcom/oneplus/gallery2/media/MediaList;
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_SUB_MEDIA_LIST:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "savedSubMediaList":Lcom/oneplus/gallery2/media/MediaList;
    check-cast v14, Lcom/oneplus/gallery2/media/MediaList;

    .line 1354
    .restart local v14    # "savedSubMediaList":Lcom/oneplus/gallery2/media/MediaList;
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET_HANDLE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Handle;

    .line 1355
    .local v3, "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_CURRENT_MEDIA_SET_HANDLE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Handle;

    .line 1358
    .local v2, "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-ne v12, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-ne v10, v15, :cond_5

    const/4 v7, 0x1

    .line 1364
    :goto_3
    if-eqz v7, :cond_d

    .line 1366
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1367
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1368
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1369
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1370
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 1371
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    .line 1372
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v15, :cond_6

    .line 1374
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;

    .line 1375
    .local v5, "handle":Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;
    move-object/from16 v0, p0

    iput-object v0, v5, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery2/OPGalleryActivity;

    goto :goto_4

    .line 1330
    .end local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v5    # "handle":Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isValidTempState":Z
    .end local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery2/media/MediaList;
    .end local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    .end local v11    # "savedMediaList":Lcom/oneplus/gallery2/media/MediaList;
    .end local v12    # "savedMediaSetList":Lcom/oneplus/gallery2/media/MediaSetList;
    .end local v13    # "savedMode":Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    .end local v14    # "savedSubMediaList":Lcom/oneplus/gallery2/media/MediaList;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1358
    .restart local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .restart local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    .restart local v7    # "isValidTempState":Z
    .restart local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery2/media/MediaList;
    .restart local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    .restart local v11    # "savedMediaList":Lcom/oneplus/gallery2/media/MediaList;
    .restart local v12    # "savedMediaSetList":Lcom/oneplus/gallery2/media/MediaSetList;
    .restart local v13    # "savedMode":Lcom/oneplus/gallery2/OPGalleryActivity$Mode;
    .restart local v14    # "savedSubMediaList":Lcom/oneplus/gallery2/media/MediaList;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1377
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 1379
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1381
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery2/OPGalleryActivity;->attachToSubMediaList(Lcom/oneplus/gallery2/media/MediaList;)V

    .line 1397
    .end local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    :cond_8
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->openDefaultMediaList()Z

    .line 1400
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V

    .line 1403
    if-eqz v7, :cond_14

    .line 1405
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v13, v15, :cond_9

    .line 1407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v15, :cond_11

    .line 1409
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v16, "onCreate() - No media list, enter ENTRY mode"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    sget-object v13, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    .line 1418
    :cond_9
    :goto_6
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    if-ne v13, v15, :cond_b

    .line 1420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v16, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v15 .. v16}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/media/MediaSet;

    move-object v8, v15

    .line 1421
    .local v8, "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :goto_7
    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {v15, v8}, Lcom/oneplus/gallery2/media/MediaSetList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 1423
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v16, "onCreate() - Invalid media set, enter ENTRY mode"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    sget-object v13, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    .line 1427
    .end local v8    # "mediaSet":Lcom/oneplus/gallery2/media/MediaSet;
    :cond_b
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity$38;->$SwitchMap$com$oneplus$gallery2$OPGalleryActivity$Mode:[I

    invoke-virtual {v13}, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 1447
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_c

    .line 1448
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery2/OPGalleryActivity;->updateSnackbarVisibility(Z)V

    .line 1466
    :cond_c
    :goto_9
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    goto/16 :goto_1

    .line 1385
    .restart local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .restart local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    :cond_d
    if-eqz v9, :cond_e

    .line 1386
    invoke-interface {v9}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1387
    :cond_e
    if-eqz v11, :cond_f

    .line 1388
    invoke-interface {v11}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1389
    :cond_f
    if-eqz v14, :cond_10

    .line 1390
    invoke-interface {v14}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 1391
    :cond_10
    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1392
    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    .line 1412
    .end local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v15}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 1414
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v16, "onCreate() - Empty media list, enter GRID_VIEW mode"

    invoke-static/range {v15 .. v16}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    sget-object v13, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    goto/16 :goto_6

    .line 1420
    :cond_12
    const/4 v8, 0x0

    goto :goto_7

    .line 1430
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFilmstripFragment()V

    .line 1431
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachGridViewFragment()V

    goto :goto_8

    .line 1434
    :pswitch_1
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;Z)Z

    .line 1435
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->detachFilmstripFragment()V

    goto :goto_8

    .line 1438
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_13

    .line 1439
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;Z)Z

    .line 1440
    :cond_13
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;Z)Z

    goto/16 :goto_8

    .line 1443
    :pswitch_3
    sget-object v15, Lcom/oneplus/gallery2/OPGalleryActivity$Mode;->BURST_VIEW:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery2/OPGalleryActivity$Mode;Z)Z

    goto/16 :goto_8

    .line 1451
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeToStartingPage(Landroid/content/Intent;)Z

    goto/16 :goto_9

    .line 1427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1604
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumManager:Lcom/oneplus/gallery2/media/AlbumManager;

    sget-object v1, Lcom/oneplus/gallery2/media/AlbumManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_AlbumCreatedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/media/AlbumManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1608
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1611
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1612
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1613
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1614
    iget-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_1

    .line 1615
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1617
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    if-eqz v0, :cond_2

    .line 1619
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1620
    iget-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_2

    .line 1621
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1623
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    if-eqz v0, :cond_3

    .line 1625
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1626
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1627
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1628
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1629
    iget-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1632
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    if-eqz v0, :cond_4

    .line 1634
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripMediaIndexChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1635
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->EVENT_BURST_VIEWER_BUTTON_CLICK:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerButtonClickHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/FilmstripFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1636
    iget-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_4

    .line 1637
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery2/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery2/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1639
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    if-eqz v0, :cond_5

    .line 1641
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->EVENT_SAVE_COMPLETED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerSaveCompletedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1642
    iget-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_5

    .line 1643
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerFragment:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v1, Lcom/oneplus/gallery2/BurstViewerFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery2/BurstViewerFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1647
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->releaseMediaSetList()V

    .line 1650
    iget-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_6

    .line 1652
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1653
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1669
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onDestroy()V

    .line 1672
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 1673
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_BurstViewerStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 1674
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 1675
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 1676
    return-void

    .line 1660
    :cond_6
    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1661
    iput-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 1993
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1994
    const/4 v0, 0x0

    .line 1997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 2315
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->onNavigationBarVisibilityChanged(Z)V

    .line 2316
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->updateUIMargins(ZZ)V

    .line 2317
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2324
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2325
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->changeToStartingPage(Landroid/content/Intent;)Z

    .line 2326
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 2334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    .line 2337
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    .line 2340
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onPause()V

    .line 2341
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 2349
    invoke-super {p0}, Lcom/oneplus/gallery2/GalleryActivity;->onResume()V

    .line 2352
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DeactivateMediaSourcesRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 2353
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2354
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaSources;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSourcesActivationHandle:Lcom/oneplus/base/Handle;

    .line 2355
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2363
    .local p2, "tempOutState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MODE:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery2/OPGalleryActivity$Mode;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2366
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MEDIA_SET_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery2/media/MediaSetList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2369
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2370
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2373
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_MEDIA_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    .line 2375
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_SUB_MEDIA_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SubMediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    :cond_0
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET_HANDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_CURRENT_MEDIA_SET_HANDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 2385
    sget-object v0, Lcom/oneplus/gallery2/OPGalleryActivity;->STATE_KEY_ENTRY_VIEW_PAGER_CURRENT_ITEM:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2389
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery2/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 2392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    .line 2393
    return-void
.end method

.method protected onStatusBarVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 2400
    invoke-super {p0, p1}, Lcom/oneplus/gallery2/GalleryActivity;->onStatusBarVisibilityChanged(Z)V

    .line 2401
    invoke-virtual {p0}, Lcom/oneplus/gallery2/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery2/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->updateUIMargins(ZZ)V

    .line 2402
    return-void
.end method

.method public showSnackbar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "action"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 3061
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_ContentView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 3062
    const/4 v0, 0x0

    .line 3071
    :goto_0
    return-object v0

    .line 3063
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "showSnackbar() - Show"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-nez v1, :cond_1

    .line 3067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    .line 3068
    :cond_1
    new-instance v0, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;-><init>(Lcom/oneplus/gallery2/OPGalleryActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 3069
    .local v0, "handle":Lcom/oneplus/gallery2/OPGalleryActivity$SnackbarHandle;
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3070
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->updateSnackbarVisibility(Z)V

    goto :goto_0
.end method
