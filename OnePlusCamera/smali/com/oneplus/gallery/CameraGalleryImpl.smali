.class public Lcom/oneplus/gallery/CameraGalleryImpl;
.super Lcom/oneplus/camera/UIComponent;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraGallery;
.implements Lcom/oneplus/camera/KeyEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/CameraGalleryImpl$10;,
        Lcom/oneplus/gallery/CameraGalleryImpl$11;,
        Lcom/oneplus/gallery/CameraGalleryImpl$12;,
        Lcom/oneplus/gallery/CameraGalleryImpl$13;,
        Lcom/oneplus/gallery/CameraGalleryImpl$14;,
        Lcom/oneplus/gallery/CameraGalleryImpl$1;,
        Lcom/oneplus/gallery/CameraGalleryImpl$2;,
        Lcom/oneplus/gallery/CameraGalleryImpl$3;,
        Lcom/oneplus/gallery/CameraGalleryImpl$4;,
        Lcom/oneplus/gallery/CameraGalleryImpl$5;,
        Lcom/oneplus/gallery/CameraGalleryImpl$6;,
        Lcom/oneplus/gallery/CameraGalleryImpl$7;,
        Lcom/oneplus/gallery/CameraGalleryImpl$8;,
        Lcom/oneplus/gallery/CameraGalleryImpl$9;,
        Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;,
        Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;,
        Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-OperationStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-gallery-CameraGalleryImpl$ImageDecodeStateSwitchesValues:[I = null

.field private static final synthetic -com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I = null

.field private static final ACTION_PHOTO_EDITOR_MEDIA_SAVED:Ljava/lang/String; = "com.oneplus.gallery.action.MEDIA_SAVED"

.field private static final ACTION_PHOTO_EDITOR_REQUESTER_READY:Ljava/lang/String; = "com.oneplus.gallery.action.REQUESTER_READY"

.field private static final ALPHA_DISABLED:F = 0.3f

.field private static final COMMIT_DELETION_WHEN_CLICKING_BUTTON:Z = false

.field private static final DISTANCE_ANIMATION_TRANSLATION:I = 0x32

.field private static final DISTANCE_SHOW_NO_PHOTO_TOAST:I = 0xc8

.field private static final DURATION_ANIMATION:J = 0x96L

.field private static final DURATION_ANIMATION_DELETION:J = 0x12cL

.field private static final DURATION_CLOSE_FILMSTRIP_DELAYED:J = 0x1f4L

.field private static final DURATION_COMMIT_DELETION:J = 0x2710L

.field private static final DURATION_FILMSTRIP_TRANSLATION_ANIMATION:J = 0xc8L

.field private static final DURATION_HIDE_NO_MEDIA_HINT:J = 0xbb8L

.field private static final DURATION_ROTATE_FADE_IN:J = 0x12cL

.field private static final DURATION_ROTATE_FADE_OUT:J = 0x12cL

.field private static final EMPTY_THUMB_COLOR:I

.field private static final ENABLE_FAST_SCROLL:Z = false

.field private static final EXTRA_FULL_SENSOR_ORIENTATION:Ljava/lang/String; = "FullSensorOrientation"

.field private static final EXTRA_GALLERY3D_SECURE_MODE:Ljava/lang/String; = "SECURE_MODE"

.field private static final EXTRA_GALLERY_START_PAGE:Ljava/lang/String; = "OPGalleryActivity.StartPage"

.field private static final EXTRA_GALLERY_START_PAGE_ALBUMS:Ljava/lang/String; = "ALBUMS"

.field private static final EXTRA_IS_READ_ONLY:Ljava/lang/String; = "IsReadOnly"

.field private static final EXTRA_IS_SECURE_MODE:Ljava/lang/String; = "IsSecureMode"

.field private static final EXTRA_WAIT_FOR_REQUESTER_READY:Ljava/lang/String; = "waitForRequesterReady"

.field private static final FLAG_ANIM_FADE_IN:I = 0x1

.field private static final FLAG_ANIM_FADE_IN_FLY_IN_BOTTOM:I = 0x5

.field private static final FLAG_ANIM_FADE_IN_FLY_IN_TOP:I = 0x9

.field private static final FLAG_ANIM_FADE_OUT:I = 0x2

.field private static final FLAG_ANIM_FADE_OUT_FLY_OUT_BOTTOM:I = 0x12

.field private static final FLAG_ANIM_FADE_OUT_FLY_OUT_TOP:I = 0x22

.field private static final FLAG_ANIM_FLY_IN_BOTTOM:I = 0x4

.field private static final FLAG_ANIM_FLY_IN_TOP:I = 0x8

.field private static final FLAG_ANIM_FLY_OUT_BOTTOM:I = 0x10

.field private static final FLAG_ANIM_FLY_OUT_TOP:I = 0x20

.field private static final GALLERY_ACTIVITY_NAME:Ljava/lang/String; = "com.oneplus.gallery.OPGalleryServiceActivity"

.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

.field private static final LARGE_VIDEO_FILE_SIZE_THRESHOLD:J = 0x40000000L

.field private static final MEDIA_UPDATE_FLAG_MASK:I

.field private static final MINIMUM_ANIMATION_DURATION:J = 0x64L

.field private static final MSG_CLOSE_FILMSTRIP_DELAYED:I = 0x2724

.field private static final MSG_COMMIT_DELETION:I = 0x271a

.field private static final MSG_DECODE_THUMBS:I = 0x2710

.field private static final MSG_HIDE_NO_MEDIA_HINT:I = 0x2738

.field private static final MSG_OPEN_FILMSTRIP:I = 0x2733

.field private static final MSG_SET_BUTTONS_ENABLED:I = 0x2729

.field private static final PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE:I = 0x1

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE_FAST_SCROLL:I = 0x2

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE_SMALL:I = 0x1

.field private static final PRE_DECODE_THUMB_WINDOW_SIZE_SMALL_FAST_SCROLL:I = 0x3

.field private static final PRINT_TRACE_LOGS:Z = false

.field private static final ROTATION_DELAY_TIME:J = 0x3e8L

.field private static final THRESHOLD_CLOSE_FILMSTRIP_RATIO:F = 0.8f

.field private static final THRESHOLD_DIFF_Y_TO_DELETE_IMAGE:F = 600.0f

.field private static final THRESHOLD_FAST_SCROLLING_TIME_MILLIS:J = 0x320L

.field private static final THRESHOLD_FLING_TO_NEIGHBOR_ITEM:F = 5000.0f

.field private static final THRESHOLD_OPEN_FILMSTRIP_DELAYED_MILLIS:J = 0x320L

.field private static final THRESHOLD_OPEN_FILMSTRIP_RATIO:F = 0.2f

.field private static final TIMEOUT_BUTTONS_DISABLED:J = 0xbb8L


# instance fields
.field private final m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private m_BackButton:Landroid/view/View;

.field private m_BackgroundView:Landroid/view/View;

.field private m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

.field private m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

.field private m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

.field private m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

.field private m_DeleteButton:Landroid/view/View;

.field private m_DeleteContainer:Landroid/view/View;

.field private m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_DeletingPosition:Ljava/lang/Integer;

.field private m_DetailsButton:Landroid/view/View;

.field private m_DetailsContainer:Landroid/view/View;

.field private m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private final m_DurationCallback:Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

.field private m_EditButton:Landroid/view/View;

.field private m_EditContainer:Landroid/view/View;

.field private m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_FakePhotoSize:Landroid/util/Size;

.field private m_FakeVideoSize:Landroid/util/Size;

.field private m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

.field private m_FilmstripContainer:Landroid/view/View;

.field private m_FilmstripEmptyPageContainer:Landroid/view/View;

.field private m_FilmstripEmptyPageTouchReceiver:Landroid/view/View;

.field private m_FilmstripScrollMode:I

.field private m_FlashController:Lcom/oneplus/camera/FlashController;

.field private m_FlashDisableHandle:Lcom/oneplus/base/Handle;

.field private m_FooterBarHeight:I

.field private m_FooterContainer:Landroid/view/View;

.field private m_FooterContainerBackground:Landroid/view/View;

.field private m_FooterContainerBackgroundVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private final m_FreeThumbDecodeInfos:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final m_GalleryItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_GalleryItemsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

.field private m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

.field private m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

.field private m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

.field private m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

.field private m_ImageBoundsOnTouch:Landroid/graphics/Rect;

.field private m_InitTouchPagerX:F

.field private m_IsActionEditSupported:Z

.field private m_IsActivityPausedByAction:Z

.field private m_IsFilmstripEmptyPageVisible:Z

.field private m_IsFilmstripOverscroll:Z

.field private m_IsFilmstripScrolling:Z

.field private m_IsFirstTouchEventAfterOverScroll:Z

.field private m_IsPreparingEditedMedia:Z

.field private m_IsRotatingContainer:Z

.field private m_IsScaleImageOverScaledDown:Z

.field private m_IsSetupUI:Z

.field private m_IsToolbarVisible:Z

.field private m_IsUndoBarVisible:Z

.field private m_ItemsControlContainerPaddingHorz:I

.field private m_ItemsControlContainerPaddingVert:I

.field private m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

.field private m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

.field private m_LastRotation:Lcom/oneplus/base/Rotation;

.field private m_LatestFilmstripItemPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_LaunchGalleryButton:Landroid/view/View;

.field private m_MainContainer:Landroid/view/View;

.field private m_MaxItemHeight:I

.field private m_MaxItemHeightLandscape:I

.field private m_MaxItemHeightPortrait:I

.field private m_MaxItemWidth:I

.field private m_MaxItemWidthLandscape:I

.field private m_MaxItemWidthPortrait:I

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

.field private final m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

.field private m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

.field private m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

.field private m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/gallery2/ListMoveEventArgs;",
            ">;"
        }
    .end annotation
.end field

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

.field private m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

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

.field private m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

.field private m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

.field private m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

.field private m_NavigationBarContainer:Landroid/view/View;

.field private m_NavigationBarUpperViewVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_NavigatonBarUpperView:Landroid/view/View;

.field private final m_NewMediaIntentReceivedHandler:Lcom/oneplus/base/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/EventHandler",
            "<",
            "Lcom/oneplus/base/IntentEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

.field private m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

.field private m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

.field private final m_PendingMediaToClearThumbCaches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/gallery2/media/Media;",
            ">;"
        }
    .end annotation
.end field

.field private m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

.field private m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

.field private m_PlayVideoHandle:Lcom/oneplus/base/Handle;

.field private m_PreferredContentUri:Landroid/net/Uri;

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

.field private final m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

.field private m_ProcessingBarMarginTop:I

.field private m_RecycledMediaHandles:Ljava/util/Map;
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

.field private m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

.field private final m_SavedMediaUriInSecureMode:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_ShareButton:Landroid/view/View;

.field private m_ShareContainer:Landroid/view/View;

.field private m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private final m_SmallThumbDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

.field private final m_TempThumbnailImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

.field private final m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

.field private final m_ThumbDecodeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_TranslationXRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

.field private m_UndoBarContainer:Landroid/view/View;

.field private m_UndoBarPhotoCountView:Landroid/widget/TextView;

.field private m_UndoBarRestoreButton:Landroid/view/View;

.field private m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

.field private final m_VideoDurationObtainHandles:Ljava/util/Map;
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


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/oneplus/gallery/CameraGalleryImpl;->EMPTY_THUMB_COLOR:I

    return v0
.end method

.method static synthetic -get1()Lcom/oneplus/media/BitmapPool;
    .locals 1

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    return-object v0
.end method

.method static synthetic -get10(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    return v0
.end method

.method static synthetic -get11(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object v0
.end method

.method static synthetic -get12(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get14(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    return-object v0
.end method

.method static synthetic -get15(Lcom/oneplus/gallery/CameraGalleryImpl;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_InitTouchPagerX:F

    return v0
.end method

.method static synthetic -get16(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    return v0
.end method

.method static synthetic -get17(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    return v0
.end method

.method static synthetic -get18(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    return v0
.end method

.method static synthetic -get19(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    return v0
.end method

.method static synthetic -get2()Lcom/oneplus/camera/ui/PreviewCover$Style;
    .locals 1

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    return-object v0
.end method

.method static synthetic -get20(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingHorz:I

    return v0
.end method

.method static synthetic -get21(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingVert:I

    return v0
.end method

.method static synthetic -get22(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get23(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic -get24(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    return-object v0
.end method

.method static synthetic -get25(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    return-object v0
.end method

.method static synthetic -get27(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get28(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PendingMediaToClearThumbCaches:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get29(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get30(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/PictureProcessService;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    return-object v0
.end method

.method static synthetic -get31(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get32(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/PreviewCover;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    return-object v0
.end method

.method static synthetic -get33(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get34(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic -get35(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SavedMediaUriInSecureMode:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get36(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get37(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get38(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/CameraGallery$UIState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    return-object v0
.end method

.method static synthetic -get39(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/BurstViewer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-base-RotationSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-OperationStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/OperationState;->values()[Lcom/oneplus/camera/OperationState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/OperationState;->STARTING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/OperationState;->STOPPING:Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-OperationStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->values()[Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->values()[Lcom/oneplus/camera/ui/CameraGallery$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-oneplus-gallery-CameraGalleryImpl$ImageDecodeStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-gallery-CameraGalleryImpl$ImageDecodeStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-gallery-CameraGalleryImpl$ImageDecodeStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->values()[Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-gallery-CameraGalleryImpl$ImageDecodeStateSwitchesValues:[I

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

.method private static synthetic -getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->values()[Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->-com-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/FlashController;)Lcom/oneplus/camera/FlashController;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object p1
.end method

.method static synthetic -set10(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set11(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set12(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set2(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set3(Lcom/oneplus/gallery/CameraGalleryImpl;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_InitTouchPagerX:F

    return p1
.end method

.method static synthetic -set4(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    return p1
.end method

.method static synthetic -set5(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    return p1
.end method

.method static synthetic -set6(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set8(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic -set9(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/PictureProcessService;)Lcom/oneplus/camera/PictureProcessService;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Range;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getTranslationXRange()Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/gallery/CameraGalleryImpl;I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->deletePage(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 1
    .param p1, "componentType"    # Ljava/lang/Class;

    .prologue
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getScaleImageGestureReceiver()Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap12(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->obtainGalleryItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap13(Lcom/oneplus/gallery/CameraGalleryImpl;)F
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/oneplus/gallery/CameraGalleryImpl;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "cancelHighResImage"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages(Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkActionEditSupported()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkGalleryState()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "removingMedia"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->clearMediaCaches(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;ZZ)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z
    .param p3, "smallOnly"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImages()V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->editPage(I)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->launchGallery()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->navigateBack()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripCurrentItemChanged(II)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingEnd()V

    return-void
.end method

.method static synthetic -wrap29(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingStart()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isBurstGroup(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap30(Lcom/oneplus/gallery/CameraGalleryImpl;FFF)V
    .locals 0
    .param p1, "newX"    # F
    .param p2, "newY"    # F
    .param p3, "alpha"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingUpdate(FFF)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "atFirstItem"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripOverscroll(Z)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStarted()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStopped()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onIndicatorClicked(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaAdded(II)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/oneplus/gallery/CameraGalleryImpl;IIII)V
    .locals 0
    .param p1, "oldStart"    # I
    .param p2, "oldEnd"    # I
    .param p3, "newStart"    # I
    .param p4, "newEnd"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaMoved(IIII)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaRemoved(II)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaRemoving(II)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;IIZ)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fromCallback"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;IIZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;)Z
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "originalMedia"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "result"    # Landroid/content/Intent;
    .param p3, "activityFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onPhotoEditorMediaSaved(Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 0
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    return-void
.end method

.method static synthetic -wrap45(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageGestureEnd(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageGestureStart(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "isSecureMode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onSecureModeChanged(Z)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "isSmall"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onThumbnailImageDecoded(Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic -wrap49(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/VideoMedia;J)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/VideoMedia;
    .param p2, "duration"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onVideoDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripTouchReceived(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap50(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onWatermarkProcessed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap51(Lcom/oneplus/gallery/CameraGalleryImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onWatermarkProcessing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap52(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    return-void
.end method

.method static synthetic -wrap53(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPage(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "galleryItem"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->recycleGalleryItem(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    return-void
.end method

.method static synthetic -wrap55(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V

    return-void
.end method

.method static synthetic -wrap56(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V

    return-void
.end method

.method static synthetic -wrap57(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->restoreMediaInfoFromRecycler()V

    return-void
.end method

.method static synthetic -wrap58(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap59(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "smoothly"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageFling(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap60(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "scrollMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    return-void
.end method

.method static synthetic -wrap61(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    return-void
.end method

.method static synthetic -wrap62(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    return-void
.end method

.method static synthetic -wrap63(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->sharePage(I)V

    return-void
.end method

.method static synthetic -wrap64(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showNoMediaHint()V

    return-void
.end method

.method static synthetic -wrap65(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetails(I)V

    return-void
.end method

.method static synthetic -wrap66(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    return-void
.end method

.method static synthetic -wrap67(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    return-void
.end method

.method static synthetic -wrap68(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Rotation;)V
    .locals 0
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateRotation(Lcom/oneplus/base/Rotation;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z
    .locals 1
    .param p1, "state"    # Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->startCameraPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Rotation;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v1, 0x50

    .line 132
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/oneplus/gallery/CameraGalleryImpl;->EMPTY_THUMB_COLOR:I

    .line 174
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 179
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string/jumbo v1, "LargeVideoDecoder"

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const-wide/32 v2, 0x1000000

    const-wide/32 v4, 0x400000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    .line 1815
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_FILE_SIZE_CHANGED:I

    .line 1816
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    .line 1815
    or-int/2addr v0, v1

    .line 1817
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    .line 1815
    or-int/2addr v0, v1

    .line 1818
    sget v1, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    .line 1815
    or-int/2addr v0, v1

    .line 1819
    sget v1, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    .line 1815
    or-int/2addr v0, v1

    sput v0, Lcom/oneplus/gallery/CameraGalleryImpl;->MEDIA_UPDATE_FLAG_MASK:I

    .line 115
    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/camera/CameraActivity;)V
    .locals 2
    .param p1, "cameraActivity"    # Lcom/oneplus/camera/CameraActivity;

    .prologue
    const/4 v1, 0x1

    .line 1827
    const-string/jumbo v0, "Camera Gallery Impl"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 191
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 195
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 198
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 212
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainerBackgroundVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 213
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    .line 215
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    .line 216
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 227
    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    .line 257
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 258
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarUpperViewVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PendingMediaToClearThumbCaches:Ljava/util/Set;

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SavedMediaUriInSecureMode:Ljava/util/Set;

    .line 273
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    .line 281
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 285
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_VideoDurationObtainHandles:Ljava/util/Map;

    .line 290
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DurationCallback:Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .line 298
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$2;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 306
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$3;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 313
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$4;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 323
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$5;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 331
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$6;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    .line 339
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$7;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 347
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$8;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NewMediaIntentReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 376
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$9;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 390
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$10;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 407
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$11;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    .line 657
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$12;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    .line 922
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$13;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$13;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1715
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$14;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$14;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1830
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1831
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1825
    return-void
.end method

.method private canDeleteButtonVisible()Z
    .locals 2

    .prologue
    .line 1946
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1953
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1951
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 1946
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canDetailsButtonVisible()Z
    .locals 2

    .prologue
    .line 1961
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1968
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1966
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 1961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canEditButtonVisible()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1976
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1977
    :cond_0
    return v6

    .line 1978
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v3

    .line 1979
    .local v3, "position":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1980
    return v6

    .line 1981
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4, v3}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v4

    sget-object v5, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v4, v5, :cond_3

    const/4 v2, 0x1

    .line 1983
    .local v2, "isVideo":Z
    :goto_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v5

    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 1991
    :pswitch_0
    const/4 v1, 0x0

    .line 1994
    .local v1, "isSimpleGalleryState":Z
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1995
    .local v0, "isSecureMode":Z
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    if-eqz v4, :cond_4

    .line 1998
    const/4 v4, 0x1

    return v4

    .line 1981
    .end local v0    # "isSecureMode":Z
    .end local v1    # "isSimpleGalleryState":Z
    .end local v2    # "isVideo":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isVideo":Z
    goto :goto_0

    .line 1988
    :pswitch_1
    const/4 v1, 0x1

    .line 1989
    .restart local v1    # "isSimpleGalleryState":Z
    goto :goto_1

    .line 1996
    .restart local v0    # "isSecureMode":Z
    :cond_4
    return v6

    .line 1983
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private canShareButtonVisible()Z
    .locals 4

    .prologue
    .line 2006
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 2014
    :pswitch_0
    const/4 v1, 0x0

    .line 2017
    .local v1, "isSimpleGalleryState":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2018
    .local v0, "isSecureMode":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 2019
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2011
    .end local v0    # "isSecureMode":Z
    .end local v1    # "isSimpleGalleryState":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 2012
    .restart local v1    # "isSimpleGalleryState":Z
    goto :goto_0

    .line 2021
    .restart local v0    # "isSecureMode":Z
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 2006
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private cancelDecodingHighResolutionImage()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1872
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_2

    .line 1875
    const/4 v2, 0x0

    .line 1876
    .local v2, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "candItem$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 1878
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1880
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cancelDecodingHighResolutionImage() - Media : "

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1881
    move-object v2, v0

    .line 1887
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v2    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cancelDecodingHighResolutionImage()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4, v8, v8}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setVisible(ZZ)Z

    .line 1889
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    .line 1890
    iput-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 1893
    if-eqz v2, :cond_2

    .line 1895
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1896
    .local v3, "thumb":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 1898
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 1899
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v5, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1870
    .end local v1    # "candItem$iterator":Ljava/util/Iterator;
    .end local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-void

    .line 1903
    .restart local v1    # "candItem$iterator":Ljava/util/Iterator;
    .restart local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getLowQualityThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1904
    if-eqz v3, :cond_2

    .line 1906
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 1907
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v5, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private cancelDecodingImages()V
    .locals 1

    .prologue
    .line 1917
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages(Z)V

    .line 1915
    return-void
.end method

.method private cancelDecodingImages(Z)V
    .locals 4
    .param p1, "cancelHighResImage"    # Z

    .prologue
    .line 1921
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "cancelDecodingImages()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1925
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1926
    .local v1, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1927
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1923
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1929
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1931
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1932
    .restart local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1933
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1929
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1935
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1936
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1938
    if-eqz p1, :cond_2

    .line 1939
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 1919
    :cond_2
    return-void
.end method

.method private checkActionEditSupported()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2028
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2029
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 2031
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkActionEditSupported() - packageManager is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    .line 2033
    return-void

    .line 2035
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2036
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2037
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2038
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2039
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    .line 2026
    :goto_0
    return-void

    .line 2041
    :cond_1
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    goto :goto_0
.end method

.method private checkGalleryState()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 2048
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2050
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_2

    .line 2052
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2053
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.oneplus.gallery"

    const-string/jumbo v7, "com.oneplus.gallery.OPGalleryServiceActivity"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2054
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2055
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 2062
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "isGalleryReady":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2064
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2065
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2046
    :cond_0
    :goto_1
    return-void

    .line 2055
    .end local v2    # "isGalleryReady":Z
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "isGalleryReady":Z
    goto :goto_0

    .line 2059
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isGalleryReady":Z
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkGalleryState() - packageManager is null"

    invoke-static {v4, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    const/4 v2, 0x0

    .restart local v2    # "isGalleryReady":Z
    goto :goto_0

    .line 2067
    :cond_3
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    if-eqz v2, :cond_4

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2
.end method

.method private checkToUseRevert(Lcom/oneplus/base/Rotation;)Z
    .locals 5
    .param p1, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2075
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2076
    .local v0, "isRtlLayout":Z
    if-eqz v0, :cond_0

    .line 2078
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2084
    :pswitch_0
    return v3

    .line 2082
    :pswitch_1
    return v4

    .line 2089
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2095
    return v3

    .line 2093
    :pswitch_2
    return v4

    .line 2078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2089
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private clearMediaCaches(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4
    .param p1, "removingMedia"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2105
    if-nez p1, :cond_0

    .line 2107
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMediaCaches() - removing media is null!"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    return-void

    .line 2112
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2113
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 2115
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMediaCaches() - Clear caches: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2117
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 2118
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 2119
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 2123
    :cond_1
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2124
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2126
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMediaCaches() - Clear caches: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2128
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2129
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2130
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2134
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    return-void
.end method

.method private closeFilmstrip(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 2141
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(ZZ)V

    .line 2139
    return-void
.end method

.method private closeFilmstrip(ZZ)V
    .locals 6
    .param p1, "animation"    # Z
    .param p2, "clearRecycler"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2146
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v4

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 2154
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "closeFilmstrip()"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-eqz v2, :cond_0

    .line 2158
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-eqz p1, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    .line 2161
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 2164
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2167
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2170
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x2724

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2171
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x2733

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2174
    if-eqz p2, :cond_1

    .line 2175
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 2178
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 2181
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v2, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2184
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 2185
    iput-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    .line 2186
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 2189
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2191
    .local v0, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2193
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 2199
    .end local v0    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_3
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 2202
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 2143
    return-void

    .line 2149
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    :pswitch_0
    return-void

    .line 2158
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 2146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createDrawableForDisplay(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 2234
    if-eqz p1, :cond_0

    .line 2236
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2237
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 2238
    return-object v0

    .line 2240
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method

.method private decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V
    .locals 11
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2251
    const/4 v10, 0x0

    .line 2252
    .local v10, "isItemFound":Z
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2254
    .local v8, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v0, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2257
    const/4 v7, 0x1

    .line 2258
    .local v7, "creeateNewDrawable":Z
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_1

    .line 2260
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2261
    const/4 v7, 0x0

    .line 2265
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 2266
    new-instance v0, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v4, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Bitmap$Config;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 2268
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v0, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 2269
    iget-object v0, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2271
    const/4 v10, 0x1

    .line 2272
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "decodeHighResolutionImage() - creeateNewDrawable:"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ", update high-resolution bitmap : "

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ", uri:"

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2245
    .end local v7    # "creeateNewDrawable":Z
    .end local v8    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_3
    return-void

    .line 2263
    .restart local v7    # "creeateNewDrawable":Z
    .restart local v8    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    goto :goto_0
.end method

.method private decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V
    .locals 26
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z
    .param p3, "smallOnly"    # Z

    .prologue
    .line 2285
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v6}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2286
    return-void

    .line 2289
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v24

    .line 2290
    .local v24, "size":Landroid/util/Size;
    if-nez v24, :cond_2

    .line 2292
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "decodeThumbnailImage() - No size for "

    const-string/jumbo v7, ", decode later"

    move-object/from16 v0, p1

    invoke-static {v5, v6, v0, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2295
    return-void

    .line 2299
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 2300
    .local v3, "filePath":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v14

    .line 2301
    .local v14, "contentUri":Landroid/net/Uri;
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v19

    .line 2302
    .local v19, "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    sget-object v5, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    move-object/from16 v0, v19

    if-ne v0, v5, :cond_d

    const/4 v4, 0x1

    .line 2303
    .local v4, "mediaTypeValue":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v15

    .line 2304
    .local v15, "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/oneplus/gallery2/media/VideoMedia;

    if-nez v5, :cond_6

    if-eqz v15, :cond_3

    if-eqz p2, :cond_6

    .line 2306
    :cond_3
    if-nez v15, :cond_5

    .line 2308
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    check-cast v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2309
    .restart local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v15, :cond_4

    .line 2310
    new-instance v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .end local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v5, 0x0

    invoke-direct {v15, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;)V

    .line 2311
    .restart local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_4
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    .line 2312
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2314
    :cond_5
    if-eqz v3, :cond_f

    .line 2315
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    if-eqz p2, :cond_e

    const/4 v7, 0x2

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v5, 0x200

    const/16 v6, 0x200

    invoke-virtual/range {v2 .. v9}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2323
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v15

    .line 2324
    if-nez p3, :cond_a

    if-eqz v15, :cond_7

    if-eqz p2, :cond_a

    .line 2326
    :cond_7
    if-nez v15, :cond_9

    .line 2328
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    check-cast v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2329
    .restart local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v15, :cond_8

    .line 2330
    new-instance v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .end local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v5, 0x0

    invoke-direct {v15, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;)V

    .line 2331
    .restart local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_8
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    .line 2332
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2334
    :cond_9
    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getWidth()I

    move-result v5

    int-to-float v0, v5

    move/from16 v20, v0

    .line 2335
    .local v20, "mediaWidth":F
    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v0, v5

    move/from16 v18, v0

    .line 2337
    .local v18, "mediaHeight":F
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v5

    sget-object v6, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v5, v6, :cond_11

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v6

    const-wide/32 v8, 0x40000000

    cmp-long v5, v6, v8

    if-ltz v5, :cond_11

    .line 2338
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    .line 2341
    .local v2, "decoder":Lcom/oneplus/media/BitmapPool;
    :goto_3
    const/4 v5, 0x0

    cmpl-float v5, v20, v5

    if-lez v5, :cond_15

    const/4 v5, 0x0

    cmpl-float v5, v18, v5

    if-lez v5, :cond_15

    .line 2343
    const/high16 v5, 0x44f00000    # 1920.0f

    div-float v5, v5, v20

    const/high16 v6, 0x44870000    # 1080.0f

    div-float v6, v6, v18

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 2344
    .local v22, "ratio1":F
    const/high16 v5, 0x44870000    # 1080.0f

    div-float v5, v5, v20

    const/high16 v6, 0x44f00000    # 1920.0f

    div-float v6, v6, v18

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 2345
    .local v23, "ratio2":F
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v21

    .line 2346
    .local v21, "ratio":F
    if-eqz v3, :cond_13

    .line 2347
    mul-float v5, v20, v21

    float-to-int v5, v5

    mul-float v6, v18, v21

    float-to-int v6, v6

    if-eqz p2, :cond_12

    const/4 v7, 0x2

    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual/range {v2 .. v9}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2363
    .end local v2    # "decoder":Lcom/oneplus/media/BitmapPool;
    .end local v18    # "mediaHeight":F
    .end local v20    # "mediaWidth":F
    .end local v21    # "ratio":F
    .end local v22    # "ratio1":F
    .end local v23    # "ratio2":F
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/graphics/Bitmap;

    .line 2364
    .local v25, "tempThumb":Landroid/graphics/Bitmap;
    if-eqz v25, :cond_c

    .line 2366
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2368
    .local v16, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_b

    .line 2370
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    if-ne v5, v6, :cond_c

    .line 2372
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 2373
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    const/4 v6, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 2374
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v5, v6}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2282
    .end local v16    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v17    # "galleryItem$iterator":Ljava/util/Iterator;
    :cond_c
    return-void

    .line 2302
    .end local v4    # "mediaTypeValue":I
    .end local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v25    # "tempThumb":Landroid/graphics/Bitmap;
    :cond_d
    const/4 v4, 0x3

    .restart local v4    # "mediaTypeValue":I
    goto/16 :goto_0

    .line 2315
    .restart local v15    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2316
    :cond_f
    if-eqz v14, :cond_6

    .line 2317
    sget-object v5, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz p2, :cond_10

    const/4 v11, 0x2

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v13

    const/16 v9, 0x200

    const/16 v10, 0x200

    move-object v7, v14

    move v8, v4

    invoke-virtual/range {v5 .. v13}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    :cond_10
    const/4 v11, 0x0

    goto :goto_6

    .line 2340
    .restart local v18    # "mediaHeight":F
    .restart local v20    # "mediaWidth":F
    :cond_11
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    .restart local v2    # "decoder":Lcom/oneplus/media/BitmapPool;
    goto/16 :goto_3

    .line 2347
    .restart local v21    # "ratio":F
    .restart local v22    # "ratio1":F
    .restart local v23    # "ratio2":F
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 2348
    :cond_13
    if-eqz v14, :cond_a

    .line 2349
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    mul-float v5, v20, v21

    float-to-int v9, v5

    mul-float v5, v18, v21

    float-to-int v10, v5

    if-eqz p2, :cond_14

    const/4 v11, 0x2

    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v13

    move-object v5, v2

    move-object v7, v14

    move v8, v4

    invoke-virtual/range {v5 .. v13}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    :cond_14
    const/4 v11, 0x0

    goto :goto_7

    .line 2353
    .end local v21    # "ratio":F
    .end local v22    # "ratio1":F
    .end local v23    # "ratio2":F
    :cond_15
    if-eqz v3, :cond_17

    .line 2354
    if-eqz p2, :cond_16

    const/4 v7, 0x2

    :goto_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/16 v5, 0x780

    const/16 v6, 0x780

    invoke-virtual/range {v2 .. v9}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    :cond_16
    const/4 v7, 0x0

    goto :goto_8

    .line 2355
    :cond_17
    if-eqz v14, :cond_a

    .line 2356
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz p2, :cond_18

    const/4 v11, 0x2

    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v13

    const/16 v9, 0x780

    const/16 v10, 0x780

    move-object v5, v2

    move-object v7, v14

    move v8, v4

    invoke-virtual/range {v5 .. v13}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v5

    iput-object v5, v15, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    :cond_18
    const/4 v11, 0x0

    goto :goto_9
.end method

.method private decodeThumbnailImages()V
    .locals 21

    .prologue
    .line 2389
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x2710

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 2392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 2393
    return-void

    .line 2394
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v18

    sget-object v19, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual/range {v18 .. v19}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2395
    return-void

    .line 2396
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v13

    .line 2397
    .local v13, "mediaCount":I
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/widget/FilmstripView;->getFirstVisibltItem()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 2398
    .local v17, "startPosition":I
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/widget/FilmstripView;->getLastVisibltItem()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2399
    .local v6, "endPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v5

    .line 2400
    .local v5, "centerPosition":I
    if-ltz v17, :cond_2

    if-gez v6, :cond_3

    .line 2401
    :cond_2
    return-void

    .line 2404
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v18

    sub-int v18, v18, v17

    add-int/lit8 v14, v18, -0x1

    .line 2407
    .local v14, "newEndPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v18

    sub-int v18, v18, v6

    add-int/lit8 v17, v18, -0x1

    .line 2408
    move v6, v14

    .line 2411
    .end local v14    # "newEndPosition":I
    :cond_4
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v19

    sget-object v18, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v18

    aget v18, v19, v18

    packed-switch v18, :pswitch_data_0

    .line 2421
    const/4 v15, 0x0

    .line 2422
    .local v15, "preDecodeWindowSize":I
    const/16 v16, 0x1

    .line 2425
    .local v16, "preDecodeWindowSizeSmall":I
    :goto_0
    sub-int v18, v17, v15

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2426
    add-int/lit8 v18, v13, -0x1

    add-int v19, v6, v15

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2427
    sub-int v18, v17, v16

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2428
    .local v8, "extStartPosition":I
    add-int/lit8 v18, v13, -0x1

    add-int v19, v6, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2431
    .local v7, "extEndPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_b

    .line 2433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2434
    .local v10, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v4, 0x1

    .line 2435
    .local v4, "cancel":Z
    move v12, v8

    .local v12, "j":I
    :goto_2
    if-gt v12, v7, :cond_5

    .line 2437
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 2439
    const/4 v4, 0x0

    .line 2443
    :cond_5
    if-eqz v4, :cond_6

    .line 2445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2447
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2431
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 2416
    .end local v4    # "cancel":Z
    .end local v7    # "extEndPosition":I
    .end local v8    # "extStartPosition":I
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v12    # "j":I
    .end local v15    # "preDecodeWindowSize":I
    .end local v16    # "preDecodeWindowSizeSmall":I
    :pswitch_0
    sget-object v18, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v18

    sget-object v19, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/4 v11, 0x1

    .line 2417
    .local v11, "isFastScroll":Z
    :goto_3
    if-eqz v11, :cond_8

    const/4 v15, 0x2

    .line 2418
    .restart local v15    # "preDecodeWindowSize":I
    :goto_4
    if-eqz v11, :cond_9

    const/16 v16, 0x3

    .restart local v16    # "preDecodeWindowSizeSmall":I
    goto/16 :goto_0

    .line 2416
    .end local v11    # "isFastScroll":Z
    .end local v15    # "preDecodeWindowSize":I
    .end local v16    # "preDecodeWindowSizeSmall":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 2417
    .restart local v11    # "isFastScroll":Z
    :cond_8
    const/4 v15, 0x1

    .restart local v15    # "preDecodeWindowSize":I
    goto :goto_4

    .line 2418
    :cond_9
    const/16 v16, 0x1

    .restart local v16    # "preDecodeWindowSizeSmall":I
    goto/16 :goto_0

    .line 2435
    .end local v11    # "isFastScroll":Z
    .restart local v4    # "cancel":Z
    .restart local v7    # "extEndPosition":I
    .restart local v8    # "extStartPosition":I
    .restart local v9    # "i":I
    .restart local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .restart local v12    # "j":I
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2450
    .end local v4    # "cancel":Z
    .end local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v12    # "j":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v9, v18, -0x1

    :goto_5
    if-ltz v9, :cond_f

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2453
    .restart local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v4, 0x1

    .line 2454
    .restart local v4    # "cancel":Z
    move/from16 v12, v17

    .restart local v12    # "j":I
    :goto_6
    if-gt v12, v6, :cond_c

    .line 2456
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 2458
    const/4 v4, 0x0

    .line 2462
    :cond_c
    if-eqz v4, :cond_d

    .line 2464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2466
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2450
    :cond_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 2454
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2471
    .end local v4    # "cancel":Z
    .end local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v12    # "j":I
    :cond_f
    move v9, v7

    :goto_7
    if-le v9, v6, :cond_11

    .line 2472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/gallery2/media/Media;

    move/from16 v0, v17

    if-lt v9, v0, :cond_10

    if-gt v9, v6, :cond_10

    const/16 v19, 0x1

    :goto_8
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 2471
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 2472
    :cond_10
    const/16 v19, 0x0

    goto :goto_8

    .line 2473
    :cond_11
    move v9, v8

    :goto_9
    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    .line 2474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/gallery2/media/Media;

    move/from16 v0, v17

    if-lt v9, v0, :cond_12

    if-gt v9, v6, :cond_12

    const/16 v19, 0x1

    :goto_a
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 2473
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 2474
    :cond_12
    const/16 v19, 0x0

    goto :goto_a

    .line 2475
    :cond_13
    move/from16 v9, v17

    :goto_b
    if-gt v9, v6, :cond_15

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/oneplus/gallery2/media/Media;

    if-ne v9, v5, :cond_14

    const/16 v19, 0x1

    :goto_c
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 2475
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 2476
    :cond_14
    const/16 v19, 0x0

    goto :goto_c

    .line 2386
    :cond_15
    return-void

    .line 2411
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private deleteMediaInfoFromRecycler()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2484
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "media$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 2486
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v5}, Lcom/oneplus/gallery2/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2487
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteMediaInfoFromRecycler() - Delete "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2490
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2489
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteMediaInfoFromRecycler() - Fail to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2492
    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2495
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x271a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2496
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 2497
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 2481
    :goto_2
    :pswitch_0
    return-void

    .line 2501
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_2

    .line 2497
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private deletePage(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 2514
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 2515
    :cond_0
    return v4

    .line 2518
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 2521
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 2522
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2529
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deletePage() - Cannot delete page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    return v4

    .line 2532
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2533
    return v4

    .line 2535
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deletePage() - Pos: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2538
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2546
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->movePageToRecycler(I)V

    .line 2549
    const/4 v1, 0x1

    return v1

    .line 2541
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 2522
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2538
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch
.end method

.method private editPage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2557
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 2558
    :cond_0
    return-void

    .line 2565
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 2566
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2572
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "editPage() - Cannot edit page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    return-void

    .line 2575
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2576
    return-void

    .line 2579
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->editPageDirectly(I)V

    .line 2554
    return-void

    .line 2566
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private editPageDirectly(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2587
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.EDIT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2588
    .local v1, "editIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 2589
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "image/*"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2590
    const-string/jumbo v6, "extraCreateModifiedThumb"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2591
    const-string/jumbo v6, "waitForRequesterReady"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2594
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 2596
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "editPageDirectly() - Unregister previous receiver for media saved"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2599
    :cond_0
    new-instance v6, Lcom/oneplus/gallery/CameraGalleryImpl$16;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$16;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    iput-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    .line 2607
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.oneplus.gallery.action.MEDIA_SAVED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2610
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    :try_start_0
    const-string/jumbo v6, "image/*"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2611
    const-string/jumbo v6, "video/*"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2615
    :goto_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "editPageDirectly() - Register receiver for media saved"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2619
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .line 2620
    .local v0, "activity":Lcom/oneplus/camera/OPCameraActivity;
    new-instance v6, Lcom/oneplus/gallery/CameraGalleryImpl$17;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$17;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    invoke-virtual {v0, v1, v6}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    .line 2647
    .local v3, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2648
    iput-boolean v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 2656
    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 2584
    return-void

    .line 2651
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2652
    iput-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_1

    .line 2614
    .end local v0    # "activity":Lcom/oneplus/camera/OPCameraActivity;
    .end local v3    # "handle":Lcom/oneplus/base/Handle;
    :catch_0
    move-exception v2

    .local v2, "ex":Landroid/content/IntentFilter$MalformedMimeTypeException;
    goto :goto_0
.end method

.method private findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .locals 4
    .param p2, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;>;"
    const/4 v3, 0x0

    .line 2663
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2664
    :cond_0
    return-object v3

    .line 2666
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2668
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2669
    .local v1, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2670
    return-object v1

    .line 2671
    :cond_2
    instance-of v2, p2, Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2672
    return-object v1

    .line 2666
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2674
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_4
    return-object v3
.end method

.method private getHideTranslationX()F
    .locals 3

    .prologue
    .line 2692
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getTranslationXRange()Landroid/util/Range;

    move-result-object v0

    .line 2693
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2694
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 2696
    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1
.end method

.method private getRotateMediaListIndex(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2703
    move v0, p1

    .line 2704
    .local v0, "mediaListIndex":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2705
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 2706
    :cond_0
    return v0
.end method

.method private getRotatePosition(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2713
    move v0, p1

    .line 2714
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2715
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 2716
    :cond_0
    return v0
.end method

.method private getScaleImageGestureReceiver()Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 1

    .prologue
    .line 2723
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    return-object v0
.end method

.method private getTranslationXRange()Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2730
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    if-eqz v4, :cond_0

    .line 2731
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    return-object v4

    .line 2732
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 2733
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2734
    .local v0, "isRtlLayout":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    .line 2736
    .local v3, "uiRotation":Lcom/oneplus/base/Rotation;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2766
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTranslationXRange() - Rotation is not supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 2740
    :pswitch_0
    if-nez v0, :cond_1

    .line 2741
    new-instance v1, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2770
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :goto_0
    return-object v1

    .line 2743
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_1
    new-instance v1, Landroid/util/Range;

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    neg-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 2748
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :pswitch_1
    new-instance v1, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2749
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 2753
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :pswitch_2
    new-instance v1, Landroid/util/Range;

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2754
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 2758
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :pswitch_3
    if-nez v0, :cond_2

    .line 2759
    new-instance v1, Landroid/util/Range;

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 2761
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :cond_2
    new-instance v1, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 2736
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVideoDurationText(J)Ljava/lang/String;
    .locals 11
    .param p1, "millis"    # J

    .prologue
    .line 2777
    const-wide/16 v6, 0x1f4

    add-long/2addr v6, p1

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 2778
    .local v4, "seconds":J
    const-wide/16 v6, 0xe10

    div-long v0, v4, v6

    .line 2779
    .local v0, "hours":J
    const-wide/16 v6, 0xe10

    mul-long/2addr v6, v0

    sub-long/2addr v4, v6

    .line 2780
    const-wide/16 v6, 0x3c

    div-long v2, v4, v6

    .line 2781
    .local v2, "minutes":J
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr v4, v6

    .line 2782
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%02d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2790
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2791
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 2792
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarUpperViewVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2793
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 2794
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2795
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 2796
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2797
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainerBackground:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 2798
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainerBackgroundVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2799
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 2800
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2801
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 2802
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2803
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 2804
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2807
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getViewVisibilityState() - Unknow view"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0
.end method

.method private hasVisibleMedia()Z
    .locals 1

    .prologue
    .line 2855
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2856
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2857
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isBurstGroup(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2864
    instance-of v0, p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v0, :cond_0

    .line 2865
    check-cast p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isBurstGroup(Lcom/oneplus/gallery2/media/PhotoMedia;)Z

    move-result v0

    return v0

    .line 2866
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isBurstGroup(Lcom/oneplus/gallery2/media/PhotoMedia;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/PhotoMedia;

    .prologue
    .line 2870
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/PhotoMedia;->isBurstGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/gallery2/media/MediaUtils;->containsMultipleSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z
    .locals 4
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    const/4 v1, 0x0

    .line 2877
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2878
    .local v0, "tag":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2879
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2881
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method private isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2888
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v3, :cond_1

    .line 2890
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isItemSourceSameAsMovieDrawable() - item or movie drawble is null."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    return v5

    .line 2893
    :cond_1
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 2894
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v2, :cond_2

    .line 2896
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isItemSourceSameAsMovieDrawable() - info is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    return v5

    .line 2900
    :cond_2
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2901
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2904
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v3, v0}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2906
    return v4

    .line 2908
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v3, v1}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2910
    return v4

    .line 2912
    :cond_4
    return v5
.end method

.method private launchGallery()V
    .locals 4

    .prologue
    .line 2921
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2922
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.gallery"

    const-string/jumbo v3, "com.oneplus.gallery.OPGalleryServiceActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2923
    const-string/jumbo v2, "OPGalleryActivity.StartPage"

    const-string/jumbo v3, "ALBUMS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2924
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2925
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2917
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2928
    :catch_0
    move-exception v0

    .line 2929
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "launchGallery() - Fail to start Gallery"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private movePageToRecycler(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2938
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_1

    const/4 v2, 0x1

    .line 2939
    .local v2, "isLastMedia":Z
    :goto_0
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    .line 2942
    .local v1, "isCurrentItem":Z
    :goto_1
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 2943
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget v6, Lcom/oneplus/gallery2/media/MediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    invoke-interface {v5, v3, v7, v6}, Lcom/oneplus/gallery2/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 2947
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2948
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "movePageToRecycler() - Media: "

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2958
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2960
    invoke-direct {p0, v8, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 2961
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v6

    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 2975
    :goto_2
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2977
    if-eqz v1, :cond_0

    .line 2979
    if-eqz v2, :cond_5

    const/4 v5, -0x1

    :goto_3
    add-int/2addr v5, p1

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v4

    .line 2980
    .local v4, "nextUiPosition":I
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5, v4, v8}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2987
    .end local v4    # "nextUiPosition":I
    :cond_0
    :goto_4
    const/16 v5, 0x271a

    const-wide/16 v6, 0x2710

    invoke-static {p0, v5, v8, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 2935
    return-void

    .line 2938
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "isCurrentItem":Z
    .end local v2    # "isLastMedia":Z
    .end local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isLastMedia":Z
    goto :goto_0

    .line 2939
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isCurrentItem":Z
    goto :goto_1

    .line 2951
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    .restart local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "movePageToRecycler() - Fail to recycle media"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2952
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    return-void

    .line 2965
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_2

    .line 2972
    :cond_4
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "movePageToRecycler() - Cannot remove media info, index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2979
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 2984
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "movePageToRecycler() - Last media"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2961
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private navigateBack()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2996
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    if-eqz v0, :cond_0

    .line 2998
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "navigateBack() - Rotation container is rotating, ignore navigate back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2999
    return-void

    .line 3003
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2993
    :goto_0
    return-void

    .line 3014
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 3015
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0

    .line 3003
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private notifyPhotoEditorRequesterReady(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 3024
    if-eqz p1, :cond_0

    .line 3026
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyPhotoEditorRequesterReady() - "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3027
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.gallery.action.REQUESTER_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 3022
    :cond_0
    return-void
.end method

.method private obtainGalleryItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 3035
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3036
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_0

    .line 3038
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 3039
    return-object v0

    .line 3041
    :cond_0
    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-object v1
.end method

.method private onCurrentMediaChanged()V
    .locals 5

    .prologue
    .line 3049
    const/4 v0, 0x0

    .line 3050
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    if-eqz v4, :cond_0

    .line 3052
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v3

    .line 3053
    .local v3, "position":I
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v2

    .line 3054
    .local v2, "mediaListIndex":I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3056
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 3057
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v1, :cond_0

    .line 3058
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 3063
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v2    # "mediaListIndex":I
    .end local v3    # "position":I
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 3066
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3046
    return-void
.end method

.method private onFilmstripCurrentItemChanged(II)V
    .locals 13
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 3116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3119
    .local v2, "nowTimeMillis":J
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 3120
    .local v6, "size":I
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v8

    sget-object v7, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v7}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_0

    .line 3187
    if-le v6, v9, :cond_0

    .line 3188
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3193
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3195
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v7, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3197
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3203
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onCurrentMediaChanged()V

    .line 3206
    invoke-direct {p0, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 3209
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 3113
    return-void

    .line 3124
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    :pswitch_0
    if-nez v6, :cond_3

    .line 3128
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    sub-int v8, p2, p1

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    float-to-long v8, v8

    mul-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3132
    :cond_3
    if-ne v6, v9, :cond_5

    .line 3136
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    sub-int v8, p2, p1

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    float-to-long v8, v8

    mul-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3139
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3140
    .local v4, "prevTimeMillisWithSignNum":J
    sub-int v7, p2, p1

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    long-to-float v8, v4

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 3141
    :cond_4
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3145
    .end local v4    # "prevTimeMillisWithSignNum":J
    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 3148
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3149
    .restart local v4    # "prevTimeMillisWithSignNum":J
    sub-int v7, p2, p1

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    long-to-float v8, v4

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_7

    .line 3151
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/16 v10, 0x320

    cmp-long v7, v8, v10

    if-gtz v7, :cond_6

    .line 3158
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 3164
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3172
    :cond_7
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3173
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    sub-int v8, p2, p1

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v8

    float-to-long v8, v8

    mul-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3180
    .end local v4    # "prevTimeMillisWithSignNum":J
    :cond_8
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onFilmstripCurrentItemChanged() - Unknown size, reset"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 3120
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private onFilmstripDraggingEnd()V
    .locals 6

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v0

    .line 3218
    .local v0, "hideTranslationX":F
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 3219
    .local v2, "x":F
    sub-float v3, v2, v0

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 3220
    .local v1, "visibleRatio":F
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onFilmstripDraggingEnd() - Visible ratio: "

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3221
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3238
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFilmstripDraggingEnd() - Invalid state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Illegal UI State"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3225
    :pswitch_1
    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3228
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3243
    :goto_0
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v3, v4, :cond_2

    .line 3244
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    .line 3214
    :goto_1
    return-void

    .line 3226
    :cond_0
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3232
    :pswitch_2
    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3233
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3235
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3246
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_1

    .line 3221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onFilmstripDraggingStart()V
    .locals 2

    .prologue
    .line 3254
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 3257
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 3260
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 3263
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3266
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3251
    return-void
.end method

.method private onFilmstripDraggingUpdate(FFF)V
    .locals 1
    .param p1, "newX"    # F
    .param p2, "newY"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 3273
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 3274
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    .line 3275
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 3271
    return-void
.end method

.method private onFilmstripOverscroll(Z)V
    .locals 3
    .param p1, "atFirstItem"    # Z

    .prologue
    .line 3282
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFilmstripOverscroll()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v0

    .line 3284
    .local v0, "isInversedRotation":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    .line 3285
    :cond_0
    if-nez p1, :cond_2

    .line 3284
    if-eqz v0, :cond_2

    .line 3286
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripOverScrollState()V

    .line 3280
    :cond_2
    return-void
.end method

.method private onFilmstripScrollStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3293
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    .line 3295
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3297
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3298
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3299
    :cond_0
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    goto :goto_0

    .line 3291
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    return-void
.end method

.method private onFilmstripScrollStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3307
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    .line 3309
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3311
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3312
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3313
    :cond_0
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    goto :goto_0

    .line 3305
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    return-void
.end method

.method private onFilmstripTouchReceived(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 3321
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v1, :cond_1

    .line 3323
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    if-eqz v1, :cond_0

    .line 3325
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3326
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 3330
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 3331
    .local v0, "galleryState":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3341
    return v3

    .line 3337
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    invoke-interface {v1, p1}, Lcom/oneplus/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 3338
    const/4 v1, 0x1

    return v1

    .line 3350
    .end local v0    # "galleryState":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    :cond_1
    return v3

    .line 3331
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onIndicatorClicked(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 3357
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 3358
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-static {v0}, Lcom/oneplus/gallery2/media/MediaUtils;->containsMultipleSubMedia(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/gallery2/media/PhotoMedia;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/PhotoMedia;->isBurstGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3359
    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openBurstViewer(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    .line 3355
    :cond_0
    return-void
.end method

.method private onMediaAdded(II)V
    .locals 18
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 3672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onMediaAdded() - ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3675
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    .line 3676
    .local v8, "count":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v9

    .line 3677
    .local v9, "endPosition":I
    const/16 v17, 0x0

    .line 3678
    .local v17, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v17    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;>;"
    .local v11, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3680
    .local v10, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 3681
    .local v15, "position":I
    if-lt v15, v9, :cond_0

    .line 3683
    if-nez v17, :cond_1

    .line 3684
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3685
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3688
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v15    # "position":I
    :cond_2
    if-eqz v17, :cond_3

    .line 3690
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_3

    .line 3692
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3693
    .restart local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v13, v2, v8

    .line 3694
    .local v13, "newPosition":I
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 3690
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 3699
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v12    # "i":I
    .end local v13    # "newPosition":I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateLatestMedia()V

    .line 3702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_4

    .line 3704
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v16

    .line 3705
    .local v16, "startPosition":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v9

    .line 3706
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    move/from16 v0, v16

    invoke-virtual {v2, v0, v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    .line 3716
    .end local v16    # "startPosition":I
    :cond_4
    :goto_2
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    if-eqz v2, :cond_7

    .line 3721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v15

    .line 3722
    .restart local v15    # "position":I
    if-ltz v15, :cond_7

    .line 3724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onMediaAdded() - Set current media to preferred content Uri: "

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 3726
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onCurrentMediaChanged()V

    .line 3727
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    if-eqz v2, :cond_5

    .line 3729
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    .line 3730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPhotoEditorRequesterReady(Landroid/net/Uri;)V

    .line 3732
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    .line 3733
    return-void

    .line 3710
    .end local v15    # "position":I
    .restart local v16    # "startPosition":I
    :cond_6
    sub-int v14, v16, v9

    .line 3711
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    sub-int v3, v9, v14

    sub-int v4, v16, v14

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemAdded(II)V

    goto :goto_2

    .line 3738
    .end local v14    # "offset":I
    .end local v16    # "startPosition":I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onCurrentMediaChanged()V

    .line 3741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v2, v3, :cond_8

    .line 3742
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V

    .line 3670
    :cond_8
    return-void
.end method

.method private onMediaMoved(IIII)V
    .locals 8
    .param p1, "oldStart"    # I
    .param p2, "oldEnd"    # I
    .param p3, "newStart"    # I
    .param p4, "newEnd"    # I

    .prologue
    const/4 v7, 0x0

    .line 3749
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    if-nez v4, :cond_1

    .line 3750
    :cond_0
    return-void

    .line 3751
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    .line 3752
    .local v3, "size":I
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    .line 3754
    .local v1, "oldCurrentIndex":I
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMediaMoved() - old s:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",new s:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    if-ltz p1, :cond_2

    if-lt p2, v3, :cond_3

    .line 3757
    :cond_2
    return-void

    .line 3756
    :cond_3
    if-ltz p3, :cond_2

    if-ge p4, v3, :cond_2

    .line 3760
    const/4 v2, 0x0

    .line 3761
    .local v2, "shouldMovedCurrentIndex":Z
    const/4 v0, -0x1

    .line 3762
    .local v0, "newCurrentIndex":I
    if-gt p1, v1, :cond_4

    if-gt v1, p2, :cond_4

    .line 3764
    const/4 v2, 0x1

    .line 3765
    sub-int v4, v1, p1

    add-int v0, p3, v4

    .line 3769
    :cond_4
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v4, :cond_5

    .line 3770
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 3773
    :cond_5
    if-eqz v2, :cond_6

    if-ltz v0, :cond_6

    if-ge v0, v3, :cond_6

    .line 3775
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMediaMoved() - current index move from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3776
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 3777
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onCurrentMediaChanged()V

    .line 3747
    :cond_6
    return-void
.end method

.method private onMediaRemoved(II)V
    .locals 11
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3785
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRemoved() - ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3788
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 3790
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v8

    .line 3791
    .local v8, "startPosition":I
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v7

    .line 3792
    .local v7, "endPosition":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3793
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0, v8, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemRemoved(II)V

    .line 3802
    .end local v7    # "endPosition":I
    .end local v8    # "startPosition":I
    :cond_0
    :goto_0
    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 3805
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateLatestMedia()V

    .line 3808
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3810
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRemoved() - media list is empty"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3811
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3812
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_2

    .line 3813
    :cond_1
    invoke-direct {p0, v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    .line 3814
    :cond_2
    return-void

    .line 3796
    .restart local v7    # "endPosition":I
    .restart local v8    # "startPosition":I
    :cond_3
    sub-int v0, v8, v7

    add-int/lit8 v6, v0, 0x1

    .line 3797
    .local v6, "count":I
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    add-int v1, v7, v6

    add-int v2, v8, v6

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemRemoved(II)V

    goto :goto_0

    .line 3816
    .end local v6    # "count":I
    .end local v7    # "endPosition":I
    .end local v8    # "startPosition":I
    :cond_4
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3819
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onCurrentMediaChanged()V

    .line 3822
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_5

    .line 3823
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V

    .line 3783
    :cond_5
    return-void
.end method

.method private onMediaRemoving(II)V
    .locals 17
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 3830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onMediaRemoving() - ["

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-static/range {v2 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3833
    move/from16 v12, p1

    .local v12, "i":I
    :goto_0
    move/from16 v0, p2

    if-gt v12, v0, :cond_3

    .line 3835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v12}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/media/Media;

    .line 3836
    .local v15, "removingMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3833
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3838
    :cond_1
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3839
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->clearMediaCaches(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1

    .line 3841
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PendingMediaToClearThumbCaches:Ljava/util/Set;

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3846
    .end local v15    # "removingMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    .line 3847
    .local v8, "count":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v9

    .line 3848
    .local v9, "endPosition":I
    const/16 v16, 0x0

    .line 3849
    .local v16, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v16    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;>;"
    .local v11, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3851
    .local v10, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 3852
    .local v14, "position":I
    if-le v14, v9, :cond_4

    .line 3854
    if-nez v16, :cond_5

    .line 3855
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3856
    :cond_5
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3859
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v14    # "position":I
    :cond_6
    if-eqz v16, :cond_7

    .line 3861
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    :goto_3
    if-ltz v12, :cond_7

    .line 3863
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3864
    .restart local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v13, v2, v8

    .line 3865
    .local v13, "newPosition":I
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 3861
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 3828
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v13    # "newPosition":I
    :cond_7
    return-void
.end method

.method private onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;IIZ)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fromCallback"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3875
    if-eqz p4, :cond_1

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 3876
    :cond_0
    return-void

    .line 3875
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v3, :cond_0

    .line 3877
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3878
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 3879
    return-void

    .line 3882
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "candItem$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3884
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v3, p1, :cond_3

    .line 3886
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    .line 3887
    if-lez p2, :cond_4

    if-gtz p3, :cond_5

    .line 3889
    :cond_4
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v3, v4, :cond_8

    .line 3891
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 3892
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 3900
    :cond_5
    :goto_0
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    invoke-virtual {v3, p2, p3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setOriginalImageSize(II)V

    .line 3901
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    if-ne v3, v4, :cond_6

    .line 3902
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    sget v4, Lcom/oneplus/gallery/CameraGalleryImpl;->EMPTY_THUMB_COLOR:I

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    .line 3903
    :cond_6
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v3

    invoke-direct {p0, p1, v3, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 3872
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_7
    return-void

    .line 3896
    .restart local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_8
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 3897
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p3

    goto :goto_0
.end method

.method private onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 17
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 3914
    sget v13, Lcom/oneplus/gallery/CameraGalleryImpl;->MEDIA_UPDATE_FLAG_MASK:I

    and-int v13, v13, p2

    if-nez v13, :cond_0

    .line 3915
    return-void

    .line 3916
    :cond_0
    sget v13, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    not-int v13, v13

    and-int v13, v13, p2

    if-eqz v13, :cond_1

    const/4 v12, 0x1

    .line 3919
    .local v12, "needThumbUpdate":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 3920
    .local v7, "index":I
    :goto_1
    if-gez v7, :cond_3

    .line 3921
    return-void

    .line 3916
    .end local v7    # "index":I
    .end local v12    # "needThumbUpdate":Z
    :cond_1
    const/4 v12, 0x0

    .restart local v12    # "needThumbUpdate":Z
    goto :goto_0

    .line 3919
    :cond_2
    const/4 v7, -0x1

    goto :goto_1

    .line 3923
    .restart local v7    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onMediaUpdated() - Media : "

    const-string/jumbo v15, ", flags : "

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v13, v14, v0, v15, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3926
    if-nez v7, :cond_4

    .line 3927
    sget-object v13, Lcom/oneplus/gallery/CameraGalleryImpl;->EVENT_LATEST_MEDIA_UPDATED:Lcom/oneplus/base/EventKey;

    new-instance v14, Lcom/oneplus/gallery2/media/MediaEventArgs;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v14, v0, v1}, Lcom/oneplus/gallery2/media/MediaEventArgs;-><init>(Lcom/oneplus/gallery2/media/Media;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/oneplus/gallery/CameraGalleryImpl;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 3930
    :cond_4
    const/4 v6, 0x0

    .line 3931
    .local v6, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "candItem$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3933
    .local v2, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v13, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p1

    if-ne v13, v0, :cond_5

    .line 3935
    move-object v6, v2

    .line 3936
    .local v6, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3942
    .end local v2    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v6    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_6
    if-eqz v12, :cond_e

    .line 3945
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->clearMediaCaches(Lcom/oneplus/gallery2/media/Media;)V

    .line 3948
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v13}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v4

    .line 3949
    .local v4, "currentIndex":I
    if-ne v4, v7, :cond_7

    .line 3951
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onMediaUpdated() - Update current item"

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 3956
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v8

    .line 3957
    .local v8, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-eqz v8, :cond_8

    .line 3959
    iget-object v13, v8, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v13}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v13

    iput-object v13, v8, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 3960
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3962
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v8

    .line 3963
    if-eqz v8, :cond_9

    .line 3965
    iget-object v13, v8, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v13}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v13

    iput-object v13, v8, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 3966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3970
    :cond_9
    if-nez v6, :cond_a

    .line 3972
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onMediaUpdated() - No item to update"

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3973
    return-void

    .line 3975
    :cond_a
    sget v13, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    and-int v13, v13, p2

    if-eqz v13, :cond_c

    .line 3977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/base/Handle;

    invoke-static {v13}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3978
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v10

    .line 3979
    .local v10, "mediaSize":Landroid/util/Size;
    if-eqz v10, :cond_b

    .line 3980
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v13

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;IIZ)V

    .line 3983
    :goto_2
    return-void

    .line 3982
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3985
    .end local v10    # "mediaSize":Landroid/util/Size;
    :cond_c
    iget-object v13, v6, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v9

    .line 3986
    .local v9, "isCurrentItem":Z
    iget-object v13, v6, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v13}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v13

    sget-object v14, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v13, v14, :cond_11

    const/4 v11, 0x1

    .line 3987
    .local v11, "needHighResImage":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "onMediaUpdated() - Update thumbnail "

    if-eqz v9, :cond_12

    const-string/jumbo v13, "(Current)"

    :goto_4
    invoke-static {v14, v15, v13}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3989
    iget-object v13, v6, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    sget-object v14, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    if-eq v13, v14, :cond_d

    .line 3990
    sget-object v13, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v13, v6, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 3992
    :cond_d
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 3995
    if-eqz v9, :cond_e

    .line 3997
    invoke-virtual {v6}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 3998
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4005
    .end local v4    # "currentIndex":I
    .end local v8    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v9    # "isCurrentItem":Z
    .end local v11    # "needHighResImage":Z
    :cond_e
    :goto_5
    sget v13, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    and-int v13, v13, p2

    if-eqz v13, :cond_f

    .line 4006
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 4005
    if-eqz v13, :cond_f

    .line 4007
    if-eqz v6, :cond_f

    .line 4009
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v6, v0, v13}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;Z)V

    .line 4010
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 4014
    :cond_f
    sget v13, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    and-int v13, v13, p2

    if-eqz v13, :cond_10

    .line 4016
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "onMediaUpdated() - Cover changed, update watermark processing indicator"

    invoke-static {v13, v14}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4017
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v5

    .line 4018
    .local v5, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    invoke-interface {v13, v5}, Lcom/oneplus/camera/PictureProcessService;->isWatermarkProcessing(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 4019
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->onWatermarkProcessing(Ljava/lang/String;)V

    .line 3911
    .end local v5    # "filePath":Ljava/lang/String;
    :cond_10
    :goto_6
    return-void

    .line 3986
    .restart local v4    # "currentIndex":I
    .restart local v8    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .restart local v9    # "isCurrentItem":Z
    :cond_11
    const/4 v11, 0x0

    .restart local v11    # "needHighResImage":Z
    goto :goto_3

    .line 3987
    :cond_12
    const-string/jumbo v13, ""

    goto :goto_4

    .line 3999
    :cond_13
    if-eqz v11, :cond_e

    .line 4000
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_5

    .line 4021
    .end local v4    # "currentIndex":I
    .end local v8    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v9    # "isCurrentItem":Z
    .end local v11    # "needHighResImage":Z
    .restart local v5    # "filePath":Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->onWatermarkProcessed(Ljava/lang/String;)V

    goto :goto_6
.end method

.method private onPhotoEditorMediaSaved(Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V
    .locals 11
    .param p1, "originalMedia"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "result"    # Landroid/content/Intent;
    .param p3, "activityFinished"    # Z

    .prologue
    .line 4030
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 4032
    :goto_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPhotoEditorMediaSaved() - Original media : "

    const-string/jumbo v8, ", new content URI : "

    invoke-static {v6, v7, p1, v8, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4035
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 4037
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4038
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    .line 4043
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 4044
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 4048
    if-nez p2, :cond_2

    .line 4051
    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Landroid/net/Uri;Ljava/lang/String;)V

    .line 4052
    return-void

    .line 4030
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "contentUri":Landroid/net/Uri;
    goto :goto_0

    .line 4056
    .end local v1    # "contentUri":Landroid/net/Uri;
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 4057
    const-string/jumbo v6, "thumbnail"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 4058
    .local v0, "compressedThumb":[B
    if-eqz v0, :cond_5

    .line 4062
    :try_start_0
    array-length v6, v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4063
    .local v5, "thumb":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_4

    .line 4065
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - Thumbnail image size : "

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4066
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4078
    .end local v5    # "thumb":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4081
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Landroid/net/Uri;Ljava/lang/String;)V

    .line 4082
    return-void

    .line 4069
    .restart local v5    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - Fail to decode thumbnail image"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4072
    .end local v5    # "thumb":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 4073
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - Fail to decode thumbnail image"

    invoke-static {v6, v7, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4077
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_5
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - No thumbnail image returned"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4086
    :cond_6
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setPageToContentUri(Landroid/net/Uri;)V

    .line 4089
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v7}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 4097
    :goto_2
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    .line 4099
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4100
    .local v4, "mediaId":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 4102
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - Get media for "

    const-string/jumbo v8, " immediately"

    invoke-static {v6, v7, v1, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4103
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    .line 4108
    .end local v4    # "mediaId":Ljava/lang/String;
    :cond_7
    if-nez p3, :cond_8

    .line 4110
    if-eqz v1, :cond_9

    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4111
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPhotoEditorRequesterReady(Landroid/net/Uri;)V

    .line 4027
    .end local v0    # "compressedThumb":[B
    :cond_8
    :goto_3
    return-void

    .line 4092
    .restart local v0    # "compressedThumb":[B
    :pswitch_0
    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_2

    .line 4114
    :cond_9
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPhotoEditorMediaSaved() - Waiting for modified media ready"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    goto :goto_3

    .line 4089
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private onPreviewCoverStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 3
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 4161
    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$UIState;->OPENED:Lcom/oneplus/camera/ui/PreviewCover$UIState;

    if-ne p2, v1, :cond_0

    .line 4163
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v1}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4159
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4167
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4168
    .local v0, "previewReceived":Z
    if-eqz v0, :cond_0

    .line 4169
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4174
    .end local v0    # "previewReceived":Z
    :pswitch_2
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v1, v2, :cond_2

    .line 4176
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    sget-object v2, Lcom/oneplus/camera/PictureProcessService;->PROP_IS_PROCESSING:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v1, v2}, Lcom/oneplus/camera/PictureProcessService;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4177
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->stopCameraPreview(Z)V

    goto :goto_0

    .line 4180
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onScaleImageBoundsChanged(Lcom/oneplus/widget/ScaleImageView;IIII)V
    .locals 5
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 4194
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4195
    .local v1, "position":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 4198
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-eqz v2, :cond_0

    .line 4200
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4207
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onScaleImageBoundsChanged() - State is not support to set over scale: "

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4208
    return-void

    .line 4213
    :cond_0
    :pswitch_1
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getFitToScreenShortSideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4214
    .local v0, "fitBounds":Landroid/graphics/Rect;
    iget-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    if-nez v2, :cond_3

    .line 4216
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v3, p4, p2

    if-gt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v3, p5, p3

    if-le v2, v3, :cond_2

    .line 4218
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onScaleImageBoundsChanged() - Over scaled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4219
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 4191
    .end local v0    # "fitBounds":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void

    .line 4224
    .restart local v0    # "fitBounds":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v3, p4, p2

    if-gt v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v3, p5, p3

    if-gt v2, v3, :cond_2

    .line 4226
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onScaleImageBoundsChanged() - Over scaled cancel"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0

    .line 4200
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 14
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    .line 4238
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4239
    return-void

    .line 4241
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4242
    :cond_1
    return-void

    .line 4244
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onScaleImageBoundsTypeChanged() - Old: "

    const-string/jumbo v4, ", new: "

    const-string/jumbo v6, ", scale image view: "

    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4245
    const/4 v8, 0x0

    .line 4246
    .local v8, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "item$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4248
    .local v9, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v1, v9, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-ne v1, p1, :cond_3

    .line 4250
    move-object v8, v9

    .line 4256
    .end local v8    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v9    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 4257
    .local v12, "position":I
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_7

    .line 4260
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4235
    :cond_5
    :goto_0
    return-void

    .line 4262
    :cond_6
    invoke-direct {p0, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v13

    .line 4263
    .local v13, "rotateMediaindex":I
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    .line 4265
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v13}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/Media;

    .line 4266
    .local v11, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V

    .line 4268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0

    .line 4272
    .end local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v13    # "rotateMediaindex":I
    :cond_7
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_a

    .line 4275
    if-eqz v8, :cond_9

    .line 4277
    invoke-virtual {v8}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4279
    invoke-direct {p0, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v13

    .line 4280
    .restart local v13    # "rotateMediaindex":I
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-ge v13, v1, :cond_8

    .line 4282
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v13}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/Media;

    .line 4285
    .restart local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v1, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 4286
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v11, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 4294
    .end local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v13    # "rotateMediaindex":I
    :cond_8
    :goto_1
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    if-eqz v1, :cond_5

    .line 4296
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 4300
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 4291
    :cond_9
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onScaleImageBoundsTypeChanged() - No gallery item"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4306
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0
.end method

.method private onScaleImageFling(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4315
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-eq v2, v3, :cond_0

    .line 4316
    return v4

    .line 4317
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v2, :cond_1

    .line 4318
    return v4

    .line 4321
    :cond_1
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x459c4000    # 5000.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 4322
    :cond_2
    return v4

    .line 4325
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ImageBoundsOnTouch:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    .line 4326
    return v4

    .line 4330
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 4331
    .local v0, "currentPosition":I
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_7

    .line 4333
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ImageBoundsOnTouch:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v3}, Lcom/oneplus/widget/ScaleImageView;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_6

    .line 4334
    :cond_5
    return v4

    .line 4335
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 4345
    .local v1, "positionTo":I
    :goto_0
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 4346
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4347
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v1, v5}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 4350
    return v5

    .line 4339
    .end local v1    # "positionTo":I
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ImageBoundsOnTouch:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_8

    if-gtz v0, :cond_9

    .line 4340
    :cond_8
    return v4

    .line 4341
    :cond_9
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "positionTo":I
    goto :goto_0
.end method

.method private onScaleImageGestureEnd(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-ne v0, p1, :cond_0

    .line 4358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4355
    :cond_0
    return-void
.end method

.method private onScaleImageGestureStart(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4366
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4368
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 4372
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-nez v0, :cond_1

    .line 4373
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4376
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ImageBoundsOnTouch:Landroid/graphics/Rect;

    .line 4363
    return-void
.end method

.method private onSecureModeChanged(Z)V
    .locals 3
    .param p1, "isSecureMode"    # Z

    .prologue
    .line 4383
    if-eqz p1, :cond_1

    .line 4386
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V

    .line 4389
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v0, :cond_0

    .line 4390
    return-void

    .line 4393
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4394
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4395
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4396
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4399
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SavedMediaUriInSecureMode:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4400
    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    instance-of v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;->getWrappedMediaList()Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    :goto_0
    invoke-direct {v1, p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/MediaList;)V

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 4401
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4402
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4403
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4404
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 4405
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 4408
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateLatestMedia()V

    .line 4381
    :cond_1
    return-void

    .line 4400
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    goto :goto_0
.end method

.method private onThumbnailImageDecoded(Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "isSmall"    # Z

    .prologue
    const/4 v6, 0x1

    .line 4423
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isRunningOrInitializing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4424
    return-void

    .line 4427
    :cond_0
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    :goto_0
    invoke-direct {p0, v4, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v2

    .line 4428
    .local v2, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v2, :cond_2

    .line 4432
    return-void

    .line 4427
    .end local v2    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    goto :goto_0

    .line 4434
    .restart local v2    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_2
    if-eqz p3, :cond_7

    .line 4435
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4438
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4441
    const/4 v3, 0x0

    .line 4442
    .local v3, "isItemFound":Z
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4444
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4447
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4450
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_4

    .line 4451
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4, p2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 4453
    :cond_4
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-gallery-CameraGalleryImpl$ImageDecodeStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    invoke-virtual {v5}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4487
    :cond_5
    :goto_2
    const/4 v3, 0x1

    .line 4489
    iget-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4491
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4420
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_6
    return-void

    .line 4437
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    .end local v3    # "isItemFound":Z
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4456
    .restart local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .restart local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    .restart local v3    # "isItemFound":Z
    :pswitch_0
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, p2, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 4457
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4458
    if-eqz p3, :cond_8

    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    :goto_3
    iput-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_3

    .line 4463
    :pswitch_1
    if-nez p3, :cond_5

    .line 4465
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, p2, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 4466
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_2

    .line 4477
    :pswitch_2
    if-eqz p3, :cond_9

    .line 4478
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 4481
    :cond_9
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, p2, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 4453
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onVideoDurationObtained(Lcom/oneplus/gallery2/media/VideoMedia;J)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/VideoMedia;
    .param p2, "duration"    # J

    .prologue
    .line 4505
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_VideoDurationObtainHandles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v3, :cond_1

    .line 4506
    :cond_0
    return-void

    .line 4507
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4508
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 4509
    return-void

    .line 4512
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "candItem$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4514
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v3, p1, :cond_3

    .line 4516
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getVideoDurationText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4502
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_4
    return-void
.end method

.method private onWatermarkProcessed(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 4526
    if-nez p1, :cond_0

    .line 4527
    return-void

    .line 4528
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4530
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4532
    invoke-virtual {v0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setWatermarkProcessingCircleVisibility(Z)V

    .line 4536
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_2
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 4524
    return-void
.end method

.method private onWatermarkProcessing(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4543
    if-nez p1, :cond_0

    .line 4544
    return-void

    .line 4545
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4547
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4549
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setWatermarkProcessingCircleVisibility(Z)V

    .line 4553
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 4541
    return-void
.end method

.method private openBurstViewer(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 4561
    if-gez p1, :cond_0

    .line 4562
    return-void

    .line 4563
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 4564
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isBurstGroup(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4566
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openBurstViewer() - Media "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a burst group"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    return-void

    .line 4571
    :cond_1
    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openBurstViewer(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    .line 4558
    return-void
.end method

.method private openBurstViewer(Lcom/oneplus/gallery2/media/GroupedMedia;)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/GroupedMedia;

    .prologue
    const/4 v5, 0x0

    .line 4575
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openBurstViewer() - Media : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4578
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-nez v2, :cond_1

    .line 4580
    const-class v2, Lcom/oneplus/gallery/BurstViewer;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/BurstViewer;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    .line 4581
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-nez v2, :cond_0

    .line 4583
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openBurstViewer() - No BurstViewer"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4584
    return-void

    .line 4586
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    sget-object v3, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$27;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$27;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/BurstViewer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 4602
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    invoke-virtual {v2, p1, v5}, Lcom/oneplus/gallery/BurstViewer;->open(Lcom/oneplus/gallery2/media/GroupedMedia;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4604
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 4605
    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 4606
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v2, v3, :cond_3

    .line 4607
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4573
    :cond_2
    :goto_0
    return-void

    .line 4608
    :cond_3
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v2, v3, :cond_2

    .line 4610
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4611
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4613
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_4

    .line 4614
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_1

    .line 4619
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openBurstViewer() - Fail to open burst viewer"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openFilmstrip()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4627
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4629
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstrip() - Media list is empty"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4630
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showNoMediaHint()V

    .line 4631
    return-void

    .line 4634
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstrip()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4637
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-eqz v0, :cond_2

    .line 4638
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanelDirectly()V

    .line 4641
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4642
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string/jumbo v1, "CameraGallery"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 4644
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4645
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->takeScreenShot()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    .line 4648
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4649
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2733

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4652
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4655
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v0, :cond_5

    .line 4656
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 4659
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 4662
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkActionEditSupported()V

    .line 4665
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkGalleryState()V

    .line 4668
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 4671
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 4674
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setRotationDelayTime(J)V

    .line 4624
    return-void
.end method

.method private playVideoPage(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 4711
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 4712
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4718
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playVideoPage() - Cannot play video page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4719
    return-void

    .line 4721
    :pswitch_0
    if-nez p1, :cond_0

    .line 4722
    return-void

    .line 4725
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPageDirectly(Lcom/oneplus/gallery2/media/Media;)V

    .line 4704
    return-void

    .line 4712
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private playVideoPageDirectly(Lcom/oneplus/gallery2/media/Media;)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    const/4 v5, 0x1

    .line 4733
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4735
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "playVideoPageDirectly() - Previous video is playing"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4736
    return-void

    .line 4740
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .line 4741
    .local v0, "activity":Lcom/oneplus/camera/OPCameraActivity;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4742
    .local v2, "playIntent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4743
    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4746
    const-string/jumbo v3, "FullSensorOrientation"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4749
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4752
    const/4 v1, 0x1

    .line 4753
    .local v1, "needPlayerList":Z
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4755
    const-string/jumbo v3, "com.oneplus.gallery"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4759
    const-string/jumbo v3, "IsSecureMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4760
    const-string/jumbo v3, "SECURE_MODE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4761
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$29;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$29;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    .line 4770
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 4772
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 4774
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4775
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$30;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$30;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    .line 4784
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4785
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 4791
    :cond_2
    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 4730
    return-void

    .line 4770
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 4788
    :cond_4
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    goto :goto_1
.end method

.method private prepareMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 4799
    if-nez p1, :cond_0

    .line 4800
    return-void

    .line 4803
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4805
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareMovieDrawable() - item is the same as movie drawable."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4806
    return-void

    .line 4810
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-eqz v2, :cond_2

    .line 4812
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4816
    :cond_2
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 4817
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 4819
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareMovieDrawable() - Uri: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4820
    new-instance v2, Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/oneplus/drawable/MovieDrawable;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    .line 4796
    :cond_3
    :goto_0
    return-void

    .line 4824
    :cond_4
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 4825
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 4827
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareMovieDrawable() - Path: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4828
    new-instance v2, Lcom/oneplus/drawable/MovieDrawable;

    invoke-direct {v2, v1}, Lcom/oneplus/drawable/MovieDrawable;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    goto :goto_0
.end method

.method private recycleGalleryItem(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 3
    .param p1, "galleryItem"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4837
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4838
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    .line 4839
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 4840
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->clearThumbnails()V

    .line 4841
    iput-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 4842
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4835
    return-void
.end method

.method private refreshThumbnailImage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4850
    if-nez p2, :cond_0

    .line 4851
    return-void

    .line 4853
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "refreshThumbnailImage() - Clear cache: "

    invoke-static {v6, v7, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4856
    const/4 v4, 0x0

    .line 4857
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    const/4 v3, 0x0

    .line 4858
    .local v3, "isCurrentItem":Z
    const/4 v5, 0x0

    .line 4859
    .local v5, "needHighResImage":Z
    const/4 v2, 0x0

    .line 4860
    .local v2, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    if-eqz v6, :cond_3

    .line 4862
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "candItem$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4864
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4866
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v3

    .line 4867
    .local v3, "isCurrentItem":Z
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v6

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v6, v7, :cond_7

    const/4 v5, 0x1

    .line 4868
    :goto_0
    move-object v2, v0

    .line 4869
    .local v2, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    sget-object v7, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    if-eq v6, v7, :cond_2

    .line 4870
    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 4871
    :cond_2
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 4872
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v3, :cond_3

    .line 4874
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 4875
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4883
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "candItem$iterator":Ljava/util/Iterator;
    .end local v2    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v3    # "isCurrentItem":Z
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    if-eqz p1, :cond_8

    .line 4885
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 4886
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 4887
    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 4897
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 4898
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 4901
    :cond_5
    if-eqz v3, :cond_6

    .line 4903
    invoke-virtual {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4904
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4847
    :cond_6
    :goto_2
    return-void

    .line 4867
    .restart local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .restart local v1    # "candItem$iterator":Ljava/util/Iterator;
    .local v2, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .restart local v3    # "isCurrentItem":Z
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 4889
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "candItem$iterator":Ljava/util/Iterator;
    .end local v2    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v3    # "isCurrentItem":Z
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_8
    if-eqz p2, :cond_4

    .line 4891
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 4892
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 4893
    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    goto :goto_1

    .line 4905
    :cond_9
    if-eqz v5, :cond_6

    .line 4906
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_2
.end method

.method private releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    const/4 v3, 0x0

    .line 4915
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_1

    .line 4916
    :cond_0
    return-void

    .line 4918
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4920
    invoke-virtual {p1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4921
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->stop()V

    .line 4922
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/MovieDrawable;->setVisible(ZZ)Z

    .line 4923
    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    .line 4912
    return-void
.end method

.method private resetFilmstripOverScrollState()V
    .locals 2

    .prologue
    .line 4930
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v0, :cond_0

    .line 4932
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetFilmstripOverScrollState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    .line 4934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 4935
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 4928
    :cond_0
    return-void
.end method

.method private resetFilmstripState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4943
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetFilmstripState()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4946
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4949
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 4950
    .local v1, "uiState":Lcom/oneplus/camera/ui/CameraGallery$UIState;
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 4951
    .local v0, "smoothly":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4952
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v4, v0}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 4957
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v2, :cond_1

    .line 4959
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4960
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setAlpha(F)V

    .line 4962
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateRotation(Lcom/oneplus/base/Rotation;)V

    .line 4963
    iput-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 4966
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V

    .line 4969
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateEmptyPageVisibility()V

    .line 4941
    return-void

    .line 4950
    .end local v0    # "smoothly":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "smoothly":Z
    goto :goto_0

    .line 4954
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    goto :goto_1
.end method

.method private restoreMediaInfoFromRecycler()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4977
    const/4 v3, 0x0

    .line 4978
    .local v3, "lastMedia":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "lastMedia":Lcom/oneplus/gallery2/media/Media;
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4980
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/base/Handle;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 4981
    .local v3, "lastMedia":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "restoreMediaInfoFromRecycler() - Restore: "

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4982
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4984
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/base/Handle;>;"
    .end local v3    # "lastMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 4987
    if-eqz v3, :cond_1

    .line 4989
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, v3}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4990
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 4992
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v4

    .line 4993
    .local v4, "uiPosition":I
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5, v4, v9}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 4994
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v5, v6, :cond_1

    .line 4995
    sget-object v5, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 5002
    .end local v2    # "index":I
    .end local v4    # "uiPosition":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x271a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 5003
    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 5004
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v6

    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v5}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    .line 4974
    :goto_2
    :pswitch_0
    return-void

    .line 4998
    .restart local v2    # "index":I
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreMediaInfoFromRecycler() - Cannot find restored media "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5008
    .end local v2    # "index":I
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_2

    .line 5004
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private revertPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 5019
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private searchMediaListIndex(Landroid/net/Uri;)I
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 5026
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->searchMediaListIndex(Landroid/net/Uri;II)I

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

    .line 5030
    if-nez p1, :cond_0

    .line 5031
    return v2

    .line 5032
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 5033
    :cond_1
    return v2

    .line 5034
    :cond_2
    if-ne p2, v2, :cond_3

    .line 5035
    const/4 p2, 0x0

    .line 5036
    :cond_3
    if-ne p3, v2, :cond_4

    .line 5037
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 5038
    :cond_4
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_6

    .line 5040
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5042
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v1

    return v1

    .line 5038
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5045
    :cond_6
    return v2
.end method

.method private setButtonsEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 5052
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(ZJ)V

    .line 5050
    return-void
.end method

.method private setButtonsEnabled(ZJ)V
    .locals 4
    .param p1, "isEnabled"    # Z
    .param p2, "timeout"    # J

    .prologue
    const/16 v3, 0x2729

    .line 5056
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setButtonEnabled() - Enabled: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5057
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    if-eqz v0, :cond_0

    .line 5059
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5060
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5061
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5062
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5063
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5064
    if-eqz p1, :cond_1

    .line 5065
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 5054
    :cond_0
    :goto_0
    return-void

    .line 5067
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v3, v0, p2, p3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    goto :goto_0
.end method

.method private setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 3
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "smoothly"    # Z

    .prologue
    .line 5075
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 5076
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 5078
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5079
    .local v0, "selectedPosition":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v0, p2}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 5073
    .end local v0    # "selectedPosition":I
    :cond_0
    return-void
.end method

.method private setFilmstripOverScrollState()V
    .locals 2

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFilmstripOverScrollState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    .line 5089
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 5085
    return-void
.end method

.method private setFilmstripScrollMode(I)V
    .locals 3
    .param p1, "scrollMode"    # I

    .prologue
    .line 5097
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    if-ne v0, p1, :cond_0

    .line 5098
    return-void

    .line 5101
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFilmstripScrollMode() - Scroll mode: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5102
    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    .line 5103
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 5094
    return-void
.end method

.method private setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z
    .locals 8
    .param p1, "state"    # Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5111
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5112
    .local v3, "oldState":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    if-ne v3, p1, :cond_0

    .line 5113
    return v5

    .line 5116
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5119
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 5147
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 5150
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateEmptyPageVisibility()V

    .line 5152
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v3, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 5123
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 5124
    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v3, v6, :cond_2

    .line 5125
    invoke-direct {p0, v5, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 5127
    :cond_2
    iget-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    invoke-direct {p0, v5, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 5132
    :pswitch_1
    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne p1, v6, :cond_3

    move v2, v4

    .line 5133
    .local v2, "isBrowseFast":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 5134
    invoke-direct {p0, v4, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 5137
    :goto_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 5138
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v5, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_3

    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    .end local v2    # "isBrowseFast":Z
    :cond_3
    move v2, v5

    .line 5132
    goto :goto_1

    .line 5136
    .restart local v2    # "isBrowseFast":Z
    :cond_4
    invoke-direct {p0, v5, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_2

    .line 5142
    .end local v2    # "isBrowseFast":Z
    :pswitch_2
    invoke-direct {p0, v4, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 5119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setIsMediaListEmptyProp(Ljava/lang/Boolean;)Z
    .locals 2
    .param p1, "isEmpty"    # Ljava/lang/Boolean;

    .prologue
    .line 5160
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5161
    const/4 v0, 0x0

    return v0

    .line 5164
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-eq v0, v1, :cond_2

    .line 5165
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 5175
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5166
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v0, v1, :cond_1

    .line 5171
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0
.end method

.method private setPageToContentUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 5182
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    .line 5183
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 5185
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 5186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    .line 5187
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    if-eqz v1, :cond_0

    .line 5189
    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    .line 5190
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPhotoEditorRequesterReady(Landroid/net/Uri;)V

    .line 5180
    :cond_0
    :goto_0
    return-void

    .line 5194
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setToolbarVisibility(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 5212
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    .line 5215
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 5209
    return-void
.end method

.method private setUndoBarVisibility(ZZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 5223
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsUndoBarVisible:Z

    .line 5226
    if-eqz p1, :cond_0

    .line 5228
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    .line 5229
    .local v6, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarPhotoCountView:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0x7f0d00bb

    invoke-virtual {v6, v2, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5233
    .end local v6    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_0
    const/4 v3, 0x0

    .line 5234
    .local v3, "animFlags":I
    if-eqz p2, :cond_1

    .line 5235
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    .line 5236
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const-wide/16 v4, 0x96

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5220
    return-void

    .line 5235
    :cond_2
    const/16 v3, 0x12

    goto :goto_0
.end method

.method private setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .prologue
    .line 5243
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 5244
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 5241
    :goto_0
    return-void

    .line 5245
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 5246
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarUpperViewVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5247
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 5248
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5249
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 5250
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5251
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainerBackground:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 5252
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainerBackgroundVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5253
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 5254
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5255
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 5256
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5257
    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 5258
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5260
    :cond_7
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setViewVisibilityState() - Unknow view"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 5267
    iget-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    if-eqz v3, :cond_0

    .line 5268
    return-void

    .line 5270
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setupUI()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5273
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 5274
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthPortrait:I

    .line 5275
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightPortrait:I

    .line 5276
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthLandscape:I

    .line 5277
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightLandscape:I

    .line 5278
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateMaxItemWidthHeight()V

    .line 5279
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 5280
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 5279
    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    .line 5281
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 5282
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 5281
    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    .line 5283
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterBarHeight:I

    .line 5286
    const v3, 0x7f0a002b

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    .line 5287
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 5288
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f0a0051

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    .line 5289
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 5290
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f0a0053

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageContainer:Landroid/view/View;

    .line 5291
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f0a0054

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageTouchReceiver:Landroid/view/View;

    .line 5292
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageTouchReceiver:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$31;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$31;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5301
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f0a0052

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/widget/FilmstripView;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    .line 5302
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 5303
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 5304
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$32;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$32;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 5327
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$33;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$33;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5335
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    .line 5336
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 5339
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    .line 5340
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0059

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    .line 5341
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a005b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainer:Landroid/view/View;

    .line 5342
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a005a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainerBackground:Landroid/view/View;

    .line 5343
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    .line 5344
    const v3, 0x7f020009

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5345
    .local v0, "backButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 5346
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5347
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$34;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$34;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5355
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    .line 5356
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$35;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$35;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5364
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    .line 5365
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0063

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    .line 5366
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$36;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$36;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5374
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a005c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    .line 5375
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a005d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    .line 5376
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$37;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$37;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5384
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a005e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    .line 5385
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    .line 5386
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$38;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$38;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5394
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0060

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    .line 5395
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0061

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    .line 5396
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$39;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$39;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5406
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    .line 5407
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f0a0065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5408
    .local v2, "undoBarTouchView":Landroid/view/View;
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$40;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$40;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5417
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const v4, 0x7f0a0066

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarPhotoCountView:Landroid/widget/TextView;

    .line 5418
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const v4, 0x7f0a0067

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarRestoreButton:Landroid/view/View;

    .line 5419
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarRestoreButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$41;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$41;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5430
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateNavigationBarContainerMarginTop()V

    .line 5431
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 5433
    iput-boolean v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    .line 5265
    return-void
.end method

.method private sharPageDirectly(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 5471
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 5472
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$42;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$42;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaUtils;->createSharingMediaIntent(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/IntentCallback;)V

    .line 5486
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 5468
    return-void
.end method

.method private sharePage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 5441
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 5442
    :cond_0
    return-void

    .line 5449
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5450
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5456
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sharePage() - Cannot share page in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5457
    return-void

    .line 5459
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5460
    return-void

    .line 5463
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->sharPageDirectly(I)V

    .line 5438
    return-void

    .line 5450
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 2
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 5494
    if-nez p1, :cond_0

    .line 5495
    return-void

    .line 5496
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_2

    .line 5497
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->prepareMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 5506
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_3

    .line 5507
    return-void

    .line 5500
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5502
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 5503
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->prepareMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    goto :goto_0

    .line 5508
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " showMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5509
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->start()V

    .line 5510
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->getThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/MovieDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 5511
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5491
    return-void
.end method

.method private showNoMediaHint()V
    .locals 4

    .prologue
    .line 5519
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5520
    return-void

    .line 5523
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v0, :cond_1

    .line 5524
    const-class v0, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 5525
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_2

    .line 5527
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0d009d

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    .line 5528
    const/16 v0, 0x2738

    const-wide/16 v2, 0xbb8

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 5516
    :cond_2
    return-void
.end method

.method private showPageDetails(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 5537
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 5538
    :cond_0
    return-void

    .line 5545
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5546
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5552
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPageDetails() - Cannot show page details in current state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5553
    return-void

    .line 5555
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5556
    return-void

    .line 5559
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetailsDirectly(I)V

    .line 5534
    return-void

    .line 5546
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showPageDetailsDirectly(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5567
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 5569
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .line 5570
    .local v0, "activity":Lcom/oneplus/camera/OPCameraActivity;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 5571
    .local v3, "intent":Landroid/content/Intent;
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5572
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5575
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 5587
    const-string/jumbo v6, "com.oneplus.gallery.action.SHOW_DETAILS_PORTRAIT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5592
    :goto_0
    const-string/jumbo v6, "FullSensorOrientation"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5595
    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 5596
    .local v4, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5598
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 5601
    sget-object v6, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v6}, Lcom/oneplus/camera/OPCameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5606
    const-string/jumbo v6, "IsSecureMode"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5607
    invoke-virtual {v0, v3}, Lcom/oneplus/camera/OPCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 5612
    :goto_1
    iput-boolean v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 5628
    :goto_2
    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 5564
    return-void

    .line 5578
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    :pswitch_0
    const-string/jumbo v6, "com.oneplus.gallery.action.SHOW_DETAILS_LANDSCAPE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5581
    :pswitch_1
    const-string/jumbo v6, "com.oneplus.gallery.action.SHOW_DETAILS_INVERSE_LANDSCAPE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5584
    :pswitch_2
    const-string/jumbo v6, "com.oneplus.gallery.action.SHOW_DETAILS_INVERSE_PORTRAIT"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 5610
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    goto :goto_1

    .line 5616
    :cond_1
    new-instance v1, Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {v1, v7, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/gallery2/media/Media;)V

    .line 5617
    .local v1, "dialog":Lcom/oneplus/gallery/MediaDetailsDialog;
    new-instance v6, Lcom/oneplus/gallery/CameraGalleryImpl$43;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$43;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->show(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    .line 5575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private startCameraPreview()Z
    .locals 3

    .prologue
    .line 5635
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 5636
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-OperationStateSwitchesValues()[I

    move-result-object v2

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA_PREVIEW_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/OperationState;

    invoke-virtual {v1}, Lcom/oneplus/camera/OperationState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 5642
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 5643
    const/4 v1, 0x1

    return v1

    .line 5640
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 5636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateEmptyPageVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5652
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 5649
    :cond_0
    :goto_0
    return-void

    .line 5658
    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    if-eqz v0, :cond_0

    .line 5660
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5661
    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    goto :goto_0

    .line 5666
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    if-nez v0, :cond_0

    .line 5668
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    goto :goto_0

    .line 5652
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateFilmstripScrollMode()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 5680
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v1, :cond_0

    .line 5682
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5683
    return-void

    .line 5686
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5688
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5677
    :goto_0
    return-void

    .line 5693
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5694
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 5698
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5699
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 5703
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5704
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 5688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateFilmstripViewTranslation(Z)V
    .locals 11
    .param p1, "animation"    # Z

    .prologue
    const/high16 v10, 0x43480000    # 200.0f

    .line 5714
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v1

    .line 5715
    .local v1, "hideTranslationX":F
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v7

    .line 5716
    .local v7, "x":F
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 5717
    .local v0, "alpha":F
    sub-float v8, v7, v1

    div-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 5720
    .local v6, "visibleRatio":F
    const-wide/16 v2, 0x0

    .line 5721
    .local v2, "duration":J
    move v5, v7

    .line 5722
    .local v5, "newX":F
    move v4, v0

    .line 5723
    .local v4, "newAlpha":F
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v9

    sget-object v8, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v8}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 5744
    :goto_0
    if-eqz p1, :cond_0

    const-wide/16 v8, 0x64

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 5745
    const-wide/16 v2, 0x64

    .line 5748
    :cond_0
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5749
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5750
    if-eqz p1, :cond_1

    .line 5752
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5753
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5711
    :goto_1
    return-void

    .line 5727
    :pswitch_0
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    mul-float/2addr v8, v10

    float-to-long v2, v8

    .line 5728
    const/4 v5, 0x0

    .line 5729
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5730
    goto :goto_0

    .line 5733
    :pswitch_1
    mul-float v8, v10, v6

    float-to-long v2, v8

    .line 5734
    move v5, v1

    .line 5735
    const/4 v4, 0x0

    .line 5736
    goto :goto_0

    .line 5738
    :pswitch_2
    return-void

    .line 5757
    :cond_1
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 5758
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setAlpha(F)V

    .line 5759
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v8}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 5723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateFooterContainerMarginBottom()V
    .locals 8

    .prologue
    .line 5767
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    .line 5768
    .local v4, "newRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 5769
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const/4 v3, 0x0

    .line 5770
    .local v3, "marginBottom":I
    sget-object v6, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v4, v6, :cond_1

    .line 5771
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 5774
    :goto_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 5783
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5784
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 5787
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 5788
    .local v1, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    iget-boolean v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    invoke-static {v1, v6, v7}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_2

    .line 5773
    .end local v1    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 5778
    :pswitch_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090042

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 5765
    .restart local v2    # "item$iterator":Ljava/util/Iterator;
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 5774
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLatestMedia()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5794
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5796
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateLatestMedia() - There is no media."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5797
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_LATEST_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5792
    :goto_0
    return-void

    .line 5801
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLatestMedia() - Latest media : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v3}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5802
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_LATEST_MEDIA:Lcom/oneplus/base/PropertyKey;

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0, v3}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 5805
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method private updateMaxItemWidthHeight()V
    .locals 1

    .prologue
    .line 5813
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5815
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthLandscape:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I

    .line 5816
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightLandscape:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I

    .line 5825
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    .line 5810
    return-void

    .line 5820
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthPortrait:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I

    .line 5821
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightPortrait:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I

    goto :goto_0
.end method

.method private updateNavigationBarContainerMarginTop()V
    .locals 6

    .prologue
    .line 5832
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-nez v4, :cond_0

    .line 5833
    return-void

    .line 5834
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 5835
    .local v2, "newRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 5836
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const/4 v1, 0x0

    .line 5837
    .local v1, "marginTop":I
    sget-object v4, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v2, v4, :cond_2

    .line 5838
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5841
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5842
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 5830
    return-void

    .line 5840
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private updateNavigationUpperViewVisibility()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 5848
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_0

    .line 5850
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5851
    return-void

    .line 5854
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5861
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5846
    :goto_0
    return-void

    .line 5858
    :pswitch_1
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    iget-boolean v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    move-object v6, p0

    move v9, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    goto :goto_0

    .line 5854
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRotation(Lcom/oneplus/base/Rotation;)V
    .locals 5
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5871
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    .line 5872
    .local v1, "prevRotation":Lcom/oneplus/base/Rotation;
    :goto_0
    if-ne v1, p1, :cond_1

    .line 5873
    return-void

    .line 5871
    .end local v1    # "prevRotation":Lcom/oneplus/base/Rotation;
    :cond_0
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 5876
    .restart local v1    # "prevRotation":Lcom/oneplus/base/Rotation;
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    .line 5877
    iput-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 5880
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 5883
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v2

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 5885
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 5886
    .local v0, "newPosition":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v0, v4}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 5889
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 5890
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    .line 5893
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 5897
    .end local v0    # "newPosition":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v2, :cond_4

    .line 5898
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 5901
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateNavigationBarContainerMarginTop()V

    .line 5904
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateNavigationUpperViewVisibility()V

    .line 5907
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 5910
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 5919
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 5923
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateMaxItemWidthHeight()V

    .line 5926
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v3

    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v2}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 5934
    :goto_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-eqz v2, :cond_5

    .line 5935
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 5938
    :cond_5
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    .line 5868
    return-void

    .line 5916
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    goto :goto_1

    .line 5929
    :pswitch_1
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_2

    .line 5910
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5926
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method

.method private updateToolbarVisibility(Z)V
    .locals 36
    .param p1, "animation"    # Z

    .prologue
    .line 5947
    const/16 v29, 0x0

    .line 5948
    .local v29, "isWatermarkProcessing":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5963
    :cond_0
    :goto_0
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5964
    .local v35, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-object/from16 v0, v35

    if-ne v0, v2, :cond_1

    .line 5965
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    .line 5966
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canShareButtonVisible()Z

    move-result v8

    .line 5967
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canEditButtonVisible()Z

    move-result v12

    .line 5968
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canDetailsButtonVisible()Z

    move-result v20

    .line 5969
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canDeleteButtonVisible()Z

    move-result v24

    .line 5970
    :goto_4
    if-eqz v8, :cond_2

    if-eqz v29, :cond_c

    :cond_2
    const/16 v34, 0x0

    .line 5971
    .local v34, "shareEnabled":Z
    :goto_5
    if-eqz v12, :cond_3

    if-eqz v29, :cond_d

    :cond_3
    const/16 v28, 0x0

    .line 5972
    .local v28, "editEnabled":Z
    :goto_6
    const/4 v5, 0x0

    .line 5973
    .local v5, "navFlags":I
    const/4 v9, 0x0

    .line 5974
    .local v9, "shareFlags":I
    const/4 v13, 0x0

    .line 5975
    .local v13, "editFlags":I
    const/16 v21, 0x0

    .line 5976
    .local v21, "detailsFlags":I
    const/16 v25, 0x0

    .line 5977
    .local v25, "deleteFlags":I
    const/16 v17, 0x0

    .line 5978
    .local v17, "footerFlags":I
    if-eqz p1, :cond_4

    .line 5980
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {v35 .. v35}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5991
    :goto_7
    if-eqz v8, :cond_10

    const/4 v9, 0x5

    .line 5992
    :goto_8
    if-eqz v12, :cond_11

    const/4 v13, 0x5

    .line 5993
    :goto_9
    if-eqz v20, :cond_12

    const/16 v21, 0x5

    .line 5994
    :goto_a
    if-eqz v24, :cond_13

    const/16 v25, 0x5

    .line 5995
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_14

    const/16 v17, 0x5

    .line 5999
    :cond_4
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    const-wide/16 v6, 0x96

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 6000
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    const-wide/16 v10, 0x96

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 6001
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    const-wide/16 v14, 0x96

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 6002
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainerBackground:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    move/from16 v16, v0

    const-wide/16 v18, 0x96

    move-object/from16 v14, p0

    invoke-direct/range {v14 .. v19}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 6003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const-wide/16 v22, 0x96

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 6004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    move-object/from16 v23, v0

    const-wide/16 v26, 0x96

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v27}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 6005
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 6012
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    const/4 v4, 0x0

    const-wide/16 v6, 0x96

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 6018
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 6020
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 6021
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    if-eqz v34, :cond_15

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_e
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6023
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 6025
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 6026
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    if-eqz v28, :cond_16

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_f
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 6030
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "item$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 6031
    .local v30, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    move-object/from16 v0, v30

    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_10

    .line 5950
    .end local v5    # "navFlags":I
    .end local v9    # "shareFlags":I
    .end local v13    # "editFlags":I
    .end local v17    # "footerFlags":I
    .end local v21    # "detailsFlags":I
    .end local v25    # "deleteFlags":I
    .end local v28    # "editEnabled":Z
    .end local v30    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v31    # "item$iterator":Ljava/util/Iterator;
    .end local v34    # "shareEnabled":Z
    .end local v35    # "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v33

    .line 5951
    .local v33, "position":I
    if-ltz v33, :cond_0

    .line 5953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move/from16 v0, v33

    invoke-interface {v2, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/oneplus/gallery2/media/Media;

    .line 5954
    .local v32, "media":Lcom/oneplus/gallery2/media/Media;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-eqz v2, :cond_0

    .line 5955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    invoke-interface/range {v32 .. v32}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oneplus/camera/PictureProcessService;->isWatermarkProcessing(Ljava/lang/String;)Z

    move-result v2

    .line 5954
    if-eqz v2, :cond_0

    .line 5957
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 5966
    .end local v32    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v33    # "position":I
    .restart local v35    # "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    :cond_8
    const/4 v8, 0x0

    .local v8, "shareVisible":Z
    goto/16 :goto_1

    .line 5967
    .end local v8    # "shareVisible":Z
    :cond_9
    const/4 v12, 0x0

    .local v12, "editVisible":Z
    goto/16 :goto_2

    .line 5968
    .end local v12    # "editVisible":Z
    :cond_a
    const/16 v20, 0x0

    .local v20, "detailsVisible":Z
    goto/16 :goto_3

    .line 5969
    .end local v20    # "detailsVisible":Z
    :cond_b
    const/16 v24, 0x0

    .local v24, "deleteVisible":Z
    goto/16 :goto_4

    .line 5970
    .end local v24    # "deleteVisible":Z
    :cond_c
    const/16 v34, 0x1

    .restart local v34    # "shareEnabled":Z
    goto/16 :goto_5

    .line 5971
    :cond_d
    const/16 v28, 0x1

    .restart local v28    # "editEnabled":Z
    goto/16 :goto_6

    .line 5984
    .restart local v5    # "navFlags":I
    .restart local v9    # "shareFlags":I
    .restart local v13    # "editFlags":I
    .restart local v17    # "footerFlags":I
    .restart local v21    # "detailsFlags":I
    .restart local v25    # "deleteFlags":I
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_e

    const/16 v5, 0x9

    goto/16 :goto_7

    :cond_e
    const/16 v5, 0x22

    goto/16 :goto_7

    .line 5988
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_f

    const/4 v5, 0x1

    goto/16 :goto_7

    :cond_f
    const/4 v5, 0x2

    goto/16 :goto_7

    .line 5991
    :cond_10
    const/16 v9, 0x12

    goto/16 :goto_8

    .line 5992
    :cond_11
    const/16 v13, 0x12

    goto/16 :goto_9

    .line 5993
    :cond_12
    const/16 v21, 0x12

    goto/16 :goto_a

    .line 5994
    :cond_13
    const/16 v25, 0x12

    goto/16 :goto_b

    .line 5995
    :cond_14
    const/16 v17, 0x12

    goto/16 :goto_c

    .line 6009
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigatonBarUpperView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    const-wide/16 v6, 0x96

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    goto/16 :goto_d

    .line 6021
    :cond_15
    const v2, 0x3e99999a    # 0.3f

    goto/16 :goto_e

    .line 6026
    :cond_16
    const v2, 0x3e99999a    # 0.3f

    goto/16 :goto_f

    .line 5944
    .restart local v31    # "item$iterator":Ljava/util/Iterator;
    :cond_17
    return-void

    .line 5980
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 6005
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateViewVisibility(Landroid/view/View;ZIJ)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "visible"    # Z
    .param p3, "animFlags"    # I
    .param p4, "duration"    # J

    .prologue
    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v6, -0x3db80000    # -50.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 6039
    if-nez p1, :cond_0

    .line 6040
    return-void

    .line 6041
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v0

    .line 6047
    .local v0, "visibilityState":Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    if-eqz p2, :cond_8

    .line 6049
    if-eqz p3, :cond_7

    .line 6051
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 6079
    :goto_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 6080
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 6081
    :cond_1
    and-int/lit8 v1, p3, 0xc

    if-eqz v1, :cond_2

    .line 6082
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 6083
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_3

    .line 6084
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 6085
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$44;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$44;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6095
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    .line 6036
    :goto_1
    return-void

    .line 6055
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6056
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_4

    .line 6057
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 6060
    :goto_2
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_5

    .line 6061
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 6059
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 6062
    :cond_5
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_6

    .line 6063
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 6065
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 6070
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 6075
    :pswitch_2
    return-void

    .line 6100
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6101
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 6102
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 6105
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto :goto_1

    .line 6110
    :cond_8
    if-eqz p3, :cond_d

    .line 6112
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 6131
    :goto_3
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_9

    .line 6132
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 6133
    :cond_9
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_c

    .line 6134
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 6137
    :cond_a
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_b

    .line 6138
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 6139
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$45;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$45;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 6150
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto/16 :goto_1

    .line 6116
    :pswitch_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 6117
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 6122
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_3

    .line 6127
    :pswitch_5
    return-void

    .line 6135
    :cond_c
    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_a

    .line 6136
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 6155
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6158
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto/16 :goto_1

    .line 6051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 6112
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private validatePosition(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 6167
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 6168
    const/4 v0, 0x1

    return v0

    .line 6169
    :cond_0
    return v1
.end method


# virtual methods
.method public addTempThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->verifyAccess()V

    .line 1841
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    return-void

    .line 1845
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v0, v1, :cond_1

    .line 1846
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1849
    :cond_1
    if-nez p1, :cond_2

    .line 1851
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addTempThumbnailImage() - No content URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    return-void

    .line 1854
    :cond_2
    if-nez p2, :cond_3

    .line 1855
    return-void

    .line 1858
    :cond_3
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1859
    return-void

    .line 1860
    :cond_4
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1861
    return-void

    .line 1864
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addTempThumbnailImage() - Add temp thumbnail image for "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1865
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1837
    return-void
.end method

.method public closeFilmstripDirectly()V
    .locals 2

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeFilmstripDirectly()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 2212
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2214
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$15;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$15;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeFilmstripDirectly() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    :cond_0
    :goto_0
    return-void

    .line 2227
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0
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
    .line 2683
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    return-object v0

    .line 2685
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 2817
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2846
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 2815
    :goto_0
    return-void

    .line 2820
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0

    .line 2824
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    goto :goto_0

    .line 2828
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImages()V

    goto :goto_0

    .line 2832
    :sswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2836
    :sswitch_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    goto :goto_0

    .line 2840
    :sswitch_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2841
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    goto :goto_0

    .line 2843
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showNoMediaHint()V

    goto :goto_0

    .line 2817
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_2
        0x271a -> :sswitch_1
        0x2724 -> :sswitch_0
        0x2729 -> :sswitch_4
        0x2733 -> :sswitch_5
        0x2738 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDeinitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3075
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    .line 3076
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 3079
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v2, :cond_1

    .line 3080
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaSet;->release()V

    .line 3083
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v2, :cond_2

    .line 3084
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NewMediaIntentReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3087
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3090
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    .line 3093
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V

    .line 3096
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 3098
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3099
    iput-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    .line 3103
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3104
    .local v0, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->recycleGalleryItem(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    goto :goto_0

    .line 3105
    .end local v0    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3108
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 3072
    return-void
.end method

.method protected onInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3368
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 3369
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3372
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v2, v3}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 3373
    const-class v2, Lcom/oneplus/camera/PictureProcessService;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$18;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$18;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 3410
    const-class v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 3413
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    .line 3416
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3417
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ProcessingBarMarginTop:I

    .line 3418
    const v2, 0x7f090037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingHorz:I

    .line 3419
    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingVert:I

    .line 3422
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v2, :cond_9

    .line 3424
    new-instance v2, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v2, v3, v4}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 3425
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaSet;->PROP_CONTAINS_HIDDEN_MEDIA:Lcom/oneplus/base/PropertyKey;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaSet;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3426
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3427
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v2}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3428
    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/MediaList;)V

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3434
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3437
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v2, :cond_1

    .line 3438
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    .line 3441
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setupUI()V

    .line 3444
    const-class v2, Lcom/oneplus/camera/ui/GestureDetector;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/GestureDetector;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    .line 3445
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v2, :cond_2

    .line 3446
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v2, v3, v5}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 3449
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3450
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 3451
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3452
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 3453
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3454
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 3457
    :cond_5
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$19;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$19;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3474
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$20;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$20;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3490
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$21;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$21;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3506
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$22;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$22;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3592
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$23;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$23;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3605
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$24;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$24;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3613
    sget-object v2, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$25;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$25;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3623
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v2, :cond_6

    .line 3624
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NewMediaIntentReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3627
    :cond_6
    const-class v2, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 3628
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v2, :cond_7

    .line 3629
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PREVIEW_COVER_STYLE:Lcom/oneplus/camera/ui/PreviewCover$Style;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverStateChangedListener:Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/camera/ui/PreviewCover;->addOnStateChangedListener(Lcom/oneplus/camera/ui/PreviewCover$Style;Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;)V

    .line 3632
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_8

    .line 3634
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3635
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3636
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3637
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3365
    :cond_8
    return-void

    .line 3431
    :cond_9
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "No MediaStoreMediaSource"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onKeyDown(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    .line 3645
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 3646
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 3648
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public onKeyUp(ILcom/oneplus/camera/ui/KeyEventArgs;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Lcom/oneplus/camera/ui/KeyEventArgs;

    .prologue
    .line 3655
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3657
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_2

    .line 3659
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->navigateBack()V

    .line 3660
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 3663
    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 3664
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 3665
    :cond_2
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 4127
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 4130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 4131
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v0, :cond_1

    .line 4133
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateRotation(Lcom/oneplus/base/Rotation;)V

    .line 4134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 4124
    :goto_0
    return-void

    .line 4138
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$26;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$26;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Rotation;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public openFilmstripDirectly()V
    .locals 2

    .prologue
    .line 4681
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstripDirectly()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4683
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 4684
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4686
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$28;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$28;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4695
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstripDirectly() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    :cond_0
    :goto_0
    return-void

    .line 4699
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    goto :goto_0
.end method

.method public setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
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
    .line 5202
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 5203
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setIsMediaListEmptyProp(Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    .line 5204
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
