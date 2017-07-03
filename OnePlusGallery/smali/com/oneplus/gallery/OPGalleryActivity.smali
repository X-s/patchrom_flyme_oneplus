.class public Lcom/oneplus/gallery/OPGalleryActivity;
.super Lcom/oneplus/gallery/GalleryActivity;
.source "OPGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/OPGalleryActivity$31;,
        Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;,
        Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;,
        Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;,
        Lcom/oneplus/gallery/OPGalleryActivity$Mode;
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
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final DELAY_CLICK_VIEW_PAGER:J = 0x64L

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

.field private static final FRAGMENT_TAG_DEFAULT_GRID_VIEW:Ljava/lang/String; = "GalleryActivity.DefaultGridView"

.field private static final FRAGMENT_TAG_FILMSTRIP:Ljava/lang/String; = "GalleryActivity.Filmstrip"

.field private static final FRAGMENT_TAG_GRID_VIEW:Ljava/lang/String; = "GalleryActivity.GridView"

.field private static final FRAGMENT_TAG_MEDIA_SET_LIST:Ljava/lang/String; = "GalleryActivity.MediaSetList"

.field private static final INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

.field private static final IS_ENTRY_TABS_SCROLLABLE:Z = true

.field private static final MSG_UPDATE_BACKGROUNDS_FOR_FILMSTRIP:I = 0x2710

.field public static final PROP_IS_SNACKBAR_VISIBLE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
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

.field public static final PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARE_DEFAULT_GRIDVIEW:Z = false

.field private static final SHOW_ALL_MEDIA_IN_PHOTOS_PAGE:Z = true

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

.field private static final TAB_ALBUMS_INDEX:I = 0x1

.field private static final TAB_PHOTOS_INDEX:I

.field private static m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

.field private static final m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

.field private static m_SharedMediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

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
            "Lcom/oneplus/gallery/media/MediaSetEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private m_AppTracker:Lcom/oneplus/gallery/AppTracker;

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

.field private m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

.field private m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

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

.field private m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

.field private m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

.field private final m_FilmstripClosedRunnable:Ljava/lang/Runnable;

.field private m_FilmstripContainer:Landroid/view/View;

.field private m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

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

.field private m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

.field private final m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_GridViewOpenedRunnable:Ljava/lang/Runnable;

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

.field private m_MediaList:Lcom/oneplus/gallery/media/MediaList;

.field private m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

.field private final m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListChangeEventArgs;",
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

.field private final m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

.field private m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

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

.field private m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

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
            "Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_SnackbarTitleTextView:Landroid/widget/TextView;

.field private m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

.field private m_StatusBarBackground:Landroid/view/View;

.field private m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

.field private m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

.field private m_TitleBar:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 69
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "MediaSetList"

    const-class v2, Lcom/oneplus/gallery/media/MediaSetList;

    const-class v3, Lcom/oneplus/gallery/OPGalleryActivity;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    .line 73
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "IsSnackbarVisible"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/gallery/OPGalleryActivity;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_IS_SNACKBAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    .line 77
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string v1, "SnackbarVisibleHeight"

    const-class v2, Ljava/lang/Float;

    const-class v3, Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    .line 84
    const-class v0, Lcom/oneplus/gallery/media/AllMediaMediaSet;

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->DEFAULT_MEDIA_SET_CLASS:Ljava/lang/Class;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MODE:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MediaSetList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MEDIA_SET_LIST:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AllMediaMediaSet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_ALL_MEDIA_MEDIA_SET:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DefaultMediaSet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DefaultMediaSetHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET_HANDLE:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DefaultMediaList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_LIST:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CurrentMediaSetHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_CURRENT_MEDIA_SET_HANDLE:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EntryViewPagerCurrentItem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_ENTRY_VIEW_PAGER_CURRENT_ITEM:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MediaList"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MEDIA_LIST:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SnackbarHandles"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    .line 125
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$1;

    invoke-direct {v0}, Lcom/oneplus/gallery/OPGalleryActivity$1;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;-><init>()V

    .line 155
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    .line 170
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 175
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    .line 183
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$2;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AlbumCreatedHandler:Lcom/oneplus/base/EventHandler;

    .line 192
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$3;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 200
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$4;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    .line 208
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$5;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    .line 216
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$6;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    .line 224
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$7;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    .line 232
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$8;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    .line 243
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$9;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CameraRollVisibilityChangedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 251
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$10;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 259
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$11;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripMediaIndexChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 267
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$12;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 275
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$13;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$13;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 286
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$14;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$14;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    .line 297
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$15;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$15;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsClosedRunnable:Ljava/lang/Runnable;

    .line 312
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$16;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$16;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsOpenedRunnable:Ljava/lang/Runnable;

    .line 327
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$17;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$17;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripClosedRunnable:Ljava/lang/Runnable;

    .line 335
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$18;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$18;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripOpenedRunnable:Ljava/lang/Runnable;

    .line 343
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$19;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$19;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    .line 351
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$20;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/OPGalleryActivity$20;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    .line 392
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/oneplus/gallery/OPGalleryActivity;->releaseSharedMediaSetList()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/media/AlbumMediaSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onAlbumMediaSetCreated(Lcom/oneplus/gallery/media/AlbumMediaSet;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/gallery/OPGalleryActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/gallery/OPGalleryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onFilmstripMediaIndexChanged(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/gallery/OPGalleryActivity;Landroid/app/Fragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->onEntryListViewScrollingStateChanged(Landroid/app/Fragment;Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/gallery/OPGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultGridViewSelectionStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/MediaSetListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/MediaSetListFragment;)Lcom/oneplus/gallery/MediaSetListFragment;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/gallery/OPGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetListSelectionStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/gallery/OPGalleryActivity;Landroid/app/Fragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Landroid/app/Fragment;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/OPGalleryActivity;->onEntryListViewScrolled(Landroid/app/Fragment;II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;)Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/oneplus/gallery/OPGalleryActivity;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Landroid/view/ViewPropertyAnimator;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/oneplus/gallery/OPGalleryActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/GridViewFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onFilmstripClosed()V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewFragment;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onFilmstripOpened()V

    return-void
.end method

.method static synthetic access$2200(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onGridViewClosed()V

    return-void
.end method

.method static synthetic access$2300(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onGridViewOpened()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/gallery/OPGalleryActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->updateSnackbarVisibility(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/oneplus/gallery/OPGalleryActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/ListItemEventArgs;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListItemEventArgs;
    .param p2, "x2"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaClickedInGridView(Lcom/oneplus/gallery/ListItemEventArgs;Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultGridViewFragmentReady(Lcom/oneplus/gallery/GridViewFragment;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetListFragmentReady(Lcom/oneplus/gallery/MediaSetListFragment;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/oneplus/gallery/OPGalleryActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onEntryViewPagerPageSelected(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/gallery/OPGalleryActivity;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->onEntryViewPagerPageScrolled(IF)V

    return-void
.end method

.method static synthetic access$3500(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/widget/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/AppTracker;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/oneplus/gallery/OPGalleryActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/media/MediaList;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/media/MediaList;
    .param p2, "x2"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaRemovedFromMediaList(Lcom/oneplus/gallery/media/MediaList;Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$4002(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;)Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/base/PropertyKey;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/ListItemEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListItemEventArgs;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetClicked(Lcom/oneplus/gallery/ListItemEventArgs;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/gallery/OPGalleryActivity;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/OPGalleryActivity;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->onCameraRollVisibilityChanged(Ljava/lang/Boolean;)V

    return-void
.end method

.method private attachFilmstripFragment()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 427
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-nez v1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "attachFilmstripFragment() - No fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsFilmstripFragmentAdded:Z

    if-nez v1, :cond_2

    .line 434
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06000f

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    const-string v4, "GalleryActivity.Filmstrip"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 435
    iput-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsFilmstripFragmentAdded:Z

    goto :goto_0

    .line 437
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/FilmstripFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private attachGridViewFragment()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 446
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v1, :cond_1

    .line 448
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "attachGridViewFragment() - No fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v0, 0x0

    .line 460
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsGridViewFragmentAdded:Z

    if-nez v1, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06000d

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    const-string v4, "GalleryActivity.GridView"

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 454
    iput-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsGridViewFragmentAdded:Z

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->isDetached()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 457
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 458
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method private attachToMediaList(Lcom/oneplus/gallery/media/MediaList;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 468
    sget-object v0, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 469
    :cond_0
    return-void
.end method

.method private changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .prologue
    .line 475
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;Z)Z

    move-result v0

    return v0
.end method

.method private changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;Z)Z
    .locals 9
    .param p1, "mode"    # Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    .param p2, "animate"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 481
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 482
    .local v2, "prevMode":Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    if-ne v2, p1, :cond_0

    .line 564
    :goto_0
    return v5

    .line 485
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v7, "changeMode() - Change mode from "

    const-string v8, " to "

    invoke-static {v4, v7, v2, v8, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 488
    const/4 v0, -0x1

    .line 489
    .local v0, "mediaIndex":I
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v4, :cond_2

    .line 491
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v7, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 492
    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 493
    :cond_1
    const/4 v0, -0x1

    .line 497
    :cond_2
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$Mode:[I

    invoke-virtual {p1}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 524
    :cond_3
    :goto_1
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$Mode:[I

    invoke-virtual {v2}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_1

    .line 554
    :cond_4
    :goto_2
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne p1, v4, :cond_6

    .line 556
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 557
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v4, :cond_5

    .line 558
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/OPGallery;

    iget-object v6, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 559
    :cond_5
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 563
    :cond_6
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    goto :goto_0

    .line 500
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 501
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 502
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 503
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 507
    :pswitch_1
    if-eqz p2, :cond_8

    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-eq v2, v4, :cond_8

    move v4, v5

    :goto_3
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->openGridView(Z)Z

    move-result v4

    if-nez v4, :cond_3

    move v5, v6

    .line 508
    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 507
    goto :goto_3

    .line 512
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->openFilmstrip(Z)Z

    move-result v4

    if-nez v4, :cond_9

    move v5, v6

    .line 513
    goto/16 :goto_0

    .line 514
    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->enableBeam()V

    .line 515
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 516
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 517
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 518
    :cond_a
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 519
    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/OPGalleryActivity;->setStatusBarStyle(Z)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_1

    .line 528
    :pswitch_3
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v7, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/media/MediaSet;

    .line 529
    .local v1, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne p1, v4, :cond_4

    .line 531
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v4, :cond_b

    if-eqz v1, :cond_b

    .line 532
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-virtual {v4, v1, v6}, Lcom/oneplus/gallery/MediaSetListFragment;->scrollTo(Lcom/oneplus/gallery/media/MediaSet;Z)Z

    .line 533
    :cond_b
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->closeGridView(Z)V

    goto/16 :goto_2

    .line 540
    .end local v1    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :pswitch_4
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_CONFIG_ORIENTATION:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v5, :cond_e

    move v3, v5

    .line 541
    .local v3, "rotateActivity":Z
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->disableBeam()V

    .line 542
    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 543
    if-eqz p2, :cond_f

    if-nez v3, :cond_f

    move v4, v5

    :goto_5
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->closeFilmstrip(Z)V

    .line 544
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 545
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne p1, v4, :cond_d

    .line 546
    if-eqz p2, :cond_c

    if-nez v3, :cond_c

    move v6, v5

    :cond_c
    invoke-direct {p0, v6}, Lcom/oneplus/gallery/OPGalleryActivity;->closeGridView(Z)V

    .line 547
    :cond_d
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 548
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v4}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    .end local v3    # "rotateActivity":Z
    :cond_e
    move v3, v6

    .line 540
    goto :goto_4

    .restart local v3    # "rotateActivity":Z
    :cond_f
    move v4, v6

    .line 543
    goto :goto_5

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 524
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private changeToStartingPage(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 571
    if-eqz p1, :cond_1

    const-string v4, "OPGalleryActivity.StartPage"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "startPage":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_3

    .line 575
    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 584
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

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

    .line 596
    :goto_2
    return v2

    .line 571
    .end local v1    # "startPage":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 575
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

    .line 578
    :pswitch_0
    const/4 v0, 0x0

    .line 587
    .local v0, "pageIndex":I
    :goto_3
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "changeToStartingPage() - Start page : "

    invoke-static {v4, v5, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v4, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 590
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "changeToStartingPage() - Fail to change mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 581
    .end local v0    # "pageIndex":I
    :pswitch_1
    const/4 v0, 0x1

    .line 582
    .restart local v0    # "pageIndex":I
    goto :goto_3

    .line 593
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v4, :cond_3

    .line 594
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v4, v0, v2}, Lcom/oneplus/gallery/widget/ViewPager;->setCurrentItem(IZ)V

    .end local v0    # "pageIndex":I
    :cond_3
    move v2, v3

    .line 596
    goto :goto_2

    .line 575
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

.method private closeEntryTabs()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->closeEntryTabs(Ljava/lang/Float;)V

    .line 604
    return-void
.end method

.method private closeEntryTabs(Ljava/lang/Float;)V
    .locals 4
    .param p1, "translationY"    # Ljava/lang/Float;

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    if-eqz p1, :cond_5

    .line 612
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 614
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 616
    iget v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 617
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    .line 628
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 633
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 634
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 619
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 621
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 623
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 624
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 627
    :cond_4
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->VISIBLE_PARTIAL:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 638
    :cond_5
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$EntryTabsState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 643
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_6

    .line 644
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 645
    :cond_6
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->CLOSING:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    .line 646
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/OPGalleryActivity$21;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/OPGalleryActivity$21;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 660
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 638
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

    .line 671
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    .line 676
    .local v0, "gallery":Lcom/oneplus/gallery/Gallery;
    if-eqz v0, :cond_3

    .line 678
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 679
    invoke-virtual {v0, v2, v2}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(ZI)Lcom/oneplus/base/Handle;

    .line 680
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 681
    invoke-virtual {v0, v2, v2}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(ZI)Lcom/oneplus/base/Handle;

    .line 685
    :cond_3
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 686
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "gallery_activity_background"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 687
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    const-string v2, "entry_page_tab_background"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 688
    if-eqz p1, :cond_4

    .line 690
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 691
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 694
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onFilmstripClosed()V

    goto :goto_0
.end method

.method private closeGridView(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    .line 702
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    if-eqz p1, :cond_2

    .line 708
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 709
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewClosedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 718
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onGridViewClosed()V

    goto :goto_0
.end method

.method private detachFilmstripFragment()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "detachFilmstripFragment() - Activity has been destroyed, no need to detach fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private detachFromMediaList(Lcom/oneplus/gallery/media/MediaList;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;

    .prologue
    .line 737
    if-eqz p1, :cond_0

    .line 738
    sget-object v0, Lcom/oneplus/gallery/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaRemovedFromMediaListHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 739
    :cond_0
    return-void
.end method

.method private detachGridViewFragment()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v0, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 749
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_2

    .line 750
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "detachGridViewFragment() - Activity has been destroyed, no need to detach fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isDefaultMediaSetCandidate(Lcom/oneplus/gallery/media/MediaSet;)Z
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;

    .prologue
    .line 847
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->DEFAULT_MEDIA_SET_CLASS:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private onAlbumMediaSetCreated(Lcom/oneplus/gallery/media/AlbumMediaSet;)V
    .locals 3
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/AlbumMediaSet;

    .prologue
    .line 862
    if-eqz p1, :cond_0

    .line 863
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlbumMediaSetCreated() - mediaSet : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/oneplus/gallery/media/AlbumMediaSet;->PROP_NAME:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/media/AlbumMediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v0, :cond_1

    .line 866
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->scrollTo(Lcom/oneplus/gallery/media/MediaSet;Z)Z

    .line 867
    :cond_1
    return-void
.end method

.method private onCameraRollVisibilityChanged(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isVisible"    # Ljava/lang/Boolean;

    .prologue
    .line 917
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->DEFAULT_MEDIA_SET_CLASS:Ljava/lang/Class;

    const-class v1, Lcom/oneplus/gallery/media/CameraRollMediaSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v0, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    goto :goto_0

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onDefaultGridViewFragmentReady(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    const/4 v2, 0x1

    .line 1110
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultGridViewFragmentReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1116
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1117
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1118
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1119
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1122
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1123
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1124
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1127
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1128
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1129
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ActionBarHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1131
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    .line 1145
    :cond_0
    :goto_0
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultGridViewSelectionStateChanged(Z)V

    .line 1147
    :cond_1
    return-void

    .line 1138
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultGridViewFragmentReady() - No default media set"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDefaultGridViewSelectionStateChanged(Z)V
    .locals 3
    .param p1, "isSelectionMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1153
    if-eqz p1, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_1

    .line 1158
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->openEntryTabs(Z)V

    .line 1160
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->lockPosition()V

    .line 1162
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1171
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->unlockPosition()V

    .line 1173
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onDefaultMediaSetCreated(Lcom/oneplus/gallery/media/MediaSet;Z)V
    .locals 2
    .param p1, "mediaSet"    # Lcom/oneplus/gallery/media/MediaSet;
    .param p2, "openMediaList"    # Z

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultMediaSetCreated()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 1187
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1188
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V

    .line 1191
    if-eqz p2, :cond_0

    .line 1192
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->openDefaultMediaList()Z

    .line 1193
    :cond_0
    return-void
.end method

.method private onDefaultMediaSetDeleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1199
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDefaultMediaSetDeleted()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1205
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1213
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 1214
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 1217
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 1218
    iput-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1222
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1225
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_3

    .line 1226
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1227
    :cond_3
    return-void
.end method

.method private onDefaultMediaSetMediaCountChanged(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v1, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/gallery/media/MediaSetList;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1237
    .local v0, "hasCameraRoll":Ljava/lang/Boolean;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 1240
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1245
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_EMPTY_ICON_VISIBLE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private onEntryListViewScrolled(Landroid/app/Fragment;II)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "prevOffsetY"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 1324
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v3, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1334
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1347
    :cond_4
    sub-int v0, p3, p2

    .line 1348
    .local v0, "diff":I
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    .line 1350
    .local v1, "translationY":F
    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    if-ge p3, v2, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_5

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 1352
    :cond_5
    int-to-float v2, v0

    add-float/2addr v1, v2

    .line 1353
    if-gez v0, :cond_6

    .line 1354
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->closeEntryTabs(Ljava/lang/Float;)V

    goto :goto_0

    .line 1337
    .end local v0    # "diff":I
    .end local v1    # "translationY":F
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 1341
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 1356
    .restart local v0    # "diff":I
    .restart local v1    # "translationY":F
    :cond_6
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/oneplus/gallery/OPGalleryActivity;->openEntryTabs(Ljava/lang/Float;Z)V

    goto :goto_0

    .line 1334
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

    .line 1364
    if-eqz p2, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1369
    const/4 v1, 0x0

    .line 1370
    .local v1, "scrollOffsetY":F
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v2}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1387
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 1390
    .local v0, "currentTranslationY":F
    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_2

    cmpg-float v2, v1, v4

    if-gez v2, :cond_2

    cmpl-float v2, v1, v0

    if-gez v2, :cond_0

    .line 1394
    :cond_2
    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    div-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    .line 1396
    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_3

    cmpg-float v2, v1, v4

    if-gez v2, :cond_3

    cmpg-float v2, v1, v0

    if-gez v2, :cond_3

    .line 1399
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->closeEntryTabs(Ljava/lang/Float;)V

    goto :goto_0

    .line 1373
    .end local v0    # "currentTranslationY":F
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-ne p1, v2, :cond_0

    .line 1375
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1377
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v1, v2

    .line 1378
    goto :goto_1

    .line 1380
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-ne p1, v2, :cond_0

    .line 1382
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v3, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1384
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v3, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v1, v2

    goto/16 :goto_1

    .line 1403
    .restart local v0    # "currentTranslationY":F
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->closeEntryTabs()V

    goto/16 :goto_0

    .line 1407
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->openEntryTabs()V

    goto/16 :goto_0

    .line 1370
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
    .line 1415
    if-nez p1, :cond_0

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p2

    const v9, 0x3a83126f    # 0.001f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 1417
    const/4 p1, 0x1

    .line 1418
    const/4 p2, 0x0

    .line 1421
    :cond_0
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-nez v8, :cond_3

    .line 1423
    iput p1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentTabIndex:I

    .line 1424
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1430
    :goto_0
    iget v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButtonSize:I

    iget v9, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButtonMarginBottom:I

    add-int v7, v8, v9

    .line 1431
    .local v7, "tansitionDistance":I
    if-nez p1, :cond_7

    .line 1433
    iget v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentTabIndex:I

    if-nez v8, :cond_5

    .line 1436
    const v8, 0x3f4ccccd    # 0.8f

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_4

    .line 1437
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    int-to-float v9, v7

    const v10, 0x3f4ccccd    # 0.8f

    sub-float v10, p2, v10

    const v11, 0x3e4ccccc    # 0.19999999f

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1456
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_c

    .line 1458
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1459
    .local v6, "tab":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1460
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_2

    move-object v5, v0

    .line 1462
    check-cast v5, Landroid/graphics/drawable/LayerDrawable;

    .line 1463
    .local v5, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "j":I
    :goto_3
    if-ltz v4, :cond_2

    .line 1465
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1466
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v2, Lcom/oneplus/gallery/drawable/BorderDrawable;

    if-eqz v8, :cond_8

    .line 1468
    move-object v0, v2

    .line 1473
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "j":I
    .end local v5    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    instance-of v8, v0, Lcom/oneplus/gallery/drawable/BorderDrawable;

    if-eqz v8, :cond_b

    .line 1476
    if-ne v3, p1, :cond_9

    .line 1477
    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;->CURRENT:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .line 1482
    .local v1, "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :goto_4
    check-cast v0, Lcom/oneplus/gallery/drawable/BorderDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p2, v1}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorderLengthRatio(FLcom/oneplus/gallery/drawable/BorderDrawable$BorderType;)V

    .line 1456
    .end local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1427
    .end local v3    # "i":I
    .end local v6    # "tab":Landroid/widget/TextView;
    .end local v7    # "tansitionDistance":I
    :cond_3
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    goto :goto_0

    .line 1439
    .restart local v7    # "tansitionDistance":I
    :cond_4
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1441
    :cond_5
    iget v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentTabIndex:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1444
    const v8, 0x3e4ccccc    # 0.19999999f

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_6

    .line 1445
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    int-to-float v9, v7

    const v10, 0x3e4ccccc    # 0.19999999f

    div-float v10, p2, v10

    mul-float/2addr v9, v10

    const/high16 v10, -0x40800000    # -1.0f

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1447
    :cond_6
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    mul-int/lit8 v9, v7, -0x1

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1450
    :cond_7
    const/4 v8, 0x1

    if-ne p1, v8, :cond_1

    .line 1452
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    mul-int/lit8 v9, v7, -0x1

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto :goto_1

    .line 1463
    .restart local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    .restart local v6    # "tab":Landroid/widget/TextView;
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1478
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "j":I
    .end local v5    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_9
    add-int/lit8 v8, p1, 0x1

    if-ne v3, v8, :cond_a

    .line 1479
    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;->RELATED_NEIGHBOR:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .restart local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    goto :goto_4

    .line 1481
    .end local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :cond_a
    sget-object v1, Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;->STRANGER:Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;

    .restart local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    goto :goto_4

    .line 1485
    .end local v1    # "borderType":Lcom/oneplus/gallery/drawable/BorderDrawable$BorderType;
    :cond_b
    iget-object v8, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v9, "onEntryViewPagerPageScrolled() - backgroundDrawable is not BorderDrawable"

    invoke-static {v8, v9}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1487
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "tab":Landroid/widget/TextView;
    :cond_c
    return-void
.end method

.method private onEntryViewPagerPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1494
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1496
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1497
    .local v1, "tab":Landroid/widget/TextView;
    const v2, 0x7f0a000e

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1498
    if-ne p1, v0, :cond_0

    .line 1500
    const-string v2, "entry_page_tab_text_selected"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1494
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1504
    :cond_0
    const-string v2, "entry_page_tab_text"

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1509
    .end local v1    # "tab":Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->openEntryTabs()V

    .line 1510
    return-void
.end method

.method private onFilmstripClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1516
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1517
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/FilmstripFragment;->backToInitialUIState()V

    .line 1518
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1519
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1520
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFilmstripFragment()V

    .line 1521
    return-void
.end method

.method private onFilmstripFragmentReady(Lcom/oneplus/gallery/FilmstripFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/oneplus/gallery/FilmstripFragment;

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onFilmstripFragmentReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1533
    sget-object v0, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripMediaIndexChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/FilmstripFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1534
    return-void
.end method

.method private onFilmstripMediaIndexChanged(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 1540
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    sget-object v2, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne v1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v2, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    .line 1543
    .local v0, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    if-eqz v0, :cond_0

    .line 1545
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 1546
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/gallery/GridViewFragment;->scrollTo(IZ)Z

    .line 1551
    .end local v0    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_0
    :goto_0
    return-void

    .line 1547
    .restart local v0    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 1548
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1, p1, v3}, Lcom/oneplus/gallery/GridViewFragment;->scrollTo(IZ)Z

    goto :goto_0
.end method

.method private onFilmstripOpened()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    .line 1558
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1561
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1564
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1566
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    if-eq v0, v1, :cond_3

    .line 1567
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1573
    :cond_2
    :goto_0
    const/16 v0, 0x2710

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 1574
    return-void

    .line 1569
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onFilmstripOpened() - Activity has been destroyed, no need to hide grid view fragment"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onGridViewClosed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1580
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery/GridViewFragment;->backToInitialUIState()V

    .line 1582
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1583
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1584
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1585
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachGridViewFragment()V

    .line 1586
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eq v0, v1, :cond_0

    .line 1588
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 1589
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 1590
    iput-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1593
    return-void
.end method

.method private onGridViewFragmentReady(Lcom/oneplus/gallery/GridViewFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery/GridViewFragment;

    .prologue
    const/4 v2, 0x0

    .line 1599
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onGridViewFragmentReady()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1603
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUPING:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1606
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_RECYCLER_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ActionBarHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1607
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1610
    sget-object v0, Lcom/oneplus/gallery/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1611
    return-void
.end method

.method private onGridViewOpened()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1618
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1619
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1621
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1625
    return-void
.end method

.method private onMediaClickedInGridView(Lcom/oneplus/gallery/ListItemEventArgs;Z)V
    .locals 7
    .param p2, "isDefaultGridView"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "e":Lcom/oneplus/gallery/ListItemEventArgs;, "Lcom/oneplus/gallery/ListItemEventArgs<Lcom/oneplus/gallery/media/Media;>;"
    const/4 v6, 0x0

    .line 1645
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListItemEventArgs;->getIndex()I

    move-result v0

    .line 1648
    .local v0, "index":I
    if-eqz p2, :cond_0

    .line 1650
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 1651
    .local v2, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1658
    .local v1, "mediaList":Lcom/oneplus/gallery/media/MediaList;
    :goto_0
    if-nez v1, :cond_1

    .line 1660
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - No media list"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    :goto_1
    return-void

    .line 1655
    .end local v1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    .end local v2    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v4, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    .line 1656
    .restart local v2    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .restart local v1    # "mediaList":Lcom/oneplus/gallery/media/MediaList;
    goto :goto_0

    .line 1663
    :cond_1
    if-ltz v0, :cond_2

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 1665
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

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

    .line 1668
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-nez v3, :cond_4

    .line 1670
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - No filmstrip fragment"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1675
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->attachFilmstripFragment()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1677
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - Fail to attach fragment"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1682
    :cond_5
    if-eqz p2, :cond_6

    .line 1683
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    iput-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1684
    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1685
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v2}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1686
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1687
    sget-object v3, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1688
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-virtual {v3}, Lcom/oneplus/gallery/FilmstripFragment;->backToInitialUIState()V

    goto :goto_1

    .line 1691
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v4, "onMediaClickedInGridView() - Fail to change mode"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v6}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1693
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v4, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v6}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1694
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFilmstripFragment()V

    goto/16 :goto_1
.end method

.method private onMediaRemovedFromMediaList(Lcom/oneplus/gallery/media/MediaList;Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 2
    .param p1, "mediaList"    # Lcom/oneplus/gallery/media/MediaList;
    .param p2, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne v0, v1, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "onMediaRemovedFromMediaList() - Media list is empty, go back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->goBack()Z

    .line 1707
    :cond_0
    return-void
.end method

.method private onMediaSetAdded(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 5
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    const/4 v4, 0x1

    .line 1714
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v3}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1715
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 1718
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-nez v3, :cond_1

    .line 1720
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v1

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v0

    .local v0, "endIndex":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1722
    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v3, v1}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/MediaSet;

    .line 1723
    .local v2, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->isDefaultMediaSetCandidate(Lcom/oneplus/gallery/media/MediaSet;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1725
    invoke-direct {p0, v2, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetCreated(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 1730
    .end local v0    # "endIndex":I
    .end local v1    # "i":I
    .end local v2    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_1
    return-void

    .line 1720
    .restart local v0    # "endIndex":I
    .restart local v1    # "i":I
    .restart local v2    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onMediaSetClicked(Lcom/oneplus/gallery/ListItemEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/gallery/ListItemEventArgs",
            "<",
            "Lcom/oneplus/gallery/media/MediaSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "e":Lcom/oneplus/gallery/ListItemEventArgs;, "Lcom/oneplus/gallery/ListItemEventArgs<Lcom/oneplus/gallery/media/MediaSet;>;"
    const/4 v4, 0x0

    .line 1737
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    sget-object v2, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-eq v1, v2, :cond_1

    .line 1800
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eq v1, v2, :cond_2

    .line 1743
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 1744
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 1745
    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1749
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListItemEventArgs;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    .line 1751
    .local v0, "set":Lcom/oneplus/gallery/media/MediaSet;
    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_IS_RELEASED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1753
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - mediaSet is released"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1757
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eq v0, v1, :cond_4

    .line 1759
    sget-object v1, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1760
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 1766
    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1767
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/OPGallery;

    invoke-virtual {v1, v0}, Lcom/oneplus/gallery/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1772
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->attachGridViewFragment()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1774
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - Fail to attach fragment"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eq v1, v2, :cond_0

    .line 1777
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 1778
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 1779
    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    goto :goto_0

    .line 1763
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    goto :goto_1

    .line 1783
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1784
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1785
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1786
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {v1}, Lcom/oneplus/gallery/GridViewFragment;->backToInitialUIState()V

    goto/16 :goto_0

    .line 1789
    :cond_6
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetClicked() - Fail to change mode"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1791
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1792
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachGridViewFragment()V

    goto/16 :goto_0
.end method

.method private onMediaSetListFragmentReady(Lcom/oneplus/gallery/MediaSetListFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/oneplus/gallery/MediaSetListFragment;

    .prologue
    .line 1806
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "onMediaSetListFragmentReady()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_HAS_ACTION_BAR:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1812
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1813
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1814
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1815
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1818
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1821
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1822
    .local v0, "paddingTop":I
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_LIST_VIEW_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1823
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_TOOL_BAR_MARGIN_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ActionBarHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1826
    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1827
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetListSelectionStateChanged(Z)V

    .line 1828
    :cond_0
    return-void
.end method

.method private onMediaSetListSelectionStateChanged(Z)V
    .locals 3
    .param p1, "isSelectionMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1834
    if-eqz p1, :cond_2

    .line 1836
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1839
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 1842
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->openEntryTabs(Z)V

    .line 1844
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1845
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->lockPosition()V

    .line 1861
    :cond_0
    :goto_0
    return-void

    .line 1847
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1855
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1856
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 1858
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1859
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->unlockPosition()V

    goto :goto_0
.end method

.method private onMediaSetRemoved(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 1
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1869
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 1870
    :cond_1
    return-void
.end method

.method private onMediaSetRemoving(Lcom/oneplus/gallery/ListChangeEventArgs;)V
    .locals 7
    .param p1, "e"    # Lcom/oneplus/gallery/ListChangeEventArgs;

    .prologue
    const/4 v0, 0x0

    .line 1877
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v4, :cond_0

    .line 1879
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v2

    .local v2, "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    .local v1, "endIndex":I
    :goto_0
    if-gt v2, v1, :cond_0

    .line 1881
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v4, v2}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    .line 1882
    .local v3, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-ne v4, v3, :cond_2

    .line 1884
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetDeleted()V

    .line 1891
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    sget-object v5, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-eq v4, v5, :cond_1

    .line 1894
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$Mode:[I

    iget-object v5, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-virtual {v5}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1903
    const/4 v0, 0x0

    .line 1906
    .local v0, "currentMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :goto_1
    if-eqz v0, :cond_6

    .line 1908
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getStartIndex()I

    move-result v2

    .restart local v2    # "i":I
    invoke-virtual {p1}, Lcom/oneplus/gallery/ListChangeEventArgs;->getEndIndex()I

    move-result v1

    .restart local v1    # "endIndex":I
    :goto_2
    if-gt v2, v1, :cond_1

    .line 1910
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v4, v2}, Lcom/oneplus/gallery/media/MediaSetList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery/media/MediaSet;

    .line 1911
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    if-ne v0, v3, :cond_5

    .line 1913
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

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

    .line 1914
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z

    .line 1925
    .end local v0    # "currentMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_1
    :goto_3
    return-void

    .line 1879
    .restart local v1    # "endIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1897
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v5, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/MediaSet;

    move-object v0, v4

    .line 1898
    .restart local v0    # "currentMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_3
    goto :goto_1

    .line 1900
    .end local v0    # "currentMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :pswitch_1
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v5, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery/media/MediaSet;

    move-object v0, v4

    .line 1901
    .restart local v0    # "currentMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_4
    goto :goto_1

    .line 1908
    .restart local v1    # "endIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1921
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_6
    iget-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v5, "onMediaSetRemoving() - No media set, back to ENTRY mode"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    sget-object v4, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z

    goto :goto_3

    .line 1894
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openDefaultMediaList()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2007
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 2031
    :goto_0
    return v0

    .line 2009
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-nez v0, :cond_1

    move v0, v2

    .line 2010
    goto :goto_0

    .line 2013
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2014
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/OPGallery;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/OPGallery;->setCurrentMediaSet(Lcom/oneplus/gallery/media/MediaSet;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 2017
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery/media/MediaComparator;->TAKEN_TIME:Lcom/oneplus/gallery/media/MediaComparator;

    const/4 v4, -0x1

    invoke-interface {v0, v3, v4, v2}, Lcom/oneplus/gallery/media/MediaSet;->openMediaList(Lcom/oneplus/gallery/media/MediaComparator;II)Lcom/oneplus/gallery/media/MediaList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 2018
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v0, :cond_3

    .line 2020
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "openDefaultMediaList() - Fail to open media list"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 2021
    goto :goto_0

    .line 2023
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 2026
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_4

    .line 2028
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2029
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    :cond_4
    move v0, v1

    .line 2031
    goto :goto_0
.end method

.method private openEntryTabs()V
    .locals 2

    .prologue
    .line 2038
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->openEntryTabs(Ljava/lang/Float;Z)V

    .line 2039
    return-void
.end method

.method private openEntryTabs(Ljava/lang/Float;Z)V
    .locals 4
    .param p1, "translationY"    # Ljava/lang/Float;
    .param p2, "doAnimation"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2048
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2050
    :cond_1
    if-eqz p1, :cond_5

    .line 2052
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 2054
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 2056
    iget v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 2057
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    .line 2068
    :goto_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 2070
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2073
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2074
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v2, v2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2059
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 2061
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    if-eq v0, v1, :cond_0

    .line 2063
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 2064
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->VISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 2067
    :cond_4
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->VISIBLE_PARTIAL:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    goto :goto_1

    .line 2078
    :cond_5
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$EntryTabsState:[I

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2083
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    if-ne v0, v1, :cond_6

    .line 2084
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2085
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_7

    .line 2086
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2087
    :cond_7
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->OPENING:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    .line 2088
    if-eqz p2, :cond_8

    .line 2090
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    .line 2091
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2097
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2095
    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_2

    .line 2078
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
    .line 2043
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->openEntryTabs(Ljava/lang/Float;Z)V

    .line 2044
    return-void
.end method

.method private openFilmstrip(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 2108
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-nez v1, :cond_1

    .line 2139
    :cond_0
    :goto_0
    return v0

    .line 2112
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2114
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    .line 2115
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2120
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->attachFilmstripFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2124
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2125
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2126
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2127
    if-eqz p1, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2130
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2139
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2134
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2135
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onFilmstripOpened()V

    goto :goto_1
.end method

.method private openGridView(Z)Z
    .locals 4
    .param p1, "animate"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2147
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v1, :cond_1

    .line 2187
    :cond_0
    :goto_0
    return v0

    .line 2151
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    if-nez v1, :cond_2

    .line 2153
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    .line 2154
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2159
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->attachGridViewFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2163
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2165
    if-eqz p1, :cond_3

    .line 2167
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    const-string v1, "gallery_activity_background"

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2168
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2169
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    iget v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewEnterPositionY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2170
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

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

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->INTERPOLATOR_GRIDVIEW_ANIMATION:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewOpenedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2187
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2181
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2182
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2183
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->onGridViewOpened()V

    goto :goto_1
.end method

.method private releaseMediaSetList()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2195
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-nez v0, :cond_0

    .line 2239
    :goto_0
    return-void

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 2200
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CameraRollVisibilityChangedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSetList;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2201
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2202
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2203
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSetList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2206
    sget v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    .line 2207
    sget v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    if-gtz v0, :cond_1

    .line 2209
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v1, "releaseMediaSetList() - Release shared list later"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2214
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_3

    .line 2216
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_2

    .line 2218
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFromMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 2219
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 2220
    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v0, :cond_3

    .line 2224
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 2225
    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 2230
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_4

    .line 2231
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet;->PROP_MEDIA_COUNT:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetMediaCountChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2234
    :cond_4
    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 2235
    iput-object v4, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    .line 2238
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_0
.end method

.method private static releaseSharedMediaSetList()V
    .locals 2

    .prologue
    .line 2246
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-nez v0, :cond_0

    .line 2254
    :goto_0
    return-void

    .line 2249
    :cond_0
    const-class v0, Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "releaseSharedMediaSetList()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSetList;->release()V

    .line 2252
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 2253
    const/4 v0, 0x0

    sput v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    goto :goto_0
.end method

.method private setAddAlbumButtonVisibility(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 2262
    return-void
.end method

.method private setupMediaSetList(Ljava/util/Map;)V
    .locals 6
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
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2268
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v1, :cond_1

    .line 2326
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/OPGalleryActivity;->m_ReleaseSharedMediaSetListRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2275
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2276
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    invoke-interface {v1}, Lcom/oneplus/gallery/media/MediaManager;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    sput-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManagerActivateHandle:Lcom/oneplus/base/Handle;

    .line 2279
    :cond_2
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v1, :cond_5

    .line 2280
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "setupMediaSetList() - Use existent list"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    :goto_1
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 2287
    sget v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetListRefCount:I

    .line 2290
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->PROP_CONTAINS_CAMERA_ROLL:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CameraRollVisibilityChangedChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 2291
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetAddedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2292
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetRemovedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2293
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    sget-object v2, Lcom/oneplus/gallery/media/MediaSetList;->EVENT_MEDIA_SET_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetRemovingHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v1, v2, v3}, Lcom/oneplus/gallery/media/MediaSetList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 2297
    const/4 v0, 0x0

    .line 2298
    .local v0, "allMediaMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    if-eqz p1, :cond_3

    .line 2299
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_ALL_MEDIA_MEDIA_SET:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "allMediaMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    check-cast v0, Lcom/oneplus/gallery/media/MediaSet;

    .line 2300
    .restart local v0    # "allMediaMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_3
    if-nez v0, :cond_4

    .line 2301
    new-instance v0, Lcom/oneplus/gallery/media/AllMediaMediaSet;

    .end local v0    # "allMediaMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    invoke-direct {v0, v5}, Lcom/oneplus/gallery/media/AllMediaMediaSet;-><init>(Lcom/oneplus/gallery/media/MediaType;)V

    .line 2302
    .restart local v0    # "allMediaMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_4
    invoke-direct {p0, v0, v4}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultMediaSetCreated(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 2324
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v1, :cond_0

    .line 2325
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v2, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2283
    .end local v0    # "allMediaMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_5
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "setupMediaSetList() - Create new list"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    invoke-interface {v1, v5, v4}, Lcom/oneplus/gallery/media/MediaManager;->createMediaSetList(Lcom/oneplus/gallery/media/MediaType;I)Lcom/oneplus/gallery/media/MediaSetList;

    move-result-object v1

    sput-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->m_SharedMediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    goto :goto_1
.end method

.method private setupUI(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2334
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2335
    .local v6, "res":Landroid/content/res/Resources;
    const v10, 0x7f050052

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ActionBarHeight:I

    .line 2336
    const v10, 0x7f05008b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewEnterPositionY:I

    .line 2339
    const/high16 v10, 0x7f030000

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ContentView:Landroid/view/ViewGroup;

    .line 2340
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->setContentView(Landroid/view/View;)V

    .line 2343
    sget-object v10, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/base/ScreenSize;

    .line 2344
    .local v7, "screenSize":Lcom/oneplus/base/ScreenSize;
    const v10, 0x7f060001

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    .line 2345
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    const-string v11, "entry_page_tab_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2346
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    invoke-virtual {v7}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v11

    invoke-static {v10, v11}, Lcom/oneplus/widget/ViewUtils;->setHeight(Landroid/view/View;I)V

    .line 2347
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v10

    const-string v11, "status_bar"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/Gallery;->setStatusBarColor(I)Lcom/oneplus/base/Handle;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 2350
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "gallery_activity_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColorResId(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2353
    const v10, 0x7f06000a

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    .line 2354
    const v10, 0x7f060002

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    .line 2355
    const v10, 0x7f060006

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    .line 2356
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const v11, 0x7f060007

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    .line 2357
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    const v11, 0x7f060004

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;

    .line 2358
    const v10, 0x7f06000c

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    .line 2359
    const v10, 0x7f060012

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    .line 2360
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    const v11, 0x7f060099

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    .line 2361
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    const v11, 0x7f060098

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    .line 2362
    const v10, 0x7f060005

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    .line 2365
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabs:Landroid/view/View;

    const-string v11, "entry_page_tab_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2368
    const v10, 0x7f050053

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButtonSize:I

    .line 2369
    const v10, 0x7f050055

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButtonMarginBottom:I

    .line 2370
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AddAlbumButton:Landroid/widget/RelativeLayout;

    new-instance v11, Lcom/oneplus/gallery/OPGalleryActivity$23;

    invoke-direct {v11, p0}, Lcom/oneplus/gallery/OPGalleryActivity$23;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2394
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    const-string v11, "action_bar_background"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2395
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    instance-of v10, v10, Landroid/widget/Toolbar;

    if-eqz v10, :cond_0

    .line 2397
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    check-cast v10, Landroid/widget/Toolbar;

    const v11, 0x7f0a0024

    invoke-virtual {v10, p0, v11}, Landroid/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 2398
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    check-cast v10, Landroid/widget/Toolbar;

    const-string v11, "title_bar_text"

    invoke-virtual {p0, v11}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    .line 2402
    :cond_0
    iget v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ActionBarHeight:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I

    .line 2406
    const-string v10, "entry_page_tab_indicator"

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v3

    .line 2407
    .local v3, "indicatorColor":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050073

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2410
    .local v4, "indicatorHeight":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v10

    sget-object v11, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v10

    sget-object v12, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v10, v12}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {p0, v11, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->updateUIMargins(ZZ)V

    .line 2413
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2414
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string v10, "GalleryActivity.DefaultGridView"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/GridViewFragment;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 2415
    const-string v10, "GalleryActivity.MediaSetList"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/MediaSetListFragment;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    .line 2416
    const-string v10, "GalleryActivity.GridView"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/GridViewFragment;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 2417
    const-string v10, "GalleryActivity.Filmstrip"

    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/FilmstripFragment;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    .line 2419
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-nez v10, :cond_1

    .line 2420
    new-instance v10, Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {v10}, Lcom/oneplus/gallery/GridViewFragment;-><init>()V

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    .line 2423
    :goto_0
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-nez v10, :cond_2

    .line 2424
    new-instance v10, Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {v10}, Lcom/oneplus/gallery/FilmstripFragment;-><init>()V

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    .line 2429
    :goto_1
    const v10, 0x7f060003

    invoke-virtual {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/widget/ViewPager;

    iput-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    .line 2430
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050078

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setPageMargin(I)V

    .line 2431
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setOverScrollMode(I)V

    .line 2432
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    new-instance v11, Lcom/oneplus/gallery/OPGalleryActivity$24;

    invoke-direct {v11, p0}, Lcom/oneplus/gallery/OPGalleryActivity$24;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2510
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    new-instance v11, Lcom/oneplus/gallery/OPGalleryActivity$25;

    invoke-direct {v11, p0}, Lcom/oneplus/gallery/OPGalleryActivity$25;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2529
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->onEntryViewPagerPageSelected(I)V

    .line 2532
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/lit8 v2, v10, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_3

    .line 2534
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 2537
    .local v8, "tab":Landroid/widget/TextView;
    new-instance v9, Lcom/oneplus/gallery/drawable/BorderDrawable;

    invoke-direct {v9, p0}, Lcom/oneplus/gallery/drawable/BorderDrawable;-><init>(Landroid/content/Context;)V

    .line 2538
    .local v9, "tabIndicator":Lcom/oneplus/gallery/drawable/BorderDrawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0200b1

    invoke-virtual {p0, v12}, Lcom/oneplus/gallery/OPGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v0, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2542
    .local v0, "background":Landroid/graphics/drawable/LayerDrawable;
    sget-object v10, Lcom/oneplus/gallery/drawable/BorderDrawable$Border;->BOTTOM:Lcom/oneplus/gallery/drawable/BorderDrawable$Border;

    invoke-virtual {v9, v10, v3, v4}, Lcom/oneplus/gallery/drawable/BorderDrawable;->setBorder(Lcom/oneplus/gallery/drawable/BorderDrawable$Border;II)V

    .line 2543
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2546
    move v5, v2

    .line 2547
    .local v5, "position":I
    new-instance v10, Lcom/oneplus/gallery/OPGalleryActivity$26;

    invoke-direct {v10, p0, v5, v8}, Lcom/oneplus/gallery/OPGalleryActivity$26;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;ILandroid/widget/TextView;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2532
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2422
    .end local v0    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v2    # "i":I
    .end local v5    # "position":I
    .end local v8    # "tab":Landroid/widget/TextView;
    .end local v9    # "tabIndicator":Lcom/oneplus/gallery/drawable/BorderDrawable;
    :cond_1
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsGridViewFragmentAdded:Z

    goto/16 :goto_0

    .line 2426
    :cond_2
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsFilmstripFragmentAdded:Z

    goto/16 :goto_1

    .line 2575
    .restart local v2    # "i":I
    :cond_3
    if-eqz p1, :cond_4

    .line 2577
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    sget-object v11, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_ENTRY_VIEW_PAGER_CURRENT_ITEM:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/oneplus/gallery/widget/ViewPager;->setCurrentItem(I)V

    .line 2581
    :cond_4
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v10, :cond_5

    .line 2582
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->onDefaultGridViewFragmentReady(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 2583
    :cond_5
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v10, :cond_6

    .line 2584
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->onMediaSetListFragmentReady(Lcom/oneplus/gallery/MediaSetListFragment;)V

    .line 2585
    :cond_6
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->onGridViewFragmentReady(Lcom/oneplus/gallery/GridViewFragment;)V

    .line 2586
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    invoke-direct {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->onFilmstripFragmentReady(Lcom/oneplus/gallery/FilmstripFragment;)V

    .line 2589
    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v10}, Lcom/oneplus/gallery/media/MediaSetList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2590
    :cond_7
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/oneplus/gallery/OPGalleryActivity;->setAddAlbumButtonVisibility(Z)V

    .line 2591
    :cond_8
    return-void
.end method

.method private updateSnackbarTitleAndAction()V
    .locals 3

    .prologue
    .line 2621
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2630
    :cond_0
    :goto_0
    return-void

    .line 2623
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2625
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;

    .line 2626
    .local v0, "handle":Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->actionText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarActionTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2628
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarTitleTextView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->titleText:Ljava/lang/String;

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

    .line 2637
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2640
    :cond_0
    if-eqz p1, :cond_1

    .line 2642
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2660
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2661
    .local v0, "height":I
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/OPGalleryActivity$28;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity$28;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/OPGalleryActivity$27;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/OPGalleryActivity$27;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2680
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    .line 2744
    .end local v0    # "height":I
    :goto_1
    :pswitch_0
    return-void

    .line 2646
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 2651
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 2684
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2685
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    .line 2686
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2692
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->updateSnackbarTitleAndAction()V

    .line 2694
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2695
    .restart local v0    # "height":I
    if-eqz p1, :cond_3

    .line 2698
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$ViewVisibilityState:[I

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2717
    :goto_2
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/OPGalleryActivity$30;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/gallery/OPGalleryActivity$30;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/OPGalleryActivity$29;

    invoke-direct {v2, p0}, Lcom/oneplus/gallery/OPGalleryActivity$29;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2735
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    goto :goto_1

    .line 2702
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2703
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 2708
    :pswitch_4
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_2

    .line 2739
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2740
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarVisibilityState:Lcom/oneplus/gallery/OPGalleryActivity$ViewVisibilityState;

    .line 2741
    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2642
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2698
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

    .line 2751
    iget-object v5, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    if-nez v5, :cond_0

    .line 2784
    :goto_0
    return-void

    .line 2755
    :cond_0
    sget-object v5, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 2756
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v3

    .line 2758
    .local v3, "top":I
    :goto_1
    if-eqz p2, :cond_3

    .line 2760
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v6

    if-gt v5, v6, :cond_2

    .line 2762
    const/4 v1, 0x0

    .line 2763
    .local v1, "right":I
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v0

    .line 2776
    .local v0, "bottom":I
    :goto_2
    iget-object v5, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_TitleBar:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 2778
    iget-object v5, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

    invoke-static {v5, v4, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 2782
    :goto_3
    iget-object v5, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewContainer:Landroid/view/View;

    invoke-static {v5, v4, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    .line 2783
    iget-object v5, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Snackbar:Landroid/view/View;

    invoke-static {v5, v4, v3, v1, v0}, Lcom/oneplus/widget/ViewUtils;->setMargins(Landroid/view/View;IIII)V

    goto :goto_0

    .end local v0    # "bottom":I
    .end local v1    # "right":I
    .end local v3    # "top":I
    :cond_1
    move v3, v4

    .line 2756
    goto :goto_1

    .line 2767
    .restart local v3    # "top":I
    :cond_2
    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getNavigationBarSize()I

    move-result v1

    .line 2768
    .restart local v1    # "right":I
    const/4 v0, 0x0

    .restart local v0    # "bottom":I
    goto :goto_2

    .line 2773
    .end local v0    # "bottom":I
    .end local v1    # "right":I
    :cond_3
    const/4 v1, 0x0

    .line 2774
    .restart local v1    # "right":I
    const/4 v0, 0x0

    .restart local v0    # "bottom":I
    goto :goto_2

    .line 2781
    :cond_4
    iget-object v5, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageContainer:Landroid/view/View;

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
    .line 762
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    .line 764
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected getBeamUris()[Landroid/net/Uri;
    .locals 4

    .prologue
    .line 772
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    sget-object v3, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 775
    .local v1, "index":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/MediaList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 777
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v2, v1}, Lcom/oneplus/gallery/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 778
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 779
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 782
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "index":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 1

    .prologue
    .line 790
    sget-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->NORMAL:Lcom/oneplus/gallery/ActivityLaunchType;

    return-object v0
.end method

.method public goBack()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 798
    sget-object v2, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$Mode:[I

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-virtual {v3}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 820
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryActivity;->goBack()Z

    move-result v1

    :goto_0
    return v1

    .line 801
    :pswitch_0
    sget-object v2, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z

    goto :goto_0

    .line 806
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v3, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/FilmstripFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaList;

    .line 807
    .local v0, "mediaList":Lcom/oneplus/gallery/media/MediaList;
    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v3, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-ne v2, v3, :cond_0

    .line 812
    sget-object v2, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z

    goto :goto_0

    .line 815
    :cond_0
    sget-object v2, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;)Z

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 829
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 838
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->handleMessage(Landroid/os/Message;)V

    .line 841
    :goto_0
    return-void

    .line 832
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 833
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 834
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public isServiceMode()Z
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 875
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$Mode:[I

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-virtual {v1}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 910
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryActivity;->onBackPressed()V

    .line 911
    :goto_1
    return-void

    .line 878
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/MediaSetListFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_1

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v0}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 893
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v1, "Gallery.Leave"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Photos"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    goto :goto_0

    .line 896
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    const-string v1, "Gallery.Leave"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Albums"

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v4, v2}, Lcom/oneplus/gallery/AppTracker;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    goto :goto_0

    .line 903
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 890
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 17
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
    .line 939
    .local p2, "tempInstanceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p2}, Lcom/oneplus/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 944
    invoke-static {}, Lcom/oneplus/base/Device;->isOnePlus()Z

    move-result v14

    if-eqz v14, :cond_0

    sget v14, Lcom/oneplus/gallery/BuildFlags;->ROM_VERSION:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    invoke-static {}, Lcom/oneplus/base/Device;->isHydrogenOS()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 946
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v15, "onCreate() - Incorrect application version"

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v14, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/gallery/OPGalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x7f0a000d

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 948
    .local v4, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v14, 0x7f090052

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 949
    const v14, 0x7f090051

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 950
    const v14, 0x104000a

    new-instance v15, Lcom/oneplus/gallery/OPGalleryActivity$22;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/oneplus/gallery/OPGalleryActivity$22;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 958
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    .line 1104
    .end local v4    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_1
    return-void

    .line 947
    :cond_1
    const v14, 0x7f0a000b

    goto :goto_0

    .line 964
    :cond_2
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v14

    const-class v15, Lcom/oneplus/gallery/AppTracker;

    invoke-virtual {v14, v15}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/AppTracker;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AppTracker:Lcom/oneplus/gallery/AppTracker;

    .line 967
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v14

    const-class v15, Lcom/oneplus/gallery/media/MediaManager;

    invoke-virtual {v14, v15}, Lcom/oneplus/gallery/GalleryApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/MediaManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    .line 970
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    sget-object v15, Lcom/oneplus/gallery/media/MediaManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AlbumCreatedHandler:Lcom/oneplus/base/EventHandler;

    move-object/from16 v16, v0

    invoke-interface/range {v14 .. v16}, Lcom/oneplus/gallery/media/MediaManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 973
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->setupMediaSetList(Ljava/util/Map;)V

    .line 976
    if-eqz p2, :cond_4

    const/4 v7, 0x1

    .line 977
    .local v7, "isValidTempState":Z
    :goto_2
    const/4 v13, 0x0

    .line 978
    .local v13, "savedMode":Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    const/4 v12, 0x0

    .line 979
    .local v12, "savedMediaSetList":Lcom/oneplus/gallery/media/MediaSetList;
    const/4 v10, 0x0

    .line 980
    .local v10, "savedDefaultMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    const/4 v9, 0x0

    .line 981
    .local v9, "savedDefaultMediaList":Lcom/oneplus/gallery/media/MediaList;
    const/4 v11, 0x0

    .line 982
    .local v11, "savedMediaList":Lcom/oneplus/gallery/media/MediaList;
    if-eqz v7, :cond_7

    .line 985
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MODE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "savedMode":Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    check-cast v13, Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 986
    .restart local v13    # "savedMode":Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    if-nez v13, :cond_3

    .line 991
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/oneplus/gallery/OPGalleryActivity;->setRequestedOrientation(I)V

    .line 992
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v15, "onCreate() - savedMode is null,set orientaion to portrait for entry mode"

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_3
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MEDIA_SET_LIST:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "savedMediaSetList":Lcom/oneplus/gallery/media/MediaSetList;
    check-cast v12, Lcom/oneplus/gallery/media/MediaSetList;

    .line 995
    .restart local v12    # "savedMediaSetList":Lcom/oneplus/gallery/media/MediaSetList;
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    check-cast v10, Lcom/oneplus/gallery/media/MediaSet;

    .line 996
    .restart local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_LIST:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery/media/MediaList;
    check-cast v9, Lcom/oneplus/gallery/media/MediaList;

    .line 997
    .restart local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery/media/MediaList;
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MEDIA_LIST:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "savedMediaList":Lcom/oneplus/gallery/media/MediaList;
    check-cast v11, Lcom/oneplus/gallery/media/MediaList;

    .line 998
    .restart local v11    # "savedMediaList":Lcom/oneplus/gallery/media/MediaList;
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET_HANDLE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Handle;

    .line 999
    .local v3, "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_CURRENT_MEDIA_SET_HANDLE:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/Handle;

    .line 1002
    .local v2, "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-ne v12, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-ne v10, v14, :cond_5

    const/4 v7, 0x1

    .line 1008
    :goto_3
    if-eqz v7, :cond_c

    .line 1010
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1011
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1012
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1013
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    .line 1014
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    .line 1015
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v14, :cond_6

    .line 1017
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;

    .line 1018
    .local v5, "handle":Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;
    move-object/from16 v0, p0

    iput-object v0, v5, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;->activity:Lcom/oneplus/gallery/OPGalleryActivity;

    goto :goto_4

    .line 976
    .end local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v5    # "handle":Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isValidTempState":Z
    .end local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery/media/MediaList;
    .end local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    .end local v11    # "savedMediaList":Lcom/oneplus/gallery/media/MediaList;
    .end local v12    # "savedMediaSetList":Lcom/oneplus/gallery/media/MediaSetList;
    .end local v13    # "savedMode":Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1002
    .restart local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .restart local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    .restart local v7    # "isValidTempState":Z
    .restart local v9    # "savedDefaultMediaList":Lcom/oneplus/gallery/media/MediaList;
    .restart local v10    # "savedDefaultMediaSet":Lcom/oneplus/gallery/media/MediaSet;
    .restart local v11    # "savedMediaList":Lcom/oneplus/gallery/media/MediaList;
    .restart local v12    # "savedMediaSetList":Lcom/oneplus/gallery/media/MediaSetList;
    .restart local v13    # "savedMode":Lcom/oneplus/gallery/OPGalleryActivity$Mode;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 1020
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/gallery/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eq v14, v15, :cond_7

    .line 1022
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/gallery/OPGalleryActivity;->attachToMediaList(Lcom/oneplus/gallery/media/MediaList;)V

    .line 1036
    .end local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    :cond_7
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/OPGalleryActivity;->openDefaultMediaList()Z

    .line 1039
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V

    .line 1042
    if-eqz v7, :cond_12

    .line 1044
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne v13, v14, :cond_8

    .line 1046
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-nez v14, :cond_f

    .line 1048
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v15, "onCreate() - No media list, enter ENTRY mode"

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    sget-object v13, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 1057
    :cond_8
    :goto_6
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    if-ne v13, v14, :cond_a

    .line 1059
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v15, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_SET:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v14, v15}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/gallery/media/MediaSet;

    move-object v8, v14

    .line 1060
    .local v8, "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :goto_7
    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {v14, v8}, Lcom/oneplus/gallery/media/MediaSetList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1062
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v15, "onCreate() - Invalid media set, enter ENTRY mode"

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    sget-object v13, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ENTRY:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    .line 1066
    .end local v8    # "mediaSet":Lcom/oneplus/gallery/media/MediaSet;
    :cond_a
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity$31;->$SwitchMap$com$oneplus$gallery$OPGalleryActivity$Mode:[I

    invoke-virtual {v13}, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 1084
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    .line 1085
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/gallery/OPGalleryActivity;->updateSnackbarVisibility(Z)V

    .line 1103
    :cond_b
    :goto_9
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/oneplus/gallery/OPGalleryActivity;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    goto/16 :goto_1

    .line 1026
    .restart local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .restart local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    :cond_c
    if-eqz v9, :cond_d

    .line 1027
    invoke-interface {v9}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 1028
    :cond_d
    if-eqz v11, :cond_e

    .line 1029
    invoke-interface {v11}, Lcom/oneplus/gallery/media/MediaList;->release()V

    .line 1030
    :cond_e
    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 1031
    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    .line 1051
    .end local v2    # "currentMediaSetHandle":Lcom/oneplus/base/Handle;
    .end local v3    # "defaultMediaSetHandle":Lcom/oneplus/base/Handle;
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {v14}, Lcom/oneplus/gallery/media/MediaList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1053
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v15, "onCreate() - Empty media list, enter GRID_VIEW mode"

    invoke-static {v14, v15}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    sget-object v13, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    goto/16 :goto_6

    .line 1059
    :cond_10
    const/4 v8, 0x0

    goto :goto_7

    .line 1069
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFilmstripFragment()V

    .line 1070
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachGridViewFragment()V

    goto :goto_8

    .line 1073
    :pswitch_1
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;Z)Z

    .line 1074
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/OPGalleryActivity;->detachFilmstripFragment()V

    goto :goto_8

    .line 1077
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    if-eq v14, v15, :cond_11

    .line 1078
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->GRID_VIEW:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;Z)Z

    .line 1079
    :cond_11
    sget-object v14, Lcom/oneplus/gallery/OPGalleryActivity$Mode;->FILMSTRIP:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/oneplus/gallery/OPGalleryActivity;->changeMode(Lcom/oneplus/gallery/OPGalleryActivity$Mode;Z)Z

    goto :goto_8

    .line 1088
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oneplus/gallery/OPGalleryActivity;->changeToStartingPage(Landroid/content/Intent;)Z

    goto :goto_9

    .line 1066
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1253
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaManager:Lcom/oneplus/gallery/media/MediaManager;

    sget-object v1, Lcom/oneplus/gallery/media/MediaManager;->EVENT_ALBUM_CREATED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_AlbumCreatedHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaManager;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1260
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1261
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1262
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1263
    iget-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1266
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    if-eqz v0, :cond_2

    .line 1268
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->EVENT_MEDIA_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewMediaClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1269
    iget-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_2

    .line 1270
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_GridViewFragment:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1272
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    if-eqz v0, :cond_3

    .line 1274
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsScrollingChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1275
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsSelectionModeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1276
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_SCROLL_OFFSET_Y:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ScrollOffsetChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1277
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->EVENT_MEDIA_SET_CLICKED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetClickedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/MediaSetListFragment;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 1278
    iget-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_3

    .line 1279
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetListFragment:Lcom/oneplus/gallery/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery/MediaSetListFragment;->PROP_MEDIA_SET_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1281
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    if-eqz v0, :cond_4

    .line 1283
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment;->PROP_CURRENT_MEDIA_INDEX:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripMediaIndexChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/FilmstripFragment;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1284
    iget-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_4

    .line 1285
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripFragment:Lcom/oneplus/gallery/FilmstripFragment;

    sget-object v1, Lcom/oneplus/gallery/FilmstripFragment;->PROP_MEDIA_LIST:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1, v3}, Lcom/oneplus/gallery/FilmstripFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1289
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->releaseMediaSetList()V

    .line 1292
    iget-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    if-nez v0, :cond_6

    .line 1294
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1295
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1297
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    if-eqz v0, :cond_5

    .line 1298
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {v0}, Lcom/oneplus/gallery/media/MediaSet;->release()V

    .line 1311
    :cond_5
    :goto_0
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryActivity;->onDestroy()V

    .line 1314
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_FilmstripStatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 1315
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarColorHandle:Lcom/oneplus/base/Handle;

    .line 1316
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_StatusBarStyleHandle:Lcom/oneplus/base/Handle;

    .line 1317
    return-void

    .line 1302
    :cond_6
    iput-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    .line 1303
    iput-object v3, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I

    .prologue
    .line 1633
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1634
    const/4 v0, 0x0

    .line 1637
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
    .line 1932
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->onNavigationBarVisibilityChanged(Z)V

    .line 1933
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->updateUIMargins(ZZ)V

    .line 1934
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1941
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1942
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->changeToStartingPage(Landroid/content/Intent;)Z

    .line 1943
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    .line 1954
    invoke-super {p0}, Lcom/oneplus/gallery/GalleryActivity;->onPause()V

    .line 1955
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
    .line 1963
    .local p2, "tempOutState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MODE:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_Mode:Lcom/oneplus/gallery/OPGalleryActivity$Mode;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1966
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MEDIA_SET_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaSetList:Lcom/oneplus/gallery/media/MediaSetList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_ALL_MEDIA_MEDIA_SET:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSet:Lcom/oneplus/gallery/media/MediaSet;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_MEDIA_LIST:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_MediaList:Lcom/oneplus/gallery/media/MediaList;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_DEFAULT_MEDIA_SET_HANDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_CURRENT_MEDIA_SET_HANDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_CurrentMediaSetHandle:Lcom/oneplus/base/Handle;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_SNACKBAR_HANDLES:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 1983
    sget-object v0, Lcom/oneplus/gallery/OPGalleryActivity;->STATE_KEY_ENTRY_VIEW_PAGER_CURRENT_ITEM:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryViewPager:Lcom/oneplus/gallery/widget/ViewPager;

    invoke-virtual {v1}, Lcom/oneplus/gallery/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1987
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/gallery/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 1990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_IsInstanceStateSaved:Z

    .line 1991
    return-void
.end method

.method protected onStatusBarVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 1998
    invoke-super {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->onStatusBarVisibilityChanged(Z)V

    .line 1999
    invoke-virtual {p0}, Lcom/oneplus/gallery/OPGalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/Gallery;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/OPGalleryActivity;->updateUIMargins(ZZ)V

    .line 2000
    return-void
.end method

.method public showSnackbar(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/oneplus/base/Handle;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 2604
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_ContentView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 2605
    const/4 v0, 0x0

    .line 2614
    :goto_0
    return-object v0

    .line 2606
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;

    const-string v2, "showSnackbar() - Show"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    .line 2611
    :cond_1
    new-instance v0, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;-><init>(Lcom/oneplus/gallery/OPGalleryActivity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 2612
    .local v0, "handle":Lcom/oneplus/gallery/OPGalleryActivity$SnackbarHandle;
    iget-object v1, p0, Lcom/oneplus/gallery/OPGalleryActivity;->m_SnackbarHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2613
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->updateSnackbarVisibility(Z)V

    goto :goto_0
.end method
