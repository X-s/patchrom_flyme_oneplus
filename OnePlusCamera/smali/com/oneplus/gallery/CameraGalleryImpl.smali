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

.field private m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

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

.field private m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

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

.field private m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

.field private m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

.field private m_PlayVideoHandle:Lcom/oneplus/base/Handle;

.field private m_PreferredContentUri:Landroid/net/Uri;

.field private m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

.field private m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

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

.method static synthetic -get10(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get11(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    return v0
.end method

.method static synthetic -get12(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/FlashController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashController:Lcom/oneplus/camera/FlashController;

    return-object v0
.end method

.method static synthetic -get13(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get14(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterBarHeight:I

    return v0
.end method

.method static synthetic -get15(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get16(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/GestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    return-object v0
.end method

.method static synthetic -get17(Lcom/oneplus/gallery/CameraGalleryImpl;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_InitTouchPagerX:F

    return v0
.end method

.method static synthetic -get18(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    return v0
.end method

.method static synthetic -get19(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    return v0
.end method

.method static synthetic -get2(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    return v0
.end method

.method static synthetic -get21(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    return v0
.end method

.method static synthetic -get22(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingHorz:I

    return v0
.end method

.method static synthetic -get23(Lcom/oneplus/gallery/CameraGalleryImpl;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingVert:I

    return v0
.end method

.method static synthetic -get24(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get25(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object v0
.end method

.method static synthetic -get27(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -get28(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -get29(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    return-object v0
.end method

.method static synthetic -get30(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/Media$SizeCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    return-object v0
.end method

.method static synthetic -get31(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get32(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaStoreMediaSource;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    return-object v0
.end method

.method static synthetic -get33(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get34(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get35(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get36(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/PictureProcessService;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    return-object v0
.end method

.method static synthetic -get37(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get38(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/PreviewCover;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    return-object v0
.end method

.method static synthetic -get39(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get4(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/BurstViewer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    return-object v0
.end method

.method static synthetic -get40(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic -get41(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SavedMediaUriInSecureMode:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get42(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get43(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic -get44(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/camera/ui/CameraGallery$UIState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    return-object v0
.end method

.method static synthetic -get45(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get46(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0
.end method

.method static synthetic -get47(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_VideoDurationObtainHandles:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DurationCallback:Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get8(Lcom/oneplus/gallery/CameraGalleryImpl;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get9(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/widget/FilmstripView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

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

.method static synthetic -set10(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic -set11(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/PictureProcessService;)Lcom/oneplus/camera/PictureProcessService;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    return-object p1
.end method

.method static synthetic -set12(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCoverHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set13(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set14(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
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

.method static synthetic -set7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/MediaList;)Lcom/oneplus/gallery2/media/MediaList;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    return-object p1
.end method

.method static synthetic -set8(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    return-object p1
.end method

.method static synthetic -set9(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

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

.method static synthetic -wrap13(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap14(Lcom/oneplus/gallery/CameraGalleryImpl;)F
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/oneplus/gallery/CameraGalleryImpl;I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/oneplus/gallery/CameraGalleryImpl;J)Ljava/lang/String;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->getVideoDurationText(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "cancelHighResImage"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages(Z)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkActionEditSupported()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/gallery/CameraGalleryImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkGalleryState()V

    return-void
.end method

.method static synthetic -wrap21(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;ZZ)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z
    .param p3, "smallOnly"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImages()V

    return-void
.end method

.method static synthetic -wrap24(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    return-void
.end method

.method static synthetic -wrap25(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->editPage(I)V

    return-void
.end method

.method static synthetic -wrap26(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->launchGallery()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->navigateBack()V

    return-void
.end method

.method static synthetic -wrap28(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripCurrentItemChanged(II)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingEnd()V

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

.method static synthetic -wrap30(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingStart()V

    return-void
.end method

.method static synthetic -wrap31(Lcom/oneplus/gallery/CameraGalleryImpl;FFF)V
    .locals 0
    .param p1, "newX"    # F
    .param p2, "newY"    # F
    .param p3, "alpha"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripDraggingUpdate(FFF)V

    return-void
.end method

.method static synthetic -wrap32(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "atFirstItem"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripOverscroll(Z)V

    return-void
.end method

.method static synthetic -wrap33(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStarted()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onFilmstripScrollStopped()V

    return-void
.end method

.method static synthetic -wrap35(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onIndicatorClicked(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    return-void
.end method

.method static synthetic -wrap36(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaAdded(II)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/oneplus/gallery/CameraGalleryImpl;IIII)V
    .locals 0
    .param p1, "oldStart"    # I
    .param p2, "oldEnd"    # I
    .param p3, "newStart"    # I
    .param p4, "newEnd"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaMoved(IIII)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaRemoved(II)V

    return-void
.end method

.method static synthetic -wrap39(Lcom/oneplus/gallery/CameraGalleryImpl;II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaRemoving(II)V

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

.method static synthetic -wrap40(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;II)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 0
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onOfflinePictureProcessed(Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method static synthetic -wrap43(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "originalMedia"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "result"    # Landroid/content/Intent;
    .param p3, "activityFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onPhotoEditorMediaSaved(Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;IIII)V
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

.method static synthetic -wrap45(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "oldType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;
    .param p3, "newType"    # Lcom/oneplus/widget/ScaleImageView$BoundsType;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageBoundsTypeChanged(Lcom/oneplus/widget/ScaleImageView;Lcom/oneplus/widget/ScaleImageView$BoundsType;Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageGestureEnd(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->onScaleImageGestureStart(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V

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

.method static synthetic -wrap50(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    return-void
.end method

.method static synthetic -wrap51(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPage(Lcom/oneplus/gallery2/media/Media;)V

    return-void
.end method

.method static synthetic -wrap52(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 0
    .param p1, "galleryItem"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->recycleGalleryItem(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    return-void
.end method

.method static synthetic -wrap53(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V

    return-void
.end method

.method static synthetic -wrap55(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripState()V

    return-void
.end method

.method static synthetic -wrap56(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->restoreMediaInfoFromRecycler()V

    return-void
.end method

.method static synthetic -wrap57(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap58(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/widget/ScaleImageView;Z)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "smoothly"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripCurrentItem(Lcom/oneplus/widget/ScaleImageView;Z)V

    return-void
.end method

.method static synthetic -wrap59(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "scrollMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

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

.method static synthetic -wrap60(Lcom/oneplus/gallery/CameraGalleryImpl;ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    return-void
.end method

.method static synthetic -wrap61(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    return-void
.end method

.method static synthetic -wrap62(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->sharePage(I)V

    return-void
.end method

.method static synthetic -wrap63(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showNoMediaHint()V

    return-void
.end method

.method static synthetic -wrap64(Lcom/oneplus/gallery/CameraGalleryImpl;I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetails(I)V

    return-void
.end method

.method static synthetic -wrap65(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    return-void
.end method

.method static synthetic -wrap66(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Rotation;)V
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

    .line 131
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/oneplus/gallery/CameraGalleryImpl;->EMPTY_THUMB_COLOR:I

    .line 177
    new-instance v0, Lcom/oneplus/media/BitmapPool;

    const-string/jumbo v1, "LargeVideoDecoder"

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const-wide/32 v2, 0x1000000

    const-wide/32 v4, 0x400000

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/media/BitmapPool;-><init>(Ljava/lang/String;JJLandroid/graphics/Bitmap$Config;II)V

    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    .line 1776
    sget v0, Lcom/oneplus/gallery2/media/Media;->FLAG_LAST_MODIFIED_TIME_CHANGED:I

    .line 1777
    sget v1, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    .line 1776
    or-int/2addr v0, v1

    .line 1778
    sget v1, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_COVER_CHANGED:I

    .line 1776
    or-int/2addr v0, v1

    .line 1779
    sget v1, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    .line 1776
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

    .line 1787
    const-string/jumbo v0, "Camera Gallery Impl"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/UIComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V

    .line 190
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 194
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 197
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 210
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    .line 213
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 224
    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    .line 253
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 262
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    .line 264
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SavedMediaUriInSecureMode:Ljava/util/Set;

    .line 267
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    .line 275
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 279
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_VideoDurationObtainHandles:Ljava/util/Map;

    .line 284
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$1;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DurationCallback:Lcom/oneplus/gallery2/media/VideoMedia$DurationCallback;

    .line 292
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$2;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 300
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$3;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$3;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    .line 307
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$4;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 317
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$5;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$5;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    .line 325
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$6;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$6;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    .line 333
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$7;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$7;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    .line 341
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$8;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$8;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NewMediaIntentReceivedHandler:Lcom/oneplus/base/EventHandler;

    .line 370
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$9;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$9;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 384
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$10;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$10;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    .line 640
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$11;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$11;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    .line 902
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$12;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$12;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1681
    new-instance v0, Lcom/oneplus/gallery/CameraGalleryImpl$13;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$13;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    .line 1790
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1791
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    .line 1785
    return-void
.end method

.method private canDeleteButtonVisible()Z
    .locals 2

    .prologue
    .line 1904
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

    .line 1911
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1909
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 1904
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
    .line 1919
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

    .line 1926
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1924
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 1919
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

    .line 1934
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1935
    :cond_0
    return v6

    .line 1936
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v3

    .line 1937
    .local v3, "position":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1938
    return v6

    .line 1939
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

    .line 1941
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

    .line 1949
    :pswitch_0
    const/4 v1, 0x0

    .line 1952
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

    .line 1953
    .local v0, "isSecureMode":Z
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    iget-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    if-eqz v4, :cond_4

    .line 1956
    const/4 v4, 0x1

    return v4

    .line 1939
    .end local v0    # "isSecureMode":Z
    .end local v1    # "isSimpleGalleryState":Z
    .end local v2    # "isVideo":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isVideo":Z
    goto :goto_0

    .line 1946
    :pswitch_1
    const/4 v1, 0x1

    .line 1947
    .restart local v1    # "isSimpleGalleryState":Z
    goto :goto_1

    .line 1954
    .restart local v0    # "isSecureMode":Z
    :cond_4
    return v6

    .line 1941
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
    .line 1964
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

    .line 1972
    :pswitch_0
    const/4 v1, 0x0

    .line 1975
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

    .line 1976
    .local v0, "isSecureMode":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 1977
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1969
    .end local v0    # "isSecureMode":Z
    .end local v1    # "isSimpleGalleryState":Z
    :pswitch_1
    const/4 v1, 0x1

    .line 1970
    .restart local v1    # "isSimpleGalleryState":Z
    goto :goto_0

    .line 1979
    .restart local v0    # "isSecureMode":Z
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1964
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

    .line 1832
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_2

    .line 1835
    const/4 v2, 0x0

    .line 1836
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

    .line 1838
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

    .line 1840
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cancelDecodingHighResolutionImage() - Media : "

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-static {v4, v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1841
    move-object v2, v0

    .line 1847
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v2    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "cancelDecodingHighResolutionImage()"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4, v8, v8}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setVisible(ZZ)Z

    .line 1849
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    .line 1850
    iput-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    .line 1853
    if-eqz v2, :cond_2

    .line 1855
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1856
    .local v3, "thumb":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_3

    .line 1858
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 1859
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v5, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1830
    .end local v1    # "candItem$iterator":Ljava/util/Iterator;
    .end local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    return-void

    .line 1863
    .restart local v1    # "candItem$iterator":Ljava/util/Iterator;
    .restart local v3    # "thumb":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->getLowQualityThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1864
    if-eqz v3, :cond_2

    .line 1866
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 1867
    iget-object v4, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v5, v2, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private cancelDecodingImages()V
    .locals 1

    .prologue
    .line 1877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages(Z)V

    .line 1875
    return-void
.end method

.method private cancelDecodingImages(Z)V
    .locals 3
    .param p1, "cancelHighResImage"    # Z

    .prologue
    .line 1881
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1883
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1884
    .local v1, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1885
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1881
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1887
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 1889
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 1890
    .restart local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 1891
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1887
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1893
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1894
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1896
    if-eqz p1, :cond_2

    .line 1897
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 1879
    :cond_2
    return-void
.end method

.method private checkActionEditSupported()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1986
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/camera/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1987
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 1989
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "checkActionEditSupported() - packageManager is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    .line 1991
    return-void

    .line 1993
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.EDIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1994
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1996
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1997
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    .line 1984
    :goto_0
    return-void

    .line 1999
    :cond_1
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActionEditSupported:Z

    goto :goto_0
.end method

.method private checkGalleryState()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 2006
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/camera/CameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2008
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_2

    .line 2010
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2011
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.oneplus.gallery"

    const-string/jumbo v7, "com.oneplus.gallery.OPGalleryServiceActivity"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2012
    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2013
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 2020
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "isGalleryReady":Z
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 2022
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v7, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v7}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2023
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2004
    :cond_0
    :goto_1
    return-void

    .line 2013
    .end local v2    # "isGalleryReady":Z
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "isGalleryReady":Z
    goto :goto_0

    .line 2017
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isGalleryReady":Z
    :cond_2
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "checkGalleryState() - packageManager is null"

    invoke-static {v4, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    const/4 v2, 0x0

    .restart local v2    # "isGalleryReady":Z
    goto :goto_0

    .line 2025
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

    .line 2033
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2034
    .local v0, "isRtlLayout":Z
    if-eqz v0, :cond_0

    .line 2036
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2042
    :pswitch_0
    return v3

    .line 2040
    :pswitch_1
    return v4

    .line 2047
    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2053
    return v3

    .line 2051
    :pswitch_2
    return v4

    .line 2036
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2047
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
    .line 2062
    if-nez p1, :cond_0

    .line 2064
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMediaCaches() - removing media is null!"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    return-void

    .line 2068
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2069
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 2071
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMediaCaches() - Clear caches: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2073
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 2074
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 2075
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v0}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 2089
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    return-void

    .line 2079
    :cond_2
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2080
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2082
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "clearMediaCaches() - Clear caches: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2084
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2085
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 2086
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v2, v1}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeFilmstrip(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 2096
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(ZZ)V

    .line 2094
    return-void
.end method

.method private closeFilmstrip(ZZ)V
    .locals 6
    .param p1, "animation"    # Z
    .param p2, "clearRecycler"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2101
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

    .line 2109
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "closeFilmstrip()"

    invoke-static {v2, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-eqz v2, :cond_0

    .line 2113
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-eqz p1, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Lcom/oneplus/gallery/BurstViewer;->close(I)V

    .line 2116
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 2119
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2122
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 2125
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x2724

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2126
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v4, 0x2733

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2129
    if-eqz p2, :cond_1

    .line 2130
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 2133
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 2136
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v2, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2139
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 2140
    iput-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    .line 2141
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 2144
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

    .line 2146
    .local v0, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2148
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 2154
    .end local v0    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_3
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 2157
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 2098
    return-void

    .line 2104
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    :pswitch_0
    return-void

    .line 2113
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 2101
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

    .line 2189
    if-eqz p1, :cond_0

    .line 2191
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2192
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 2193
    return-object v0

    .line 2195
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-object v1
.end method

.method private decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V
    .locals 11
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2206
    const/4 v10, 0x0

    .line 2207
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

    .line 2209
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

    .line 2212
    const/4 v7, 0x1

    .line 2213
    .local v7, "creeateNewDrawable":Z
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v0, :cond_1

    .line 2215
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->isSameSource(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2216
    const/4 v7, 0x0

    .line 2220
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 2221
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

    .line 2223
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->LARGE_IMAGE_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v0, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 2224
    iget-object v0, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2226
    const/4 v10, 0x1

    .line 2227
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

    .line 2200
    .end local v7    # "creeateNewDrawable":Z
    .end local v8    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_3
    return-void

    .line 2218
    .restart local v7    # "creeateNewDrawable":Z
    .restart local v8    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->release()V

    goto :goto_0
.end method

.method private decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V
    .locals 23
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "urgent"    # Z
    .param p3, "smallOnly"    # Z

    .prologue
    .line 2240
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2241
    return-void

    .line 2244
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->peekSize()Landroid/util/Size;

    move-result-object v21

    .line 2245
    .local v21, "size":Landroid/util/Size;
    if-nez v21, :cond_2

    .line 2247
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeCallback:Lcom/oneplus/gallery2/media/Media$SizeCallback;

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/oneplus/gallery2/media/Media;->getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "decodeThumbnailImage() - No size for "

    const-string/jumbo v6, ", decode later"

    move-object/from16 v0, p1

    invoke-static {v3, v4, v0, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2250
    return-void

    .line 2254
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v12

    .line 2255
    .local v12, "filePath":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v16

    .line 2256
    .local v16, "mediaType":Lcom/oneplus/gallery2/media/MediaType;
    sget-object v3, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    move-object/from16 v0, v16

    if-ne v0, v3, :cond_d

    const/4 v5, 0x1

    .line 2257
    .local v5, "mediaTypeValue":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v11

    .line 2258
    .local v11, "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/oneplus/gallery2/media/VideoMedia;

    if-nez v3, :cond_6

    if-eqz v11, :cond_3

    if-eqz p2, :cond_6

    .line 2260
    :cond_3
    if-nez v11, :cond_5

    .line 2262
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    check-cast v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2263
    .restart local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v11, :cond_4

    .line 2264
    new-instance v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .end local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;)V

    .line 2265
    .restart local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_4
    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    .line 2266
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2268
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 2269
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz p2, :cond_e

    const/4 v8, 0x2

    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v6, 0x200

    const/16 v7, 0x200

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2277
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v11

    .line 2278
    if-nez p3, :cond_a

    if-eqz v11, :cond_7

    if-eqz p2, :cond_a

    .line 2280
    :cond_7
    if-nez v11, :cond_9

    .line 2282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    check-cast v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2283
    .restart local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v11, :cond_8

    .line 2284
    new-instance v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .end local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v3, 0x0

    invoke-direct {v11, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;)V

    .line 2285
    .restart local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_8
    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    .line 2286
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2288
    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    .line 2289
    .local v17, "mediaWidth":F
    invoke-virtual/range {v21 .. v21}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v15, v3

    .line 2291
    .local v15, "mediaHeight":F
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v3, v4, :cond_11

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getFileSize()J

    move-result-wide v6

    const-wide/32 v8, 0x40000000

    cmp-long v3, v6, v8

    if-ltz v3, :cond_11

    .line 2292
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    .line 2295
    .local v2, "decoder":Lcom/oneplus/media/BitmapPool;
    :goto_3
    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-lez v3, :cond_15

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_15

    .line 2297
    const/high16 v3, 0x44f00000    # 1920.0f

    div-float v3, v3, v17

    const/high16 v4, 0x44870000    # 1080.0f

    div-float/2addr v4, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 2298
    .local v19, "ratio1":F
    const/high16 v3, 0x44870000    # 1080.0f

    div-float v3, v3, v17

    const/high16 v4, 0x44f00000    # 1920.0f

    div-float/2addr v4, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 2299
    .local v20, "ratio2":F
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 2300
    .local v18, "ratio":F
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 2301
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    mul-float v6, v17, v18

    float-to-int v6, v6

    mul-float v7, v15, v18

    float-to-int v7, v7

    if-eqz p2, :cond_12

    const/4 v8, 0x2

    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2317
    .end local v2    # "decoder":Lcom/oneplus/media/BitmapPool;
    .end local v15    # "mediaHeight":F
    .end local v17    # "mediaWidth":F
    .end local v18    # "ratio":F
    .end local v19    # "ratio1":F
    .end local v20    # "ratio2":F
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    .line 2318
    .local v22, "tempThumb":Landroid/graphics/Bitmap;
    if-eqz v22, :cond_c

    .line 2320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2322
    .local v13, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, v13, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_b

    .line 2324
    iget-object v3, v13, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    if-ne v3, v4, :cond_c

    .line 2326
    iget-object v3, v13, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    .line 2327
    iget-object v3, v13, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 2328
    iget-object v3, v13, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v4, v13, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2237
    .end local v13    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v14    # "galleryItem$iterator":Ljava/util/Iterator;
    :cond_c
    return-void

    .line 2256
    .end local v5    # "mediaTypeValue":I
    .end local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v22    # "tempThumb":Landroid/graphics/Bitmap;
    :cond_d
    const/4 v5, 0x3

    .restart local v5    # "mediaTypeValue":I
    goto/16 :goto_0

    .line 2269
    .restart local v11    # "decodeInfo":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2271
    :cond_f
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    if-eqz p2, :cond_10

    const/4 v8, 0x2

    :goto_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v6, 0x200

    const/16 v7, 0x200

    move-object v4, v12

    invoke-virtual/range {v3 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_2

    :cond_10
    const/4 v8, 0x0

    goto :goto_6

    .line 2294
    .restart local v15    # "mediaHeight":F
    .restart local v17    # "mediaWidth":F
    :cond_11
    sget-object v2, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    .restart local v2    # "decoder":Lcom/oneplus/media/BitmapPool;
    goto/16 :goto_3

    .line 2301
    .restart local v18    # "ratio":F
    .restart local v19    # "ratio1":F
    .restart local v20    # "ratio2":F
    :cond_12
    const/4 v8, 0x0

    goto :goto_4

    .line 2303
    :cond_13
    mul-float v3, v17, v18

    float-to-int v6, v3

    mul-float v3, v15, v18

    float-to-int v7, v3

    if-eqz p2, :cond_14

    const/4 v8, 0x2

    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    move-object v3, v2

    move-object v4, v12

    invoke-virtual/range {v3 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    :cond_14
    const/4 v8, 0x0

    goto :goto_7

    .line 2307
    .end local v18    # "ratio":F
    .end local v19    # "ratio1":F
    .end local v20    # "ratio2":F
    :cond_15
    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 2308
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz p2, :cond_16

    const/4 v8, 0x2

    :goto_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v6, 0x780

    const/16 v7, 0x780

    invoke-virtual/range {v2 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Landroid/content/Context;Landroid/net/Uri;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    :cond_16
    const/4 v8, 0x0

    goto :goto_8

    .line 2310
    :cond_17
    if-eqz p2, :cond_18

    const/4 v8, 0x2

    :goto_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeCallback:Lcom/oneplus/media/BitmapPool$Callback;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/16 v6, 0x780

    const/16 v7, 0x780

    move-object v3, v2

    move-object v4, v12

    invoke-virtual/range {v3 .. v10}, Lcom/oneplus/media/BitmapPool;->decode(Ljava/lang/String;IIIILcom/oneplus/media/BitmapPool$Callback;Landroid/os/Handler;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, v11, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    goto/16 :goto_5

    :cond_18
    const/4 v8, 0x0

    goto :goto_9
.end method

.method private decodeThumbnailImages()V
    .locals 21

    .prologue
    .line 2343
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x2710

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeMessages(I)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 2347
    return-void

    .line 2348
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

    .line 2349
    return-void

    .line 2350
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v13

    .line 2351
    .local v13, "mediaCount":I
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/widget/FilmstripView;->getFirstVisibltItem()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 2352
    .local v17, "startPosition":I
    add-int/lit8 v18, v13, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/oneplus/widget/FilmstripView;->getLastVisibltItem()I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2353
    .local v6, "endPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v5

    .line 2354
    .local v5, "centerPosition":I
    if-ltz v17, :cond_2

    if-gez v6, :cond_3

    .line 2355
    :cond_2
    return-void

    .line 2358
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 2360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v18

    sub-int v18, v18, v17

    add-int/lit8 v14, v18, -0x1

    .line 2361
    .local v14, "newEndPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v18

    sub-int v18, v18, v6

    add-int/lit8 v17, v18, -0x1

    .line 2362
    move v6, v14

    .line 2365
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

    .line 2375
    const/4 v15, 0x0

    .line 2376
    .local v15, "preDecodeWindowSize":I
    const/16 v16, 0x1

    .line 2379
    .local v16, "preDecodeWindowSizeSmall":I
    :goto_0
    sub-int v18, v17, v15

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 2380
    add-int/lit8 v18, v13, -0x1

    add-int v19, v6, v15

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2381
    sub-int v18, v17, v16

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2382
    .local v8, "extStartPosition":I
    add-int/lit8 v18, v13, -0x1

    add-int v19, v6, v16

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2385
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

    .line 2387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2388
    .local v10, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v4, 0x1

    .line 2389
    .local v4, "cancel":Z
    move v12, v8

    .local v12, "j":I
    :goto_2
    if-gt v12, v7, :cond_5

    .line 2391
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

    .line 2393
    const/4 v4, 0x0

    .line 2397
    :cond_5
    if-eqz v4, :cond_6

    .line 2399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2401
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2385
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 2370
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

    .line 2371
    .local v11, "isFastScroll":Z
    :goto_3
    if-eqz v11, :cond_8

    const/4 v15, 0x2

    .line 2372
    .restart local v15    # "preDecodeWindowSize":I
    :goto_4
    if-eqz v11, :cond_9

    const/16 v16, 0x3

    .restart local v16    # "preDecodeWindowSizeSmall":I
    goto/16 :goto_0

    .line 2370
    .end local v11    # "isFastScroll":Z
    .end local v15    # "preDecodeWindowSize":I
    .end local v16    # "preDecodeWindowSizeSmall":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 2371
    .restart local v11    # "isFastScroll":Z
    :cond_8
    const/4 v15, 0x1

    .restart local v15    # "preDecodeWindowSize":I
    goto :goto_4

    .line 2372
    :cond_9
    const/16 v16, 0x1

    .restart local v16    # "preDecodeWindowSizeSmall":I
    goto/16 :goto_0

    .line 2389
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

    .line 2404
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

    .line 2406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2407
    .restart local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    const/4 v4, 0x1

    .line 2408
    .restart local v4    # "cancel":Z
    move/from16 v12, v17

    .restart local v12    # "j":I
    :goto_6
    if-gt v12, v6, :cond_c

    .line 2410
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

    .line 2412
    const/4 v4, 0x0

    .line 2416
    :cond_c
    if-eqz v4, :cond_d

    .line 2418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2420
    iget-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 2404
    :cond_d
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    .line 2408
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 2425
    .end local v4    # "cancel":Z
    .end local v10    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v12    # "j":I
    :cond_f
    move v9, v7

    :goto_7
    if-le v9, v6, :cond_11

    .line 2426
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

    .line 2425
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 2426
    :cond_10
    const/16 v19, 0x0

    goto :goto_8

    .line 2427
    :cond_11
    move v9, v8

    :goto_9
    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    .line 2428
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

    .line 2427
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 2428
    :cond_12
    const/16 v19, 0x0

    goto :goto_a

    .line 2429
    :cond_13
    move/from16 v9, v17

    :goto_b
    if-gt v9, v6, :cond_15

    .line 2430
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

    .line 2429
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 2430
    :cond_14
    const/16 v19, 0x0

    goto :goto_c

    .line 2340
    :cond_15
    return-void

    .line 2365
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

    .line 2438
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

    .line 2440
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v5}, Lcom/oneplus/gallery2/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2441
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteMediaInfoFromRecycler() - Delete "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2444
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2443
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

    .line 2446
    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2449
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x271a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2450
    const/4 v2, 0x1

    invoke-direct {p0, v5, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 2451
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

    .line 2435
    :goto_2
    :pswitch_0
    return-void

    .line 2455
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_2

    .line 2451
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

    .line 2468
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 2469
    :cond_0
    return v4

    .line 2472
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 2475
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 2476
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2483
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

    .line 2484
    return v4

    .line 2486
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2487
    return v4

    .line 2489
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "deletePage() - Pos: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2492
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2500
    :goto_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->movePageToRecycler(I)V

    .line 2503
    const/4 v1, 0x1

    return v1

    .line 2495
    :pswitch_2
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 2476
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2492
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch
.end method

.method private editPage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2511
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 2512
    :cond_0
    return-void

    .line 2519
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 2520
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 2526
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

    .line 2527
    return-void

    .line 2529
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2530
    return-void

    .line 2533
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->editPageDirectly(I)V

    .line 2508
    return-void

    .line 2520
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

    .line 2541
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.EDIT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2542
    .local v1, "editIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 2543
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "image/*"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2544
    const-string/jumbo v6, "extraCreateModifiedThumb"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2545
    const-string/jumbo v6, "waitForRequesterReady"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2548
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 2550
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "editPageDirectly() - Unregister previous receiver for media saved"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2553
    :cond_0
    new-instance v6, Lcom/oneplus/gallery/CameraGalleryImpl$15;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$15;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    iput-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    .line 2561
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v6, "com.oneplus.gallery.action.MEDIA_SAVED"

    invoke-direct {v4, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2564
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    :try_start_0
    const-string/jumbo v6, "image/*"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 2565
    const-string/jumbo v6, "video/*"

    invoke-virtual {v4, v6}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2569
    :goto_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "editPageDirectly() - Register receiver for media saved"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7, v4}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2573
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .line 2574
    .local v0, "activity":Lcom/oneplus/camera/OPCameraActivity;
    new-instance v6, Lcom/oneplus/gallery/CameraGalleryImpl$16;

    invoke-direct {v6, p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$16;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    invoke-virtual {v0, v1, v6}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    .line 2601
    .local v3, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2602
    iput-boolean v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 2610
    :goto_1
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 2538
    return-void

    .line 2605
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2606
    iput-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_1

    .line 2568
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

    .line 2617
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2618
    :cond_0
    return-object v3

    .line 2620
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 2622
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    .line 2623
    .local v1, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2624
    return-object v1

    .line 2625
    :cond_2
    instance-of v2, p2, Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2626
    return-object v1

    .line 2620
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2628
    .end local v1    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_4
    return-object v3
.end method

.method private getHideTranslationX()F
    .locals 3

    .prologue
    .line 2646
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getTranslationXRange()Landroid/util/Range;

    move-result-object v0

    .line 2647
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 2648
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 2650
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
    .line 2657
    move v0, p1

    .line 2658
    .local v0, "mediaListIndex":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2659
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 2660
    :cond_0
    return v0
.end method

.method private getRotatePosition(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2667
    move v0, p1

    .line 2668
    .local v0, "position":I
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2669
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 2670
    :cond_0
    return v0
.end method

.method private getScaleImageGestureReceiver()Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 1

    .prologue
    .line 2677
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

    .line 2684
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    if-eqz v4, :cond_0

    .line 2685
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    return-object v4

    .line 2686
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/ScreenSize;

    .line 2687
    .local v2, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v4

    sget-object v5, Lcom/oneplus/camera/CameraApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v5}, Lcom/oneplus/camera/CameraApplication;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2688
    .local v0, "isRtlLayout":Z
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    .line 2690
    .local v3, "uiRotation":Lcom/oneplus/base/Rotation;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v4

    invoke-virtual {v3}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 2720
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

    .line 2721
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 2694
    :pswitch_0
    if-nez v0, :cond_1

    .line 2695
    new-instance v1, Landroid/util/Range;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oneplus/base/ScreenSize;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2724
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :goto_0
    return-object v1

    .line 2697
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

    .line 2702
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

    .line 2703
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 2707
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

    .line 2708
    .restart local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    goto :goto_0

    .line 2712
    .end local v1    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    :pswitch_3
    if-nez v0, :cond_2

    .line 2713
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

    .line 2715
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

    .line 2690
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
    .line 2731
    const-wide/16 v6, 0x1f4

    add-long/2addr v6, p1

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 2732
    .local v4, "seconds":J
    const-wide/16 v6, 0xe10

    div-long v0, v4, v6

    .line 2733
    .local v0, "hours":J
    const-wide/16 v6, 0xe10

    mul-long/2addr v6, v0

    sub-long/2addr v4, v6

    .line 2734
    const-wide/16 v6, 0x3c

    div-long v2, v4, v6

    .line 2735
    .local v2, "minutes":J
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v2

    sub-long/2addr v4, v6

    .line 2736
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
    .line 2743
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2744
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 2746
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2747
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 2748
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2749
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 2750
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2751
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 2752
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2753
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 2754
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0

    .line 2757
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getViewVisibilityState() - Unknow view"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2758
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    return-object v0
.end method

.method private hasVisibleMedia()Z
    .locals 1

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2806
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2807
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isBurstGroup(Lcom/oneplus/gallery2/media/Media;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2814
    instance-of v0, p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    if-eqz v0, :cond_0

    .line 2815
    check-cast p1, Lcom/oneplus/gallery2/media/PhotoMedia;

    .end local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isBurstGroup(Lcom/oneplus/gallery2/media/PhotoMedia;)Z

    move-result v0

    return v0

    .line 2816
    .restart local p1    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isBurstGroup(Lcom/oneplus/gallery2/media/PhotoMedia;)Z
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/PhotoMedia;

    .prologue
    .line 2820
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

    .line 2827
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 2828
    .local v0, "tag":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2829
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

    .line 2831
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

    .line 2838
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v3, :cond_1

    .line 2840
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isItemSourceSameAsMovieDrawable() - item or movie drawble is null."

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2841
    return v5

    .line 2843
    :cond_1
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 2844
    .local v2, "media":Lcom/oneplus/gallery2/media/Media;
    if-nez v2, :cond_2

    .line 2846
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "isItemSourceSameAsMovieDrawable() - info is null"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    return v5

    .line 2850
    :cond_2
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 2851
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 2854
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v3, v0}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2856
    return v4

    .line 2858
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v3, v1}, Lcom/oneplus/drawable/MovieDrawable;->isTheSameSource(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2860
    return v4

    .line 2862
    :cond_4
    return v5
.end method

.method private launchGallery()V
    .locals 4

    .prologue
    .line 2871
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2872
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.gallery"

    const-string/jumbo v3, "com.oneplus.gallery.OPGalleryServiceActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2873
    const-string/jumbo v2, "OPGalleryActivity.StartPage"

    const-string/jumbo v3, "ALBUMS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2874
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2875
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2867
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2878
    :catch_0
    move-exception v0

    .line 2879
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

    .line 2888
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_1

    const/4 v2, 0x1

    .line 2889
    .local v2, "isLastMedia":Z
    :goto_0
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v6

    if-ne v5, v6, :cond_2

    const/4 v1, 0x1

    .line 2892
    .local v1, "isCurrentItem":Z
    :goto_1
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 2893
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2896
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget v6, Lcom/oneplus/gallery2/media/MediaSet;->FLAG_MOVE_TO_RECYCE_BIN:I

    invoke-interface {v5, v3, v7, v6}, Lcom/oneplus/gallery2/media/MediaSet;->deleteMedia(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/Media$DeletionCallback;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    .line 2897
    .local v0, "handle":Lcom/oneplus/base/Handle;
    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2898
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2905
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "movePageToRecycler() - Media: "

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2908
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2910
    invoke-direct {p0, v8, v8}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 2911
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

    .line 2925
    :goto_2
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2927
    if-eqz v1, :cond_0

    .line 2929
    if-eqz v2, :cond_5

    const/4 v5, -0x1

    :goto_3
    add-int/2addr v5, p1

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v4

    .line 2930
    .local v4, "nextUiPosition":I
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5, v4, v8}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 2937
    .end local v4    # "nextUiPosition":I
    :cond_0
    :goto_4
    const/16 v5, 0x271a

    const-wide/16 v6, 0x2710

    invoke-static {p0, v5, v8, v6, v7}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 2885
    return-void

    .line 2888
    .end local v0    # "handle":Lcom/oneplus/base/Handle;
    .end local v1    # "isCurrentItem":Z
    .end local v2    # "isLastMedia":Z
    .end local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isLastMedia":Z
    goto :goto_0

    .line 2889
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isCurrentItem":Z
    goto :goto_1

    .line 2901
    .restart local v0    # "handle":Lcom/oneplus/base/Handle;
    .restart local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "movePageToRecycler() - Fail to recycle media"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2903
    return-void

    .line 2915
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_2

    .line 2922
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

    .line 2929
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 2934
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "movePageToRecycler() - Last media"

    invoke-static {v5, v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2911
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

    .line 2946
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    if-eqz v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "navigateBack() - Rotation container is rotating, ignore navigate back"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    return-void

    .line 2953
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

    .line 2943
    :goto_0
    return-void

    .line 2964
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 2965
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0

    .line 2953
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
    .line 2974
    if-eqz p1, :cond_0

    .line 2976
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyPhotoEditorRequesterReady() - "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2977
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.oneplus.gallery.action.REQUESTER_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2972
    :cond_0
    return-void
.end method

.method private obtainGalleryItem(Lcom/oneplus/gallery2/media/Media;)Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 2985
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 2986
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    if-eqz v0, :cond_0

    .line 2988
    invoke-virtual {v0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->updateMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 2989
    return-object v0

    .line 2991
    :cond_0
    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    return-object v1
.end method

.method private onCurrentMediaChanged()V
    .locals 5

    .prologue
    .line 2999
    const/4 v0, 0x0

    .line 3000
    .local v0, "contentUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    if-eqz v4, :cond_0

    .line 3002
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v4}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v3

    .line 3003
    .local v3, "position":I
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v2

    .line 3004
    .local v2, "mediaListIndex":I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3006
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v4, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    .line 3007
    .local v1, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v1, :cond_0

    .line 3008
    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 3013
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v2    # "mediaListIndex":I
    .end local v3    # "position":I
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 3016
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 2996
    return-void
.end method

.method private onFilmstripCurrentItemChanged(II)V
    .locals 13
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 3068
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3071
    .local v2, "nowTimeMillis":J
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 3072
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

    .line 3139
    if-le v6, v9, :cond_0

    .line 3140
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3145
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

    .line 3147
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v7, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3149
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3155
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onCurrentMediaChanged()V

    .line 3158
    invoke-direct {p0, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 3161
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 3065
    return-void

    .line 3076
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    :pswitch_0
    if-nez v6, :cond_3

    .line 3080
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

    .line 3084
    :cond_3
    if-ne v6, v9, :cond_5

    .line 3088
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

    .line 3091
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3092
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

    .line 3093
    :cond_4
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3097
    .end local v4    # "prevTimeMillisWithSignNum":J
    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    .line 3100
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3101
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

    .line 3103
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

    .line 3110
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 3116
    :cond_6
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 3124
    :cond_7
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 3125
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

    .line 3132
    .end local v4    # "prevTimeMillisWithSignNum":J
    :cond_8
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onFilmstripCurrentItemChanged() - Unknown size, reset"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LatestFilmstripItemPositions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 3072
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private onFilmstripDraggingEnd()V
    .locals 6

    .prologue
    .line 3169
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v0

    .line 3170
    .local v0, "hideTranslationX":F
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 3171
    .local v2, "x":F
    sub-float v3, v2, v0

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 3172
    .local v1, "visibleRatio":F
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onFilmstripDraggingEnd() - Visible ratio: "

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3173
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$UIStateSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {v4}, Lcom/oneplus/camera/ui/CameraGallery$UIState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 3190
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

    .line 3191
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Illegal UI State"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3177
    :pswitch_1
    const v3, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_0

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3180
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3195
    :goto_0
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v3, v4, :cond_2

    .line 3196
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    .line 3166
    :goto_1
    return-void

    .line 3178
    :cond_0
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3184
    :pswitch_2
    const v3, 0x3e4ccccd    # 0.2f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3185
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3187
    :cond_1
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v4, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3198
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_1

    .line 3173
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
    .line 3206
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 3209
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 3212
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 3215
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FlashDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3218
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3203
    return-void
.end method

.method private onFilmstripDraggingUpdate(FFF)V
    .locals 1
    .param p1, "newX"    # F
    .param p2, "newY"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 3225
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 3226
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    .line 3227
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setAlpha(F)V

    .line 3223
    return-void
.end method

.method private onFilmstripOverscroll(Z)V
    .locals 3
    .param p1, "atFirstItem"    # Z

    .prologue
    .line 3234
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onFilmstripOverscroll()"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v0

    .line 3236
    .local v0, "isInversedRotation":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    .line 3237
    :cond_0
    if-nez p1, :cond_2

    .line 3236
    if-eqz v0, :cond_2

    .line 3238
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripOverScrollState()V

    .line 3232
    :cond_2
    return-void
.end method

.method private onFilmstripScrollStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3245
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    .line 3247
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

    .line 3249
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3250
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3251
    :cond_0
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    goto :goto_0

    .line 3243
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    return-void
.end method

.method private onFilmstripScrollStopped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3259
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    .line 3261
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

    .line 3263
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3264
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3265
    :cond_0
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setScrollingState(Z)V

    goto :goto_0

    .line 3257
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_1
    return-void
.end method

.method private onFilmstripTouchReceived(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 3273
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v1, :cond_1

    .line 3275
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    if-eqz v1, :cond_0

    .line 3277
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3278
    iput-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 3282
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 3283
    .local v0, "galleryState":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3293
    return v3

    .line 3289
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    invoke-interface {v1, p1}, Lcom/oneplus/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 3290
    const/4 v1, 0x1

    return v1

    .line 3302
    .end local v0    # "galleryState":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    :cond_1
    return v3

    .line 3283
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
    .line 3309
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 3310
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

    .line 3311
    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openBurstViewer(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    .line 3307
    :cond_0
    return-void
.end method

.method private onMediaAdded(II)V
    .locals 18
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 3675
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

    .line 3678
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    .line 3679
    .local v8, "count":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v9

    .line 3680
    .local v9, "endPosition":I
    const/16 v17, 0x0

    .line 3681
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

    .line 3683
    .local v10, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 3684
    .local v15, "position":I
    if-lt v15, v9, :cond_0

    .line 3686
    if-nez v17, :cond_1

    .line 3687
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 3688
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3691
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v15    # "position":I
    :cond_2
    if-eqz v17, :cond_3

    .line 3693
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_3

    .line 3695
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3696
    .restart local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v13, v2, v8

    .line 3697
    .local v13, "newPosition":I
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 3693
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    .line 3702
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v12    # "i":I
    .end local v13    # "newPosition":I
    :cond_3
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

    .line 3673
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
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->hasVisibleMedia()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3807
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMediaRemoved() - media list is empty"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3808
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3809
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

    .line 3810
    :cond_1
    invoke-direct {p0, v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    .line 3811
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

    .line 3813
    .end local v6    # "count":I
    .end local v7    # "endPosition":I
    .end local v8    # "startPosition":I
    :cond_4
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3816
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->onCurrentMediaChanged()V

    .line 3819
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_5

    .line 3820
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
    .line 3827
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

    .line 3830
    move/from16 v12, p1

    .local v12, "i":I
    :goto_0
    move/from16 v0, p2

    if-gt v12, v0, :cond_2

    .line 3832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2, v12}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/gallery2/media/Media;

    .line 3833
    .local v15, "removingMedia":Lcom/oneplus/gallery2/media/Media;
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3830
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3835
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->clearMediaCaches(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_1

    .line 3840
    .end local v15    # "removingMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v8, v2, 0x1

    .line 3841
    .local v8, "count":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v9

    .line 3842
    .local v9, "endPosition":I
    const/16 v16, 0x0

    .line 3843
    .local v16, "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v16    # "updatingItems":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;>;"
    .local v11, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3845
    .local v10, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 3846
    .local v14, "position":I
    if-le v14, v9, :cond_3

    .line 3848
    if-nez v16, :cond_4

    .line 3849
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 3850
    :cond_4
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3853
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v14    # "position":I
    :cond_5
    if-eqz v16, :cond_6

    .line 3855
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    :goto_3
    if-ltz v12, :cond_6

    .line 3857
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3858
    .restart local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v2}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v13, v2, v8

    .line 3859
    .local v13, "newPosition":I
    iget-object v2, v10, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setTag(Ljava/lang/Object;)V

    .line 3855
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 3825
    .end local v10    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v13    # "newPosition":I
    :cond_6
    return-void
.end method

.method private onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 3869
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSizeObtainHandles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v3, :cond_1

    .line 3870
    :cond_0
    return-void

    .line 3871
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3872
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 3873
    return-void

    .line 3876
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "candItem$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3878
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v3, p1, :cond_3

    .line 3880
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    .line 3881
    if-lez p2, :cond_4

    if-gtz p3, :cond_5

    .line 3883
    :cond_4
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getType()Lcom/oneplus/gallery2/media/MediaType;

    move-result-object v3

    sget-object v4, Lcom/oneplus/gallery2/media/MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaType;

    if-ne v3, v4, :cond_7

    .line 3885
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 3886
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 3894
    :cond_5
    :goto_0
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->controlsContainer:Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;

    invoke-virtual {v3, p2, p3}, Lcom/oneplus/gallery/widget/GalleryItemIndicatorContainer;->setOriginalImageSize(II)V

    .line 3895
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    sget v4, Lcom/oneplus/gallery/CameraGalleryImpl;->EMPTY_THUMB_COLOR:I

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    .line 3896
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v3

    invoke-direct {p0, p1, v3, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 3866
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_6
    return-void

    .line 3890
    .restart local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p2

    .line 3891
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p3

    goto :goto_0
.end method

.method private onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V
    .locals 13
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "flags"    # I

    .prologue
    .line 3907
    sget v9, Lcom/oneplus/gallery/CameraGalleryImpl;->MEDIA_UPDATE_FLAG_MASK:I

    and-int/2addr v9, p2

    if-nez v9, :cond_0

    .line 3908
    return-void

    .line 3909
    :cond_0
    sget v9, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    not-int v9, v9

    and-int/2addr v9, p2

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    .line 3912
    .local v8, "needThumbUpdate":Z
    :goto_0
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v9, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 3913
    .local v4, "index":I
    :goto_1
    if-gez v4, :cond_3

    .line 3914
    return-void

    .line 3909
    .end local v4    # "index":I
    .end local v8    # "needThumbUpdate":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "needThumbUpdate":Z
    goto :goto_0

    .line 3912
    :cond_2
    const/4 v4, -0x1

    goto :goto_1

    .line 3916
    .restart local v4    # "index":I
    :cond_3
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onMediaUpdated() - Media : "

    const-string/jumbo v11, ", flags : "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9, v10, p1, v11, v12}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3919
    const/4 v3, 0x0

    .line 3920
    .local v3, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "candItem$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3922
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v9, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v9, p1, :cond_4

    .line 3924
    move-object v3, v0

    .line 3925
    .local v3, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3931
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v3    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_5
    if-eqz v8, :cond_c

    .line 3934
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->clearMediaCaches(Lcom/oneplus/gallery2/media/Media;)V

    .line 3937
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v2

    .line 3938
    .local v2, "currentIndex":I
    if-ne v2, v4, :cond_6

    .line 3940
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onMediaUpdated() - Update current item"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3941
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 3945
    :cond_6
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v5

    .line 3946
    .local v5, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-eqz v5, :cond_7

    .line 3948
    iget-object v9, v5, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, v5, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 3949
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3951
    :cond_7
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v5

    .line 3952
    if-eqz v5, :cond_8

    .line 3954
    iget-object v9, v5, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    invoke-static {v9}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v9

    iput-object v9, v5, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;->decodingHandle:Lcom/oneplus/base/Handle;

    .line 3955
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3959
    :cond_8
    if-nez v3, :cond_9

    .line 3961
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onMediaUpdated() - No item to update"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    return-void

    .line 3964
    :cond_9
    sget v9, Lcom/oneplus/gallery2/media/Media;->FLAG_SIZE_CHANGED:I

    and-int/2addr v9, p2

    if-eqz v9, :cond_a

    .line 3966
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onMediaUpdated() - Media size changed, refresh item"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    iget-object v9, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 3968
    return-void

    .line 3970
    :cond_a
    iget-object v9, v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v6

    .line 3971
    .local v6, "isCurrentItem":Z
    iget-object v9, v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v9}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v9

    sget-object v10, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v9, v10, :cond_e

    const/4 v7, 0x1

    .line 3972
    .local v7, "needHighResImage":Z
    :goto_2
    iget-object v10, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "onMediaUpdated() - Update thumbnail "

    if-eqz v6, :cond_f

    const-string/jumbo v9, "(Current)"

    :goto_3
    invoke-static {v10, v11, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3974
    iget-object v9, v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    sget-object v10, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    if-eq v9, v10, :cond_b

    .line 3975
    sget-object v9, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v9, v3, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 3977
    :cond_b
    const/4 v9, 0x0

    invoke-direct {p0, p1, v6, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 3980
    if-eqz v6, :cond_c

    .line 3982
    invoke-virtual {v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3983
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 3990
    .end local v2    # "currentIndex":I
    .end local v5    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .end local v6    # "isCurrentItem":Z
    .end local v7    # "needHighResImage":Z
    :cond_c
    :goto_4
    sget v9, Lcom/oneplus/gallery2/media/GroupedMedia;->FLAG_SUB_MEDIA_COUNT_CHANGED:I

    and-int/2addr v9, p2

    if-eqz v9, :cond_d

    .line 3991
    instance-of v9, p1, Lcom/oneplus/gallery2/media/GroupedMedia;

    .line 3990
    if-eqz v9, :cond_d

    .line 3992
    if-eqz v3, :cond_d

    .line 3994
    const/4 v9, 0x1

    invoke-static {v3, p1, v9}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;Z)V

    .line 3995
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 3904
    :cond_d
    return-void

    .line 3971
    .restart local v2    # "currentIndex":I
    .restart local v5    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    .restart local v6    # "isCurrentItem":Z
    :cond_e
    const/4 v7, 0x0

    .restart local v7    # "needHighResImage":Z
    goto :goto_2

    .line 3972
    :cond_f
    const-string/jumbo v9, ""

    goto :goto_3

    .line 3984
    :cond_10
    if-eqz v7, :cond_c

    .line 3985
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_4
.end method

.method private onOfflinePictureProcessed(Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 4
    .param p1, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;

    .prologue
    .line 4003
    invoke-virtual {p1}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 4004
    .local v0, "filePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4005
    return-void

    .line 4006
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "galleryItem$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4008
    .local v1, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v3}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4010
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setProcessingBarVisibility(Z)V

    .line 4001
    .end local v1    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_2
    return-void
.end method

.method private onPhotoEditorMediaSaved(Lcom/oneplus/gallery2/media/Media;Landroid/content/Intent;Z)V
    .locals 11
    .param p1, "originalMedia"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "result"    # Landroid/content/Intent;
    .param p3, "activityFinished"    # Z

    .prologue
    .line 4021
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 4023
    :goto_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPhotoEditorMediaSaved() - Original media : "

    const-string/jumbo v8, ", new content URI : "

    invoke-static {v6, v7, p1, v8, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4026
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v6, :cond_0

    .line 4028
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4029
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    .line 4034
    :cond_0
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v3

    .line 4035
    .local v3, "filePath":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 4039
    if-nez p2, :cond_2

    .line 4042
    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Landroid/net/Uri;Ljava/lang/String;)V

    .line 4043
    return-void

    .line 4021
    .end local v3    # "filePath":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "contentUri":Landroid/net/Uri;
    goto :goto_0

    .line 4047
    .end local v1    # "contentUri":Landroid/net/Uri;
    .restart local v3    # "filePath":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 4048
    const-string/jumbo v6, "thumbnail"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 4049
    .local v0, "compressedThumb":[B
    if-eqz v0, :cond_5

    .line 4053
    :try_start_0
    array-length v6, v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4054
    .local v5, "thumb":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_4

    .line 4056
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

    .line 4057
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v6, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4069
    .end local v5    # "thumb":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4072
    :cond_3
    invoke-direct {p0, v1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->refreshThumbnailImage(Landroid/net/Uri;Ljava/lang/String;)V

    .line 4073
    return-void

    .line 4060
    .restart local v5    # "thumb":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - Fail to decode thumbnail image"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4063
    .end local v5    # "thumb":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 4064
    .local v2, "ex":Ljava/lang/Throwable;
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - Fail to decode thumbnail image"

    invoke-static {v6, v7, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4068
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_5
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - No thumbnail image returned"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4077
    :cond_6
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setPageToContentUri(Landroid/net/Uri;)V

    .line 4080
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v7}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 4088
    :goto_2
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v6, :cond_7

    if-eqz v1, :cond_7

    .line 4090
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMediaId(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4091
    .local v4, "mediaId":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 4093
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActivityResult() - Get media for "

    const-string/jumbo v8, " immediately"

    invoke-static {v6, v7, v1, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4094
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v7, v8}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->getMedia(Ljava/lang/String;Lcom/oneplus/gallery2/media/MediaSource$MediaObtainCallback;I)Lcom/oneplus/base/Handle;

    .line 4099
    .end local v4    # "mediaId":Ljava/lang/String;
    :cond_7
    if-nez p3, :cond_8

    .line 4101
    if-eqz v1, :cond_9

    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_CURRENT_CONTENT_URI:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4102
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPhotoEditorRequesterReady(Landroid/net/Uri;)V

    .line 4018
    .end local v0    # "compressedThumb":[B
    :cond_8
    :goto_3
    return-void

    .line 4083
    .restart local v0    # "compressedThumb":[B
    :pswitch_0
    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_2

    .line 4105
    :cond_9
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onPhotoEditorMediaSaved() - Waiting for modified media ready"

    invoke-static {v6, v7}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    goto :goto_3

    .line 4080
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
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
    .line 4153
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4154
    .local v1, "position":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 4157
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-eqz v2, :cond_0

    .line 4159
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-virtual {v3}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 4166
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onScaleImageBoundsChanged() - State is not support to set over scale: "

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4167
    return-void

    .line 4172
    :cond_0
    :pswitch_1
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getFitToScreenShortSideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4173
    .local v0, "fitBounds":Landroid/graphics/Rect;
    iget-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    if-nez v2, :cond_3

    .line 4175
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int v3, p4, p2

    if-gt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v3, p5, p3

    if-le v2, v3, :cond_2

    .line 4177
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onScaleImageBoundsChanged() - Over scaled"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4178
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 4150
    .end local v0    # "fitBounds":Landroid/graphics/Rect;
    :cond_2
    :goto_0
    return-void

    .line 4183
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

    .line 4185
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onScaleImageBoundsChanged() - Over scaled cancel"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4186
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0

    .line 4159
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
    .line 4197
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4198
    return-void

    .line 4200
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4201
    :cond_1
    return-void

    .line 4203
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

    .line 4204
    const/4 v8, 0x0

    .line 4205
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

    .line 4207
    .local v9, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v1, v9, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    if-ne v1, p1, :cond_3

    .line 4209
    move-object v8, v9

    .line 4215
    .end local v8    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v9    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 4216
    .local v12, "position":I
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_7

    .line 4219
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4194
    :cond_5
    :goto_0
    return-void

    .line 4221
    :cond_6
    invoke-direct {p0, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v13

    .line 4222
    .local v13, "rotateMediaindex":I
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-ge v13, v1, :cond_5

    .line 4224
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v13}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/Media;

    .line 4225
    .local v11, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V

    .line 4227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    goto :goto_0

    .line 4231
    .end local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v13    # "rotateMediaindex":I
    :cond_7
    sget-object v1, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_a

    .line 4234
    if-eqz v8, :cond_9

    .line 4236
    invoke-virtual {v8}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4238
    invoke-direct {p0, v12}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v13

    .line 4239
    .restart local v13    # "rotateMediaindex":I
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-ge v13, v1, :cond_8

    .line 4241
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v13}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/oneplus/gallery2/media/Media;

    .line 4244
    .restart local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v1, v8, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 4245
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v11, v1, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 4253
    .end local v11    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v13    # "rotateMediaindex":I
    :cond_8
    :goto_1
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    if-eqz v1, :cond_5

    .line 4255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 4259
    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0

    .line 4250
    :cond_9
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onScaleImageBoundsTypeChanged() - No gallery item"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4265
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

    .line 4274
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-eq v2, v3, :cond_0

    .line 4275
    return v4

    .line 4276
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v2, :cond_1

    .line 4277
    return v4

    .line 4280
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

    .line 4281
    :cond_2
    return v4

    .line 4284
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ImageBoundsOnTouch:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    .line 4285
    return v4

    .line 4289
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 4290
    .local v0, "currentPosition":I
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_7

    .line 4292
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

    .line 4293
    :cond_5
    return v4

    .line 4294
    :cond_6
    add-int/lit8 v1, v0, 0x1

    .line 4304
    .local v1, "positionTo":I
    :goto_0
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 4305
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4306
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v1, v5}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 4309
    return v5

    .line 4298
    .end local v1    # "positionTo":I
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ImageBoundsOnTouch:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_8

    if-gtz v0, :cond_9

    .line 4299
    :cond_8
    return v4

    .line 4300
    :cond_9
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "positionTo":I
    goto :goto_0
.end method

.method private onScaleImageGestureEnd(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 4316
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-ne v0, p1, :cond_0

    .line 4317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4314
    :cond_0
    return-void
.end method

.method private onScaleImageGestureStart(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4325
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4327
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryStateOnGestureStart:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 4331
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-nez v0, :cond_1

    .line 4332
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 4335
    :cond_1
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v0}, Lcom/oneplus/widget/ScaleImageView;->getImageBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ImageBoundsOnTouch:Landroid/graphics/Rect;

    .line 4322
    return-void
.end method

.method private onThumbnailImageDecoded(Ljava/lang/Object;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;
    .param p3, "isSmall"    # Z

    .prologue
    const/4 v6, 0x1

    .line 4344
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isRunningOrInitializing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4345
    return-void

    .line 4348
    :cond_0
    if-eqz p3, :cond_1

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    :goto_0
    invoke-direct {p0, v4, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->findThumbDecodeInfo(Ljava/util/List;Ljava/lang/Object;)Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;

    move-result-object v2

    .line 4349
    .local v2, "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    if-nez v2, :cond_2

    .line 4353
    return-void

    .line 4348
    .end local v2    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    goto :goto_0

    .line 4355
    .restart local v2    # "info":Lcom/oneplus/gallery/CameraGalleryImpl$ThumbDecodeInfo;
    :cond_2
    if-eqz p3, :cond_7

    .line 4356
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4359
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FreeThumbDecodeInfos:Ljava/util/Queue;

    invoke-interface {v4, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4362
    const/4 v3, 0x0

    .line 4363
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

    .line 4365
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

    .line 4368
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4371
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    if-eqz v4, :cond_4

    .line 4372
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_HighResBitmapDrawable:Lcom/oneplus/drawable/ProgressiveBitmapDrawable;

    invoke-virtual {v4, p2}, Lcom/oneplus/drawable/ProgressiveBitmapDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 4374
    :cond_4
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-gallery-CameraGalleryImpl$ImageDecodeStateSwitchesValues()[I

    move-result-object v4

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    invoke-virtual {v5}, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 4407
    :cond_5
    :goto_2
    const/4 v3, 0x1

    .line 4409
    iget-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripScrolling:Z

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4411
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4341
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_6
    return-void

    .line 4358
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    .end local v3    # "isItemFound":Z
    :cond_7
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbDecodeInfos:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4377
    .restart local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .restart local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    .restart local v3    # "isItemFound":Z
    :pswitch_0
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, p2, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 4378
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    iget-object v5, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4379
    if-eqz p3, :cond_8

    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    :goto_3
    iput-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_3

    .line 4384
    :pswitch_1
    if-nez p3, :cond_5

    .line 4386
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, p2, v6}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 4387
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    goto :goto_2

    .line 4398
    :pswitch_2
    if-eqz p3, :cond_5

    .line 4399
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v4, p2}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->setLowQualityThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 4374
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
    .line 4425
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_VideoDurationObtainHandles:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-nez v3, :cond_1

    .line 4426
    :cond_0
    return-void

    .line 4427
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v3, p1}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4428
    .local v2, "index":I
    if-gez v2, :cond_2

    .line 4429
    return-void

    .line 4432
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

    .line 4434
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-ne v3, p1, :cond_3

    .line 4436
    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->textView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery/CameraGalleryImpl;->getVideoDurationText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4422
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_4
    return-void
.end method

.method private openBurstViewer(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 4447
    if-gez p1, :cond_0

    .line 4448
    return-void

    .line 4449
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 4450
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isBurstGroup(Lcom/oneplus/gallery2/media/Media;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4452
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

    .line 4453
    return-void

    .line 4457
    :cond_1
    check-cast v0, Lcom/oneplus/gallery2/media/GroupedMedia;

    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openBurstViewer(Lcom/oneplus/gallery2/media/GroupedMedia;)V

    .line 4444
    return-void
.end method

.method private openBurstViewer(Lcom/oneplus/gallery2/media/GroupedMedia;)V
    .locals 6
    .param p1, "media"    # Lcom/oneplus/gallery2/media/GroupedMedia;

    .prologue
    const/4 v5, 0x0

    .line 4461
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openBurstViewer() - Media : "

    invoke-static {v2, v3, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4464
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-nez v2, :cond_1

    .line 4466
    const-class v2, Lcom/oneplus/gallery/BurstViewer;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/gallery/BurstViewer;

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    .line 4467
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    if-nez v2, :cond_0

    .line 4469
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openBurstViewer() - No BurstViewer"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    return-void

    .line 4472
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    sget-object v3, Lcom/oneplus/gallery/BurstViewer;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$27;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$27;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery/BurstViewer;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 4488
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BurstViewer:Lcom/oneplus/gallery/BurstViewer;

    invoke-virtual {v2, p1, v5}, Lcom/oneplus/gallery/BurstViewer;->open(Lcom/oneplus/gallery2/media/GroupedMedia;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4490
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    .line 4491
    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 4492
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v2, v3, :cond_3

    .line 4493
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4459
    :cond_2
    :goto_0
    return-void

    .line 4494
    :cond_3
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v2, v3, :cond_2

    .line 4496
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4497
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

    .line 4499
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v2, :cond_4

    .line 4500
    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v3, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    goto :goto_1

    .line 4505
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "openBurstViewer() - Fail to open burst viewer"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openFilmstrip()V
    .locals 5

    .prologue
    const/16 v4, 0x2733

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4512
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstrip()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4514
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4516
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstrip() - Media list is null"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4517
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4518
    return-void

    .line 4521
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstrip()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    if-eqz v0, :cond_2

    .line 4526
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->closeCaptureModesPanelDirectly()V

    .line 4529
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4530
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-string/jumbo v1, "CameraGallery"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraActivity;->disableCaptureUI(Ljava/lang/String;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureUIDisableHandle:Lcom/oneplus/base/Handle;

    .line 4532
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4533
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->takeScreenShot()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TakeScreenShotHandle:Lcom/oneplus/base/Handle;

    .line 4536
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2724

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4537
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4540
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 4543
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v0, :cond_5

    .line 4544
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 4547
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/camera/CameraActivity;->setKeyEventHandler(Lcom/oneplus/camera/KeyEventHandler;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_KeyEventHandlerHandle:Lcom/oneplus/base/Handle;

    .line 4550
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkActionEditSupported()V

    .line 4553
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkGalleryState()V

    .line 4556
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 4559
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 4562
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/CameraActivity;->setRotationDelayTime(J)V

    .line 4510
    return-void
.end method

.method private playVideoPage(Lcom/oneplus/gallery2/media/Media;)V
    .locals 4
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;

    .prologue
    .line 4599
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 4600
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 4606
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

    .line 4607
    return-void

    .line 4609
    :pswitch_0
    if-nez p1, :cond_0

    .line 4610
    return-void

    .line 4613
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->playVideoPageDirectly(Lcom/oneplus/gallery2/media/Media;)V

    .line 4592
    return-void

    .line 4600
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

    .line 4621
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4623
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "playVideoPageDirectly() - Previous video is playing"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4624
    return-void

    .line 4628
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .line 4629
    .local v0, "activity":Lcom/oneplus/camera/OPCameraActivity;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4630
    .local v2, "playIntent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "video/*"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4631
    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4634
    const-string/jumbo v3, "FullSensorOrientation"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4637
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4640
    const/4 v1, 0x1

    .line 4641
    .local v1, "needPlayerList":Z
    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->isSecurePhotoMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4643
    const-string/jumbo v3, "com.oneplus.gallery"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4647
    const-string/jumbo v3, "IsSecureMode"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4648
    const-string/jumbo v3, "SECURE_MODE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4649
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$29;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$29;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResult(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    .line 4658
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .line 4660
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    .line 4662
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4663
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$30;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$30;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    .line 4672
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PlayVideoHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4673
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 4679
    :cond_2
    :goto_1
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 4618
    return-void

    .line 4658
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 4676
    :cond_4
    iput-boolean v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    goto :goto_1
.end method

.method private prepareMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    .line 4687
    if-nez p1, :cond_0

    .line 4688
    return-void

    .line 4691
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4693
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareMovieDrawable() - item is the same as movie drawable."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4694
    return-void

    .line 4698
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-eqz v2, :cond_2

    .line 4700
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4704
    :cond_2
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 4705
    .local v0, "contentUri":Landroid/net/Uri;
    if-eqz v0, :cond_4

    .line 4707
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareMovieDrawable() - Uri: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4708
    new-instance v2, Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/oneplus/drawable/MovieDrawable;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    .line 4684
    :cond_3
    :goto_0
    return-void

    .line 4712
    :cond_4
    iget-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 4713
    .local v1, "filePath":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 4715
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareMovieDrawable() - Path: "

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4716
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

    .line 4725
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4726
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setColor(I)V

    .line 4727
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->mediaDrawable:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->setMedia(Lcom/oneplus/gallery2/media/Media;)V

    .line 4728
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->thumbnailDrawable:Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ThumbnailDrawable;->clearThumbnails()V

    .line 4729
    iput-object v2, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 4730
    iget-object v0, p1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->indicatorContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4723
    return-void
.end method

.method private refreshThumbnailImage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 4738
    if-nez p2, :cond_0

    .line 4739
    return-void

    .line 4741
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "refreshThumbnailImage() - Clear cache: "

    invoke-static {v6, v7, p2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4744
    const/4 v4, 0x0

    .line 4745
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    const/4 v3, 0x0

    .line 4746
    .local v3, "isCurrentItem":Z
    const/4 v5, 0x0

    .line 4747
    .local v5, "needHighResImage":Z
    const/4 v2, 0x0

    .line 4748
    .local v2, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    if-eqz v6, :cond_3

    .line 4750
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

    .line 4752
    .local v0, "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v6}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4754
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-direct {p0, v6}, Lcom/oneplus/gallery/CameraGalleryImpl;->isCurrentItem(Lcom/oneplus/widget/ScaleImageView;)Z

    move-result v3

    .line 4755
    .local v3, "isCurrentItem":Z
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    invoke-virtual {v6}, Lcom/oneplus/widget/ScaleImageView;->getImageBoundsType()Lcom/oneplus/widget/ScaleImageView$BoundsType;

    move-result-object v6

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    if-eq v6, v7, :cond_7

    const/4 v5, 0x1

    .line 4756
    :goto_0
    move-object v2, v0

    .line 4757
    .local v2, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    sget-object v7, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->NONE:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    if-eq v6, v7, :cond_2

    .line 4758
    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;->SMALL_THUMB_DECODED:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    iput-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->imageDecodeState:Lcom/oneplus/gallery/CameraGalleryImpl$ImageDecodeState;

    .line 4759
    :cond_2
    iget-object v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    .line 4760
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v3, :cond_3

    .line 4762
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingHighResolutionImage()V

    .line 4763
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4771
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "candItem$iterator":Ljava/util/Iterator;
    .end local v2    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v3    # "isCurrentItem":Z
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_3
    if-eqz p1, :cond_8

    .line 4773
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 4774
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 4775
    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p1}, Lcom/oneplus/media/BitmapPool;->invalidate(Landroid/net/Uri;)V

    .line 4785
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 4786
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImage(Lcom/oneplus/gallery2/media/Media;ZZ)V

    .line 4789
    :cond_5
    if-eqz v3, :cond_6

    .line 4791
    invoke-virtual {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->isAnimation()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4792
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->showMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 4735
    :cond_6
    :goto_2
    return-void

    .line 4755
    .restart local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .restart local v1    # "candItem$iterator":Ljava/util/Iterator;
    .local v2, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .restart local v3    # "isCurrentItem":Z
    .local v4, "media":Lcom/oneplus/gallery2/media/Media;
    :cond_7
    const/4 v5, 0x0

    goto :goto_0

    .line 4777
    .end local v0    # "candItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "candItem$iterator":Ljava/util/Iterator;
    .end local v2    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v3    # "isCurrentItem":Z
    .end local v4    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_8
    if-eqz p2, :cond_4

    .line 4779
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 4780
    sget-object v6, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    .line 4781
    sget-object v6, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v6, p2}, Lcom/oneplus/media/BitmapPool;->invalidate(Ljava/lang/String;)V

    goto :goto_1

    .line 4793
    :cond_9
    if-eqz v5, :cond_6

    .line 4794
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeHighResolutionImage(Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_2
.end method

.method private releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V
    .locals 4
    .param p1, "item"    # Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .prologue
    const/4 v3, 0x0

    .line 4803
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_1

    .line 4804
    :cond_0
    return-void

    .line 4806
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4808
    invoke-virtual {p1, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4809
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->stop()V

    .line 4810
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/drawable/MovieDrawable;->setVisible(ZZ)Z

    .line 4811
    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    .line 4800
    return-void
.end method

.method private resetFilmstripOverScrollState()V
    .locals 2

    .prologue
    .line 4818
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v0, :cond_0

    .line 4820
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetFilmstripOverScrollState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4821
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    .line 4822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFirstTouchEventAfterOverScroll:Z

    .line 4823
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 4816
    :cond_0
    return-void
.end method

.method private resetFilmstripState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4831
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetFilmstripState()"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4834
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4837
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 4838
    .local v1, "uiState":Lcom/oneplus/camera/ui/CameraGallery$UIState;
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->DRAGGING:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 4839
    .local v0, "smoothly":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4840
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v4, v0}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 4845
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v2, :cond_1

    .line 4847
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4848
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setAlpha(F)V

    .line 4850
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateRotation(Lcom/oneplus/base/Rotation;)V

    .line 4851
    iput-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 4854
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->resetFilmstripOverScrollState()V

    .line 4857
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateEmptyPageVisibility()V

    .line 4829
    return-void

    .line 4838
    .end local v0    # "smoothly":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "smoothly":Z
    goto :goto_0

    .line 4842
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

    .line 4865
    const/4 v3, 0x0

    .line 4866
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

    .line 4868
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/base/Handle;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/Media;

    .line 4869
    .local v3, "lastMedia":Lcom/oneplus/gallery2/media/Media;
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "restoreMediaInfoFromRecycler() - Restore: "

    invoke-static {v5, v6, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4870
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/base/Handle;

    invoke-static {v5}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 4872
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/base/Handle;>;"
    .end local v3    # "lastMedia":Lcom/oneplus/gallery2/media/Media;
    :cond_0
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RecycledMediaHandles:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 4875
    if-eqz v3, :cond_1

    .line 4877
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v5, v3}, Lcom/oneplus/gallery2/media/MediaList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4878
    .local v2, "index":I
    if-ltz v2, :cond_2

    .line 4880
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v4

    .line 4881
    .local v4, "uiPosition":I
    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v5, v4, v9}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 4882
    sget-object v5, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->VIEW_DETAILS:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v5, v6, :cond_1

    .line 4883
    sget-object v5, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 4890
    .end local v2    # "index":I
    .end local v4    # "uiPosition":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x271a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4891
    invoke-direct {p0, v8, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->setUndoBarVisibility(ZZ)V

    .line 4892
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

    .line 4862
    :goto_2
    :pswitch_0
    return-void

    .line 4886
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

    .line 4896
    .end local v2    # "index":I
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    goto :goto_2

    .line 4892
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
    .line 4907
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

    .line 4914
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

    .line 4918
    if-nez p1, :cond_0

    .line 4919
    return v2

    .line 4920
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 4921
    :cond_1
    return v2

    .line 4922
    :cond_2
    if-ne p2, v2, :cond_3

    .line 4923
    const/4 p2, 0x0

    .line 4924
    :cond_3
    if-ne p3, v2, :cond_4

    .line 4925
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 4926
    :cond_4
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_6

    .line 4928
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, v0}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v1}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4930
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotatePosition(I)I

    move-result v1

    return v1

    .line 4926
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4933
    :cond_6
    return v2
.end method

.method private setButtonsEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 4940
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(ZJ)V

    .line 4938
    return-void
.end method

.method private setButtonsEnabled(ZJ)V
    .locals 4
    .param p1, "isEnabled"    # Z
    .param p2, "timeout"    # J

    .prologue
    const/16 v3, 0x2729

    .line 4944
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setButtonEnabled() - Enabled: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4945
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    if-eqz v0, :cond_0

    .line 4947
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4948
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4949
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4950
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4951
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4952
    if-eqz p1, :cond_1

    .line 4953
    invoke-static {p0, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 4942
    :cond_0
    :goto_0
    return-void

    .line 4955
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
    .line 4963
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4964
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 4966
    invoke-virtual {p1}, Lcom/oneplus/widget/ScaleImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4967
    .local v0, "selectedPosition":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v0, p2}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 4961
    .end local v0    # "selectedPosition":I
    :cond_0
    return-void
.end method

.method private setFilmstripOverScrollState()V
    .locals 2

    .prologue
    .line 4975
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFilmstripOverScrollState()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    .line 4977
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 4973
    return-void
.end method

.method private setFilmstripScrollMode(I)V
    .locals 3
    .param p1, "scrollMode"    # I

    .prologue
    .line 4985
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    if-ne v0, p1, :cond_0

    .line 4986
    return-void

    .line 4989
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFilmstripScrollMode() - Scroll mode: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4990
    iput p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripScrollMode:I

    .line 4991
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/FilmstripView;->setScrollMode(I)V

    .line 4982
    return-void
.end method

.method private setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z
    .locals 8
    .param p1, "state"    # Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4999
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5000
    .local v3, "oldState":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    if-ne v3, p1, :cond_0

    .line 5001
    return v5

    .line 5004
    :cond_0
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5007
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 5050
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 5053
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateEmptyPageVisibility()V

    .line 5055
    sget-object v4, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v4, v3, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    return v4

    .line 5011
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 5012
    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v3, v6, :cond_2

    .line 5013
    invoke-direct {p0, v5, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 5016
    :goto_1
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "galleryItem$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 5017
    .local v0, "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setProcessingBarVisibility(Z)V

    goto :goto_2

    .line 5015
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    :cond_2
    iget-boolean v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    invoke-direct {p0, v6, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_1

    .line 5022
    :pswitch_1
    sget-object v6, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_FAST:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne p1, v6, :cond_4

    move v2, v4

    .line 5023
    .local v2, "isBrowseFast":Z
    :goto_3
    if-eqz v2, :cond_5

    .line 5024
    invoke-direct {p0, v4, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    .line 5027
    :goto_4
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 5029
    .restart local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v6, :cond_3

    .line 5031
    iget-object v6, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->scaleImageView:Lcom/oneplus/widget/ScaleImageView;

    sget-object v7, Lcom/oneplus/widget/ScaleImageView$BoundsType;->FIT_SHORT_SIDE:Lcom/oneplus/widget/ScaleImageView$BoundsType;

    invoke-virtual {v6, v7}, Lcom/oneplus/widget/ScaleImageView;->setImageBounds(Lcom/oneplus/widget/ScaleImageView$BoundsType;)V

    .line 5032
    if-eqz v2, :cond_6

    .line 5033
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    if-eqz v6, :cond_6

    .line 5034
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PictureProcessService:Lcom/oneplus/camera/PictureProcessService;

    iget-object v7, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    invoke-interface {v7}, Lcom/oneplus/gallery2/media/Media;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/oneplus/camera/PictureProcessService;->isPictureProcessing(Ljava/lang/String;)Z

    move-result v6

    .line 5032
    if-eqz v6, :cond_6

    .line 5036
    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setProcessingBarVisibility(Z)V

    goto :goto_5

    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    .end local v2    # "isBrowseFast":Z
    :cond_4
    move v2, v5

    .line 5022
    goto :goto_3

    .line 5026
    .restart local v2    # "isBrowseFast":Z
    :cond_5
    invoke-direct {p0, v5, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_4

    .line 5039
    .restart local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .restart local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setProcessingBarVisibility(Z)V

    goto :goto_5

    .line 5045
    .end local v0    # "galleryItem":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v1    # "galleryItem$iterator":Ljava/util/Iterator;
    .end local v2    # "isBrowseFast":Z
    :pswitch_2
    invoke-direct {p0, v4, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->setToolbarVisibility(ZZ)V

    goto :goto_0

    .line 5007
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
    .line 5063
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    invoke-super {p0, v0, p1}, Lcom/oneplus/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5064
    const/4 v0, 0x0

    return v0

    .line 5067
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-eq v0, v1, :cond_2

    .line 5068
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    .line 5078
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 5069
    :cond_2
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->EMPTY_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    if-ne v0, v1, :cond_1

    .line 5074
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_0
.end method

.method private setPageToContentUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 5085
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->searchMediaListIndex(Landroid/net/Uri;)I

    move-result v0

    .line 5086
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 5088
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 5089
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    .line 5090
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    if-eqz v1, :cond_0

    .line 5092
    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsPreparingEditedMedia:Z

    .line 5093
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->notifyPhotoEditorRequesterReady(Landroid/net/Uri;)V

    .line 5083
    :cond_0
    :goto_0
    return-void

    .line 5097
    :cond_1
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreferredContentUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private setToolbarVisibility(ZZ)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 5115
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    .line 5118
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateToolbarVisibility(Z)V

    .line 5112
    return-void
.end method

.method private setUndoBarVisibility(ZZ)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "animation"    # Z

    .prologue
    .line 5126
    iput-boolean p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsUndoBarVisible:Z

    .line 5129
    if-eqz p1, :cond_0

    .line 5131
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v6

    .line 5132
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

    const v2, 0x7f0b0092

    invoke-virtual {v6, v2, v1}, Lcom/oneplus/camera/CameraActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5136
    .end local v6    # "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    :cond_0
    const/4 v3, 0x0

    .line 5137
    .local v3, "animFlags":I
    if-eqz p2, :cond_1

    .line 5138
    if-eqz p1, :cond_2

    const/4 v3, 0x5

    .line 5139
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const-wide/16 v4, 0x96

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5123
    return-void

    .line 5138
    :cond_2
    const/16 v3, 0x12

    goto :goto_0
.end method

.method private setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "state"    # Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .prologue
    .line 5146
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 5147
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    .line 5144
    :goto_0
    return-void

    .line 5148
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 5149
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5150
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 5151
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5152
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 5153
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5154
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 5155
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainerVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5156
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 5157
    iput-object p2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarVisibilityState:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    goto :goto_0

    .line 5159
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setViewVisibilityState() - Unknow view"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 5166
    iget-boolean v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    if-eqz v3, :cond_0

    .line 5167
    return-void

    .line 5169
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setupUI()"

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5172
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    .line 5173
    .local v1, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthPortrait:I

    .line 5174
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightPortrait:I

    .line 5175
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthLandscape:I

    .line 5176
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightLandscape:I

    .line 5177
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateMaxItemWidthHeight()V

    .line 5178
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 5179
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 5178
    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakePhotoSize:Landroid/util/Size;

    .line 5180
    new-instance v3, Landroid/util/Size;

    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 5181
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 5180
    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FakeVideoSize:Landroid/util/Size;

    .line 5182
    invoke-virtual {v1}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterBarHeight:I

    .line 5185
    const v3, 0x7f090026

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    .line 5186
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090044

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/widget/RotateRelativeLayout;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    .line 5187
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f090045

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    .line 5188
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setX(F)V

    .line 5189
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f090047

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageContainer:Landroid/view/View;

    .line 5190
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f090048

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageTouchReceiver:Landroid/view/View;

    .line 5191
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageTouchReceiver:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$31;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$31;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5200
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    const v4, 0x7f090046

    invoke-virtual {v3, v4}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oneplus/widget/FilmstripView;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    .line 5201
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/FilmstripView;->setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V

    .line 5202
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripScrollMode()V

    .line 5203
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$32;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$32;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/FilmstripView;->setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V

    .line 5226
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$33;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$33;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/widget/FilmstripView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5234
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090043

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    .line 5235
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 5238
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f09004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    .line 5239
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f09004d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainer:Landroid/view/View;

    .line 5240
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f09004b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    .line 5241
    const v3, 0x7f020008

    invoke-virtual {v1, v3}, Lcom/oneplus/camera/CameraActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5242
    .local v0, "backButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 5243
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5244
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$34;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$34;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5252
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f09004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    .line 5253
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LaunchGalleryButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$35;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$35;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5261
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    .line 5262
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    .line 5263
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$36;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$36;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5271
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f09004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    .line 5272
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f09004f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    .line 5273
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$37;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$37;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5281
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    .line 5282
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090051

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    .line 5283
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$38;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$38;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5291
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090052

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    .line 5292
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090053

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    .line 5293
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$39;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$39;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5303
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    .line 5304
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MainContainer:Landroid/view/View;

    const v4, 0x7f090057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5305
    .local v2, "undoBarTouchView":Landroid/view/View;
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$40;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$40;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5314
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const v4, 0x7f090058

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarPhotoCountView:Landroid/widget/TextView;

    .line 5315
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarContainer:Landroid/view/View;

    const v4, 0x7f090059

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarRestoreButton:Landroid/view/View;

    .line 5316
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UndoBarRestoreButton:Landroid/view/View;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$41;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$41;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5327
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateNavigationBarContainerMarginTop()V

    .line 5328
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 5330
    iput-boolean v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsSetupUI:Z

    .line 5164
    return-void
.end method

.method private sharPageDirectly(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 5368
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v1, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 5369
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$42;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$42;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/media/MediaUtils;->createSharingMediaIntent(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/IntentCallback;)V

    .line 5383
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 5365
    return-void
.end method

.method private sharePage(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 5338
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 5339
    :cond_0
    return-void

    .line 5346
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5347
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5353
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

    .line 5354
    return-void

    .line 5356
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5357
    return-void

    .line 5360
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->sharPageDirectly(I)V

    .line 5335
    return-void

    .line 5347
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
    .line 5390
    if-nez p1, :cond_0

    .line 5391
    return-void

    .line 5392
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_2

    .line 5393
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->prepareMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 5402
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    if-nez v0, :cond_3

    .line 5403
    return-void

    .line 5396
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->isItemSourceSameAsMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5398
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->releaseMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 5399
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->prepareMovieDrawable(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    goto :goto_0

    .line 5404
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " showMovieDrawable()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5405
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/MovieDrawable;->start()V

    .line 5406
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->getThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/drawable/MovieDrawable;->setThumbnailBitmap(Landroid/graphics/Bitmap;)V

    .line 5407
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MovieDrawable:Lcom/oneplus/drawable/MovieDrawable;

    invoke-virtual {p1, v0}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5387
    return-void
.end method

.method private showNoMediaHint()V
    .locals 4

    .prologue
    .line 5414
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5415
    return-void

    .line 5418
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-nez v0, :cond_1

    .line 5419
    const-class v0, Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHint;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    .line 5420
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    if-eqz v0, :cond_2

    .line 5422
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHint:Lcom/oneplus/camera/ui/OnScreenHint;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v1

    const v2, 0x7f0b0074

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHint;->showHint(Ljava/lang/CharSequence;I)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    .line 5423
    const/16 v0, 0x2738

    const-wide/16 v2, 0xbb8

    invoke-static {p0, v0, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    .line 5411
    :cond_2
    return-void
.end method

.method private showPageDetails(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 5431
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView;->isScrolling()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v1, v2, :cond_1

    .line 5432
    :cond_0
    return-void

    .line 5439
    :cond_1
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5440
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5446
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

    .line 5447
    return-void

    .line 5449
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->validatePosition(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5450
    return-void

    .line 5453
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotateMediaListIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->showPageDetailsDirectly(I)V

    .line 5428
    return-void

    .line 5440
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

    .line 5461
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/gallery2/media/Media;

    .line 5463
    .local v5, "media":Lcom/oneplus/gallery2/media/Media;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/OPCameraActivity;

    .line 5464
    .local v0, "activity":Lcom/oneplus/camera/OPCameraActivity;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.oneplus.gallery2.mediadetail"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5465
    .local v3, "intent":Landroid/content/Intent;
    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5}, Lcom/oneplus/gallery2/media/Media;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5466
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5469
    const-string/jumbo v6, "FullSensorOrientation"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5472
    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 5473
    .local v4, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 5475
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 5478
    invoke-virtual {v0}, Lcom/oneplus/camera/OPCameraActivity;->isSecurePhotoMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5483
    const-string/jumbo v6, "IsSecureMode"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5484
    invoke-virtual {v0, v3}, Lcom/oneplus/camera/OPCameraActivity;->startActivity(Landroid/content/Intent;)V

    .line 5489
    :goto_0
    iput-boolean v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsActivityPausedByAction:Z

    .line 5505
    :goto_1
    invoke-direct {p0, v9}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    .line 5458
    return-void

    .line 5487
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/oneplus/camera/OPCameraActivity;->startActivityForResultByAgent(Landroid/content/Intent;Lcom/oneplus/camera/CameraActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 5493
    :cond_1
    new-instance v1, Lcom/oneplus/gallery/MediaDetailsDialog;

    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v7

    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v6, p1}, Lcom/oneplus/gallery2/media/MediaList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/gallery2/media/Media;

    invoke-direct {v1, v7, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;-><init>(Lcom/oneplus/camera/CameraActivity;Lcom/oneplus/gallery2/media/Media;)V

    .line 5494
    .local v1, "dialog":Lcom/oneplus/gallery/MediaDetailsDialog;
    new-instance v6, Lcom/oneplus/gallery/CameraGalleryImpl$43;

    invoke-direct {v6, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$43;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v1, v6}, Lcom/oneplus/gallery/MediaDetailsDialog;->show(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1
.end method

.method private startCameraPreview()Z
    .locals 3

    .prologue
    .line 5512
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 5513
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

    .line 5519
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->startCameraPreview()Z

    .line 5520
    const/4 v1, 0x1

    return v1

    .line 5517
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 5513
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

    .line 5529
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

    .line 5526
    :cond_0
    :goto_0
    return-void

    .line 5535
    :pswitch_0
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    if-eqz v0, :cond_0

    .line 5537
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5538
    iput-boolean v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    goto :goto_0

    .line 5543
    :pswitch_1
    iget-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    if-nez v0, :cond_0

    .line 5545
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripEmptyPageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripEmptyPageVisible:Z

    goto :goto_0

    .line 5529
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

    .line 5557
    iget-boolean v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsFilmstripOverscroll:Z

    if-eqz v1, :cond_0

    .line 5559
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5560
    return-void

    .line 5563
    :cond_0
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5565
    .local v0, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5554
    :goto_0
    return-void

    .line 5570
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5571
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 5575
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5576
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 5580
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->setFilmstripScrollMode(I)V

    .line 5581
    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    goto :goto_0

    .line 5565
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

    .line 5591
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHideTranslationX()F

    move-result v1

    .line 5592
    .local v1, "hideTranslationX":F
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v7

    .line 5593
    .local v7, "x":F
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 5594
    .local v0, "alpha":F
    sub-float v8, v7, v1

    div-float/2addr v8, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 5597
    .local v6, "visibleRatio":F
    const-wide/16 v2, 0x0

    .line 5598
    .local v2, "duration":J
    move v5, v7

    .line 5599
    .local v5, "newX":F
    move v4, v0

    .line 5600
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

    .line 5621
    :goto_0
    if-eqz p1, :cond_0

    const-wide/16 v8, 0x64

    cmp-long v8, v2, v8

    if-gez v8, :cond_0

    .line 5622
    const-wide/16 v2, 0x64

    .line 5625
    :cond_0
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5626
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5627
    if-eqz p1, :cond_1

    .line 5629
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

    .line 5630
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5588
    :goto_1
    return-void

    .line 5604
    :pswitch_0
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    mul-float/2addr v8, v10

    float-to-long v2, v8

    .line 5605
    const/4 v5, 0x0

    .line 5606
    const/high16 v4, 0x3f800000    # 1.0f

    .line 5607
    goto :goto_0

    .line 5610
    :pswitch_1
    mul-float v8, v10, v6

    float-to-long v2, v8

    .line 5611
    move v5, v1

    .line 5612
    const/4 v4, 0x0

    .line 5613
    goto :goto_0

    .line 5615
    :pswitch_2
    return-void

    .line 5634
    :cond_1
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FilmstripContainer:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 5635
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_BackgroundView:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setAlpha(F)V

    .line 5636
    iget-object v8, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnFilmstripAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v8}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 5600
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
    .line 5644
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v4

    .line 5645
    .local v4, "newRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 5646
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const/4 v3, 0x0

    .line 5647
    .local v3, "marginBottom":I
    sget-object v6, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v4, v6, :cond_0

    sget-object v6, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v4, v6, :cond_1

    .line 5648
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 5651
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

    .line 5660
    :goto_1
    :pswitch_0
    iget-object v6, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_FooterContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5661
    .local v5, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v5, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 5664
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

    .line 5665
    .local v1, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    iget-object v6, v1, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    iget-boolean v7, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    invoke-static {v1, v6, v7}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_2

    .line 5650
    .end local v1    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    .end local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08002d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 5655
    :pswitch_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    .line 5642
    .restart local v2    # "item$iterator":Ljava/util/Iterator;
    .restart local v5    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 5651
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateMaxItemWidthHeight()V
    .locals 1

    .prologue
    .line 5673
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/base/Rotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5675
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthLandscape:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I

    .line 5676
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightLandscape:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I

    .line 5685
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyItemSizeChanged()V

    .line 5670
    return-void

    .line 5680
    :cond_0
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidthPortrait:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemWidth:I

    .line 5681
    iget v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeightPortrait:I

    iput v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MaxItemHeight:I

    goto :goto_0
.end method

.method private updateNavigationBarContainerMarginTop()V
    .locals 6

    .prologue
    .line 5692
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    if-nez v4, :cond_0

    .line 5693
    return-void

    .line 5694
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v2

    .line 5695
    .local v2, "newRotation":Lcom/oneplus/base/Rotation;
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 5696
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    const/4 v1, 0x0

    .line 5697
    .local v1, "marginTop":I
    sget-object v4, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    if-eq v2, v4, :cond_1

    sget-object v4, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    if-ne v2, v4, :cond_2

    .line 5698
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5701
    :goto_0
    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5702
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 5690
    return-void

    .line 5700
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method private updateRotation(Lcom/oneplus/base/Rotation;)V
    .locals 5
    .param p1, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5711
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    .line 5712
    .local v1, "prevRotation":Lcom/oneplus/base/Rotation;
    :goto_0
    if-ne v1, p1, :cond_1

    .line 5713
    return-void

    .line 5711
    .end local v1    # "prevRotation":Lcom/oneplus/base/Rotation;
    :cond_0
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    goto :goto_0

    .line 5716
    .restart local v1    # "prevRotation":Lcom/oneplus/base/Rotation;
    :cond_1
    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TranslationXRange:Landroid/util/Range;

    .line 5717
    iput-boolean v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsScaleImageOverScaledDown:Z

    .line 5720
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItemsPool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 5723
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v2

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->checkToUseRevert(Lcom/oneplus/base/Rotation;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 5725
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v0

    .line 5726
    .local v0, "newPosition":I
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Filmstrip:Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v2, v0, v4}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    .line 5729
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 5730
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->revertPosition(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeletingPosition:Ljava/lang/Integer;

    .line 5733
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->notifyDataSetChanged()V

    .line 5737
    .end local v0    # "newPosition":I
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-eqz v2, :cond_4

    .line 5738
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    invoke-virtual {v2, p1}, Lcom/oneplus/camera/widget/RotateRelativeLayout;->setRotation(Lcom/oneplus/base/Rotation;)V

    .line 5741
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateNavigationBarContainerMarginTop()V

    .line 5744
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFooterContainerMarginBottom()V

    .line 5747
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

    .line 5756
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    .line 5760
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateMaxItemWidthHeight()V

    .line 5763
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

    .line 5771
    :goto_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    if-eqz v2, :cond_5

    .line 5772
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CurrentScaleImageGestureReceiver:Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap0(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    .line 5775
    :cond_5
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    .line 5708
    return-void

    .line 5753
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateFilmstripViewTranslation(Z)V

    goto :goto_1

    .line 5766
    :pswitch_1
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BROWSE_SINGLE_PAGE:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    invoke-direct {p0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setGalleryStateProp(Lcom/oneplus/camera/ui/CameraGallery$GalleryState;)Z

    goto :goto_2

    .line 5747
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 5763
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
    .end packed-switch
.end method

.method private updateToolbarVisibility(Z)V
    .locals 27
    .param p1, "animation"    # Z

    .prologue
    .line 5784
    sget-object v2, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    .line 5785
    .local v26, "state":Lcom/oneplus/camera/ui/CameraGallery$GalleryState;
    sget-object v2, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->BACKGROUND:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    move-object/from16 v0, v26

    if-ne v0, v2, :cond_0

    .line 5786
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    .line 5787
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canShareButtonVisible()Z

    move-result v8

    .line 5788
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canEditButtonVisible()Z

    move-result v12

    .line 5789
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canDetailsButtonVisible()Z

    move-result v16

    .line 5790
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->canDeleteButtonVisible()Z

    move-result v20

    .line 5791
    :goto_3
    const/4 v5, 0x0

    .line 5792
    .local v5, "navFlags":I
    const/4 v9, 0x0

    .line 5793
    .local v9, "shareFlags":I
    const/4 v13, 0x0

    .line 5794
    .local v13, "editFlags":I
    const/16 v17, 0x0

    .line 5795
    .local v17, "detailsFlags":I
    const/16 v21, 0x0

    .line 5796
    .local v21, "deleteFlags":I
    if-eqz p1, :cond_1

    .line 5798
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-camera-ui-CameraGallery$GalleryStateSwitchesValues()[I

    move-result-object v2

    invoke-virtual/range {v26 .. v26}, Lcom/oneplus/camera/ui/CameraGallery$GalleryState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 5809
    :goto_4
    if-eqz v8, :cond_8

    const/4 v9, 0x5

    .line 5810
    :goto_5
    if-eqz v12, :cond_9

    const/4 v13, 0x5

    .line 5811
    :goto_6
    if-eqz v16, :cond_a

    const/16 v17, 0x5

    .line 5812
    :goto_7
    if-eqz v20, :cond_b

    const/16 v21, 0x5

    .line 5816
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NavigationBarContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    const-wide/16 v6, 0x96

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5817
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ShareContainer:Landroid/view/View;

    const-wide/16 v10, 0x96

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5818
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_EditContainer:Landroid/view/View;

    const-wide/16 v14, 0x96

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5819
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DetailsContainer:Landroid/view/View;

    const-wide/16 v18, 0x96

    move-object/from16 v14, p0

    invoke-direct/range {v14 .. v19}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_DeleteContainer:Landroid/view/View;

    move-object/from16 v19, v0

    const-wide/16 v22, 0x96

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateViewVisibility(Landroid/view/View;ZIJ)V

    .line 5823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, "item$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 5824
    .local v24, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->media:Lcom/oneplus/gallery2/media/Media;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;->-wrap2(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;Lcom/oneplus/gallery2/media/Media;Z)V

    goto :goto_9

    .line 5787
    .end local v5    # "navFlags":I
    .end local v9    # "shareFlags":I
    .end local v13    # "editFlags":I
    .end local v17    # "detailsFlags":I
    .end local v21    # "deleteFlags":I
    .end local v24    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    .end local v25    # "item$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v8, 0x0

    .local v8, "shareVisible":Z
    goto/16 :goto_0

    .line 5788
    .end local v8    # "shareVisible":Z
    :cond_3
    const/4 v12, 0x0

    .local v12, "editVisible":Z
    goto/16 :goto_1

    .line 5789
    .end local v12    # "editVisible":Z
    :cond_4
    const/16 v16, 0x0

    .local v16, "detailsVisible":Z
    goto/16 :goto_2

    .line 5790
    .end local v16    # "detailsVisible":Z
    :cond_5
    const/16 v20, 0x0

    .local v20, "deleteVisible":Z
    goto/16 :goto_3

    .line 5802
    .end local v20    # "deleteVisible":Z
    .restart local v5    # "navFlags":I
    .restart local v9    # "shareFlags":I
    .restart local v13    # "editFlags":I
    .restart local v17    # "detailsFlags":I
    .restart local v21    # "deleteFlags":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_6

    const/16 v5, 0x9

    goto/16 :goto_4

    :cond_6
    const/16 v5, 0x22

    goto/16 :goto_4

    .line 5806
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsToolbarVisible:Z

    if-eqz v2, :cond_7

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_7
    const/4 v5, 0x2

    goto/16 :goto_4

    .line 5809
    :cond_8
    const/16 v9, 0x12

    goto/16 :goto_5

    .line 5810
    :cond_9
    const/16 v13, 0x12

    goto/16 :goto_6

    .line 5811
    :cond_a
    const/16 v17, 0x12

    goto/16 :goto_7

    .line 5812
    :cond_b
    const/16 v21, 0x12

    goto/16 :goto_8

    .line 5781
    .restart local v25    # "item$iterator":Ljava/util/Iterator;
    :cond_c
    return-void

    .line 5798
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
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

    .line 5832
    if-nez p1, :cond_0

    .line 5833
    return-void

    .line 5834
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl;->getViewVisibilityState(Landroid/view/View;)Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    move-result-object v0

    .line 5840
    .local v0, "visibilityState":Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;
    if-eqz p2, :cond_8

    .line 5842
    if-eqz p3, :cond_7

    .line 5844
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5872
    :goto_0
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 5873
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 5874
    :cond_1
    and-int/lit8 v1, p3, 0xc

    if-eqz v1, :cond_2

    .line 5875
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 5876
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_3

    .line 5877
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 5878
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$44;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$44;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5888
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->IN_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    .line 5829
    :goto_1
    return-void

    .line 5848
    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5849
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_4

    .line 5850
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 5853
    :goto_2
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_5

    .line 5854
    invoke-virtual {p1, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 5852
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 5855
    :cond_5
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_6

    .line 5856
    invoke-virtual {p1, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 5858
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 5863
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    .line 5868
    :pswitch_2
    return-void

    .line 5893
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5894
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 5895
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 5898
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->VISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto :goto_1

    .line 5903
    :cond_8
    if-eqz p3, :cond_d

    .line 5905
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-getcom-oneplus-gallery-CameraGalleryImpl$ViewVisibilityStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 5924
    :goto_3
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_9

    .line 5925
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 5926
    :cond_9
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_c

    .line 5927
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 5930
    :cond_a
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-lez v1, :cond_b

    .line 5931
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 5932
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/oneplus/gallery/CameraGalleryImpl$45;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gallery/CameraGalleryImpl$45;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 5943
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->OUT_ANIMATING:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto/16 :goto_1

    .line 5909
    :pswitch_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 5910
    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_3

    .line 5915
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_3

    .line 5920
    :pswitch_5
    return-void

    .line 5928
    :cond_c
    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_a

    .line 5929
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    .line 5948
    :cond_d
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5951
    sget-object v1, Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;->INVISIBLE:Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->setViewVisibilityState(Landroid/view/View;Lcom/oneplus/gallery/CameraGalleryImpl$ViewVisibilityState;)V

    goto/16 :goto_1

    .line 5844
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 5905
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

    .line 5960
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5961
    const/4 v0, 0x1

    return v0

    .line 5962
    :cond_0
    return v1
.end method


# virtual methods
.method public addTempThumbnailImage(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "thumb"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->verifyAccess()V

    .line 1801
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isRunningOrInitializing(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1802
    return-void

    .line 1805
    :cond_0
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v0, v1, :cond_1

    .line 1806
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1809
    :cond_1
    if-nez p1, :cond_2

    .line 1811
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addTempThumbnailImage() - No content URI"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    return-void

    .line 1814
    :cond_2
    if-nez p2, :cond_3

    .line 1815
    return-void

    .line 1818
    :cond_3
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1819
    return-void

    .line 1820
    :cond_4
    sget-object v0, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v0, p1}, Lcom/oneplus/media/BitmapPool;->getCachedBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1821
    return-void

    .line 1824
    :cond_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addTempThumbnailImage() - Add temp thumbnail image for "

    invoke-static {v0, v1, p1}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1825
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_TempThumbnailImages:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1797
    return-void
.end method

.method public closeFilmstripDirectly()V
    .locals 2

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeFilmstripDirectly()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2166
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 2167
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2169
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$14;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$14;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeFilmstripDirectly() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2182
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
    .line 2637
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_GALLERY_STATE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryState:Lcom/oneplus/camera/ui/CameraGallery$GalleryState;

    return-object v0

    .line 2639
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

    .line 2767
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2796
    invoke-super {p0, p1}, Lcom/oneplus/camera/UIComponent;->handleMessage(Landroid/os/Message;)V

    .line 2765
    :goto_0
    return-void

    .line 2770
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->closeFilmstrip(Z)V

    goto :goto_0

    .line 2774
    :sswitch_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->deleteMediaInfoFromRecycler()V

    goto :goto_0

    .line 2778
    :sswitch_2
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->decodeThumbnailImages()V

    goto :goto_0

    .line 2782
    :sswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_OnScreenHintHandle:Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 2786
    :sswitch_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setButtonsEnabled(Z)V

    goto :goto_0

    .line 2790
    :sswitch_5
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v0}, Lcom/oneplus/gallery2/media/MediaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2791
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->openFilmstrip()V

    goto :goto_0

    .line 2793
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->showNoMediaHint()V

    goto :goto_0

    .line 2767
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

    .line 3025
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v2, :cond_0

    .line 3026
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaList;->release()V

    .line 3029
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    if-eqz v2, :cond_1

    .line 3030
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    invoke-interface {v2}, Lcom/oneplus/gallery2/media/MediaSet;->release()V

    .line 3033
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v2, :cond_2

    .line 3034
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget-object v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NewMediaIntentReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3037
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3040
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    invoke-static {v2}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    .line 3043
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->cancelDecodingImages()V

    .line 3046
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    .line 3047
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3048
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_4

    .line 3050
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3051
    iput-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PhotoEditorMediaSavedReceiver:Landroid/content/BroadcastReceiver;

    .line 3055
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;

    .line 3056
    .local v0, "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->recycleGalleryItem(Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;)V

    goto :goto_0

    .line 3057
    .end local v0    # "item":Lcom/oneplus/gallery/CameraGalleryImpl$GalleryItem;
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GalleryItems:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3060
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onDeinitialize()V

    .line 3022
    return-void
.end method

.method protected onInitialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3320
    invoke-super {p0}, Lcom/oneplus/camera/UIComponent;->onInitialize()V

    .line 3321
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getCameraActivity()Lcom/oneplus/camera/CameraActivity;

    move-result-object v0

    .line 3324
    .local v0, "cameraActivity":Lcom/oneplus/camera/CameraActivity;
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v3

    const-class v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-virtual {v3, v4}, Lcom/oneplus/base/BaseApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    .line 3325
    const-class v3, Lcom/oneplus/camera/PictureProcessService;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$17;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$17;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;Lcom/oneplus/base/component/ComponentSearchCallback;)Z

    .line 3354
    const-class v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_CaptureModeSwitcher:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 3357
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getRotation()Lcom/oneplus/base/Rotation;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LastRotation:Lcom/oneplus/base/Rotation;

    .line 3360
    invoke-virtual {v0}, Lcom/oneplus/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3361
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f080039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ProcessingBarMarginTop:I

    .line 3362
    const v3, 0x7f080026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingHorz:I

    .line 3363
    const v3, 0x7f080027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ItemsControlContainerPaddingVert:I

    .line 3366
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v3, :cond_9

    .line 3368
    new-instance v3, Lcom/oneplus/gallery2/media/CameraRollMediaSet;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    invoke-direct {v3, v4, v5}, Lcom/oneplus/gallery2/media/CameraRollMediaSet;-><init>(Lcom/oneplus/gallery2/media/MediaStoreMediaSource;Lcom/oneplus/gallery2/media/MediaType;)V

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    .line 3369
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSet:Lcom/oneplus/gallery2/media/MediaSet;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaComparator;->TAKEN_TIME_DESC:Lcom/oneplus/gallery2/media/MediaComparator;

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/oneplus/gallery2/media/MediaSet;->openMediaList(Lcom/oneplus/gallery2/media/MediaComparator;II)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3370
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v3}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3371
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    invoke-direct {v3, p0, v4}, Lcom/oneplus/gallery/CameraGalleryImpl$SecureModeMediaList;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/MediaList;)V

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    .line 3377
    :cond_0
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallback:Lcom/oneplus/gallery2/media/MediaChangeCallback;

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addMediaChangedCallback(Lcom/oneplus/gallery2/media/MediaChangeCallback;)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaChangeCallbackHandle:Lcom/oneplus/base/Handle;

    .line 3380
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v3, :cond_1

    .line 3381
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSourceActivationHandle:Lcom/oneplus/base/Handle;

    .line 3384
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->setupUI()V

    .line 3387
    const-class v3, Lcom/oneplus/camera/ui/GestureDetector;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/GestureDetector;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    .line 3388
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v3, :cond_2

    .line 3389
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    iget-object v4, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_GestureHandler:Lcom/oneplus/camera/ui/BaseGestureHandler;

    invoke-interface {v3, v4, v6}, Lcom/oneplus/camera/ui/GestureDetector;->setGestureHandler(Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)Lcom/oneplus/base/Handle;

    .line 3392
    :cond_2
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3393
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 3394
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3395
    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_SmallThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 3396
    :cond_4
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    invoke-static {v3}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3397
    sget-object v3, Lcom/oneplus/gallery/CameraGalleryImpl;->LARGE_VIDEO_DECODER:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_LargeVideoThumbBmpPoolActivateHandle:Lcom/oneplus/base/Handle;

    .line 3400
    :cond_5
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_CAMERA_PREVIEW_RECEIVED:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$18;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$18;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3419
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_PHOTO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$19;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$19;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3439
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_VIDEO_CAPTURE_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$20;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$20;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3457
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$21;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$21;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3531
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_BURST_PHOTO_ON_CAPTURE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$22;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$22;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3545
    sget-object v3, Lcom/oneplus/camera/CameraActivity;->PROP_IS_SECURE_MODE:Lcom/oneplus/base/PropertyKey;

    new-instance v4, Lcom/oneplus/gallery/CameraGalleryImpl$23;

    invoke-direct {v4, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$23;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/camera/CameraActivity;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3569
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    if-eqz v3, :cond_6

    .line 3570
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaSource:Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->EVENT_NEW_MEDIA_INTENT_RECEIVED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_NewMediaIntentReceivedHandler:Lcom/oneplus/base/EventHandler;

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3573
    :cond_6
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-nez v3, :cond_7

    .line 3575
    const-class v3, Lcom/oneplus/camera/ui/PreviewCover;

    invoke-virtual {p0, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v3

    check-cast v3, Lcom/oneplus/camera/ui/PreviewCover;

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    .line 3576
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    if-eqz v3, :cond_7

    .line 3578
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_PreviewCover:Lcom/oneplus/camera/ui/PreviewCover;

    sget-object v4, Lcom/oneplus/camera/ui/PreviewCover;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    new-instance v5, Lcom/oneplus/gallery/CameraGalleryImpl$24;

    invoke-direct {v5, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$24;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-interface {v3, v4, v5}, Lcom/oneplus/camera/ui/PreviewCover;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 3614
    :cond_7
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    if-eqz v3, :cond_8

    .line 3616
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_ADDED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaAddedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3617
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3618
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_REMOVING:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaRemovingEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3619
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;

    sget-object v4, Lcom/oneplus/gallery2/media/MediaList;->EVENT_MEDIA_MOVED:Lcom/oneplus/base/EventKey;

    iget-object v5, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_MediaMovedEventHandler:Lcom/oneplus/base/EventHandler;

    invoke-interface {v3, v4, v5}, Lcom/oneplus/gallery2/media/MediaList;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    .line 3624
    :cond_8
    new-instance v3, Lcom/oneplus/gallery/CameraGalleryImpl$25;

    invoke-direct {v3, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$25;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    iput-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 3640
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.oneplus.camera.service.CLEAR_IMAGE_CACHE"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3641
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_ClearCacheReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v1}, Lcom/oneplus/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3317
    return-void

    .line 3374
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_9
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "No MediaStoreMediaSource"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3648
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 3649
    :cond_0
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 3651
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Lcom/oneplus/camera/KeyEventHandler$KeyResult;
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3658
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 3660
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->OPENED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-ne v0, v1, :cond_2

    .line 3662
    invoke-direct {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->navigateBack()V

    .line 3663
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 3666
    :cond_0
    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 3667
    :cond_1
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->HANDLED_AND_PASS_TO_SYSTEM:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0

    .line 3668
    :cond_2
    sget-object v0, Lcom/oneplus/camera/KeyEventHandler$KeyResult;->NOT_HANDLED:Lcom/oneplus/camera/KeyEventHandler$KeyResult;

    return-object v0
.end method

.method protected onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "prevRotation"    # Lcom/oneplus/base/Rotation;
    .param p2, "newRotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 4118
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->onRotationChanged(Lcom/oneplus/base/Rotation;Lcom/oneplus/base/Rotation;)V

    .line 4121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 4122
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_UI_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_RotateContainer:Lcom/oneplus/camera/widget/RotateRelativeLayout;

    if-nez v0, :cond_1

    .line 4124
    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->updateRotation(Lcom/oneplus/base/Rotation;)V

    .line 4125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_IsRotatingContainer:Z

    .line 4115
    :goto_0
    return-void

    .line 4129
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
    .line 4569
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstripDirectly()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4571
    sget-object v0, Lcom/oneplus/camera/ui/CameraGallery$UIState;->CLOSED:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    iput-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->m_UIStateOnDraggingStart:Lcom/oneplus/camera/ui/CameraGallery$UIState;

    .line 4572
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->isDependencyThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4574
    invoke-virtual {p0}, Lcom/oneplus/gallery/CameraGalleryImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/gallery/CameraGalleryImpl$28;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery/CameraGalleryImpl$28;-><init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4583
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "openFilmstripDirectly() - Fail to perform cross-thread operation"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4567
    :cond_0
    :goto_0
    return-void

    .line 4587
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
    .line 5105
    .local p1, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<TTValue;>;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl;->PROP_IS_MEDIA_LIST_EMPTY:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    .line 5106
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TTValue;"
    invoke-direct {p0, p2}, Lcom/oneplus/gallery/CameraGalleryImpl;->setIsMediaListEmptyProp(Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    .line 5107
    .restart local p2    # "value":Ljava/lang/Object;, "TTValue;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/camera/UIComponent;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
