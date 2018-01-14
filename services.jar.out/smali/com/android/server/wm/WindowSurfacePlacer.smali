.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;
    }
.end annotation


# static fields
.field static final SET_FORCE_HIDING_CHANGED:I = 0x4

.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x8

.field static final SET_TURN_ON_SCREEN:I = 0x10

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x20

.field static final SET_WALLPAPER_MAY_CHANGE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonBrightness:F

.field private mDeferDepth:I

.field private mDisplayHasContent:Z

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mInLayout:Z

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mLayoutRepeatCount:I

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field private mObscured:Z

.field mObsuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private final mPendingDestroyingSurfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredModeId:I

.field private mPreferredRefreshRate:F

.field private mScreenBrightness:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private mSyswin:Z

.field private final mTmpContentRect:Landroid/graphics/Rect;

.field private final mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

.field private final mTmpStartRect:Landroid/graphics/Rect;

.field private mTraversalScheduled:Z

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field private final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 109
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 118
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 119
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 120
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 122
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 123
    iput v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 124
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 125
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    .line 126
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    .line 131
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 139
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 142
    iput v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 144
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 149
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 151
    iput-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 157
    new-instance v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    invoke-direct {v0, v3}, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;-><init>(Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    .line 162
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 161
    return-void
.end method

.method private applySurfaceChangesTransaction(ZIII)V
    .locals 34
    .param p1, "recoveringMemory"    # Z
    .param p2, "numDisplays"    # I
    .param p3, "defaultDw"    # I
    .param p4, "defaultDh"    # I

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 598
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_1

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 601
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v4, :cond_2

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    .line 603
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 602
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 605
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_3

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    .line 607
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 606
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 610
    :cond_3
    const/16 v19, 0x0

    .line 612
    .local v19, "focusDisplayed":Z
    const/16 v16, 0x0

    .local v16, "displayNdx":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_33

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/DisplayContent;

    .line 614
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/16 v30, 0x0

    .line 615
    .local v30, "updateAllDrawn":Z
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v33

    .line 616
    .local v33, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .line 617
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 618
    .local v5, "displayId":I
    iget v0, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v17, v0

    .line 619
    .local v17, "dw":I
    iget v13, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 620
    .local v13, "dh":I
    iget v0, v15, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v22, v0

    .line 621
    .local v22, "innerDw":I
    iget v0, v15, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v21, v0

    .line 622
    .local v21, "innerDh":I
    if-nez v5, :cond_1a

    const/16 v23, 0x1

    .line 625
    .local v23, "isDefaultDisplay":Z
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 626
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 627
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 629
    const/16 v26, 0x0

    .line 631
    .local v26, "repeats":I
    :goto_2
    add-int/lit8 v26, v26, 0x1

    .line 632
    const/4 v4, 0x6

    move/from16 v0, v26

    if-le v0, v4, :cond_1b

    .line 633
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Animation repeat aborted after too many iterations"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v4, 0x0

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 688
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 689
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 690
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->resetDimming()V

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_26

    const/16 v27, 0x0

    .line 695
    .local v27, "someoneLosingFocus":Z
    :goto_3
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .local v20, "i":I
    :goto_4
    if-ltz v20, :cond_31

    .line 696
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    .line 697
    .local v31, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v28

    .line 698
    .local v28, "task":Lcom/android/server/wm/Task;
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-eq v4, v6, :cond_27

    const/16 v25, 0x1

    .line 701
    .local v25, "obscuredChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mObscured:Z

    .line 702
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-nez v4, :cond_5

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v15}, Lcom/android/server/wm/WindowSurfacePlacer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V

    .line 706
    :cond_5
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->applyDimLayerIfNeeded()V

    .line 708
    if-eqz v23, :cond_6

    if-eqz v25, :cond_6

    .line 709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    .line 708
    if-eqz v4, :cond_6

    .line 709
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    .line 708
    if-eqz v4, :cond_6

    .line 713
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    .line 716
    :cond_6
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v32, v0

    .line 722
    .local v32, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 725
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    .line 726
    .local v24, "left":I
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    .line 727
    .local v29, "top":I
    if-eqz v28, :cond_29

    .line 728
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v4

    if-nez v4, :cond_28

    .line 729
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v10

    .line 730
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 731
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_7

    .line 732
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 740
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v4, :cond_8

    .line 741
    if-nez v5, :cond_8

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 745
    :cond_8
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 746
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string/jumbo v6, "moved"

    invoke-static {v4, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 752
    :cond_9
    :try_start_0
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move/from16 v0, v24

    move/from16 v1, v29

    invoke-interface {v4, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 759
    .end local v24    # "left":I
    .end local v29    # "top":I
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, v31

    iput-boolean v4, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 762
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_f

    .line 764
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v12

    .line 765
    .local v12, "committed":Z
    if-eqz v23, :cond_d

    if-eqz v12, :cond_d

    .line 766
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7e7

    if-ne v4, v6, :cond_b

    .line 771
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 773
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_b

    .line 774
    const-string/jumbo v4, "dream and commitFinishDrawingLocked true"

    .line 775
    iget v6, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 774
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 778
    :cond_b
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    and-int/2addr v4, v6

    if-eqz v4, :cond_d

    .line 779
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v4, :cond_c

    .line 780
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "First draw done in potential wallpaper target "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 782
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 783
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_d

    .line 784
    const-string/jumbo v4, "wallpaper and commitFinishDrawingLocked true"

    .line 785
    iget v6, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 784
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 789
    :cond_d
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationStarting()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->isWaitingForOpening()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 800
    :cond_e
    :goto_9
    move-object/from16 v0, v32

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->setSurfaceBoundariesLocked(Z)V

    .line 803
    .end local v12    # "committed":Z
    :cond_f
    move-object/from16 v0, v31

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 804
    .local v11, "atoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_10

    if-eqz v11, :cond_10

    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-ne v0, v4, :cond_10

    .line 805
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateWindows: starting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 806
    const-string/jumbo v7, " isOnScreen="

    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 806
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v7

    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 806
    const-string/jumbo v7, " allDrawn="

    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 806
    iget-boolean v7, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 807
    const-string/jumbo v7, " freezingScreen="

    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 807
    iget-object v7, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 805
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_10
    if-eqz v11, :cond_18

    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v4, :cond_11

    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-eqz v4, :cond_11

    .line 810
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 809
    if-eqz v4, :cond_18

    .line 811
    :cond_11
    iget-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-eqz v4, :cond_12

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v6, v4

    iput-wide v6, v11, Lcom/android/server/wm/AppWindowToken;->lastTransactionSequence:J

    .line 813
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 814
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 815
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 816
    const/4 v4, 0x0

    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 818
    :cond_12
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v4, :cond_17

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 819
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_13

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_14

    .line 820
    :cond_13
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Eval win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": isDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 821
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v7

    .line 820
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 822
    const-string/jumbo v7, ", isAnimationSet="

    .line 820
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 822
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v7

    .line 820
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-nez v4, :cond_14

    .line 824
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Not displayed: s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 825
    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 826
    const-string/jumbo v7, " pv="

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 826
    move-object/from16 v0, v31

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 827
    const-string/jumbo v7, " mDrawState="

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 827
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v7

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 828
    const-string/jumbo v7, " ah="

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 828
    move-object/from16 v0, v31

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 829
    const-string/jumbo v7, " th="

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 829
    iget-boolean v7, v11, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 830
    const-string/jumbo v7, " a="

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 830
    move-object/from16 v0, v32

    iget-boolean v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    .line 824
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_14
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-eq v0, v4, :cond_2d

    .line 834
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 835
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 836
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 837
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 838
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_15

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_16

    .line 839
    :cond_15
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tokenMayBeDrawn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 840
    const-string/jumbo v7, " w="

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 840
    const-string/jumbo v7, " numInteresting="

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 841
    iget v7, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 842
    const-string/jumbo v7, " freezingScreen="

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 843
    iget-object v7, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 844
    const-string/jumbo v7, " mAppFreezing="

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 844
    move-object/from16 v0, v31

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 839
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_16
    const/16 v30, 0x1

    .line 853
    :cond_17
    :goto_a
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v4, :cond_18

    .line 854
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn(Z)Z

    move-result v4

    .line 853
    if-eqz v4, :cond_18

    .line 855
    iget-object v4, v11, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-eq v0, v4, :cond_18

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 856
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 857
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isAnimatingWithSavedSurface()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 872
    :cond_18
    :goto_b
    if-eqz v23, :cond_19

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v31

    if-ne v0, v4, :cond_19

    .line 873
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    .line 872
    if-eqz v4, :cond_19

    .line 874
    const/16 v19, 0x1

    .line 877
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->updateResizingWindows(Lcom/android/server/wm/WindowState;)V

    .line 695
    add-int/lit8 v20, v20, -0x1

    goto/16 :goto_4

    .line 622
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v20    # "i":I
    .end local v23    # "isDefaultDisplay":Z
    .end local v25    # "obscuredChanged":Z
    .end local v26    # "repeats":I
    .end local v27    # "someoneLosingFocus":Z
    .end local v28    # "task":Lcom/android/server/wm/Task;
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    .end local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_1a
    const/16 v23, 0x0

    .restart local v23    # "isDefaultDisplay":Z
    goto/16 :goto_1

    .line 638
    .restart local v26    # "repeats":I
    :cond_1b
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_1c

    .line 639
    const-string/jumbo v4, "On entry to LockedInner"

    iget v6, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 638
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 641
    :cond_1c
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1d

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()Z

    move-result v4

    .line 641
    if-eqz v4, :cond_1d

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 644
    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 647
    :cond_1d
    if-eqz v23, :cond_1f

    .line 648
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1f

    .line 649
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v4, :cond_1e

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Computing new config from layout"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 651
    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 652
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x12

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 656
    :cond_1f
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_20

    .line 657
    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 661
    :cond_20
    const/4 v4, 0x4

    move/from16 v0, v26

    if-ge v0, v4, :cond_23

    .line 662
    const/4 v4, 0x1

    move/from16 v0, v26

    if-ne v0, v4, :cond_22

    const/4 v4, 0x1

    .line 663
    :goto_c
    const/4 v6, 0x0

    .line 662
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V

    .line 670
    :goto_d
    const/4 v4, 0x0

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 672
    if-eqz v23, :cond_25

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move/from16 v0, v17

    invoke-interface {v4, v0, v13}, Landroid/view/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    .line 674
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .restart local v20    # "i":I
    :goto_e
    if-ltz v20, :cond_24

    .line 675
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/wm/WindowState;

    .line 676
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_21

    .line 677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v31

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 678
    move-object/from16 v0, v31

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 677
    move-object/from16 v0, v31

    invoke-interface {v4, v0, v6, v7}, Landroid/view/WindowManagerPolicy;->applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 674
    :cond_21
    add-int/lit8 v20, v20, -0x1

    goto :goto_e

    .line 662
    .end local v20    # "i":I
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    :cond_22
    const/4 v4, 0x0

    goto :goto_c

    .line 665
    :cond_23
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Layout repeat skipped after too many iterations"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 681
    .restart local v20    # "i":I
    :cond_24
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 682
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v6

    .line 681
    or-int/2addr v4, v6

    iput v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 683
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v4, :cond_25

    const-string/jumbo v4, "after finishPostLayoutPolicyLw"

    .line 684
    iget v6, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 683
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 686
    .end local v20    # "i":I
    :cond_25
    iget v4, v14, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v4, :cond_4

    goto/16 :goto_2

    .line 693
    :cond_26
    const/16 v27, 0x1

    .restart local v27    # "someoneLosingFocus":Z
    goto/16 :goto_3

    .line 698
    .restart local v20    # "i":I
    .restart local v28    # "task":Lcom/android/server/wm/Task;
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    :cond_27
    const/16 v25, 0x0

    .restart local v25    # "obscuredChanged":Z
    goto/16 :goto_5

    .line 728
    .restart local v24    # "left":I
    .restart local v29    # "top":I
    .restart local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_28
    const/4 v10, 0x1

    .local v10, "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_6

    .line 727
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_29
    const/4 v10, 0x0

    .restart local v10    # "adjustedForMinimizedDockOrIme":Z
    goto/16 :goto_6

    .line 732
    .end local v10    # "adjustedForMinimizedDockOrIme":Z
    :cond_2a
    if-nez v10, :cond_7

    .line 733
    if-eqz v28, :cond_2b

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->hasMovementAnimations()Z

    move-result v4

    .line 731
    if-eqz v4, :cond_7

    .line 734
    :cond_2b
    move-object/from16 v0, v31

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v4, :cond_7

    .line 735
    move-object/from16 v0, v32

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setMoveAnimation(II)V

    goto/16 :goto_7

    .line 798
    .end local v24    # "left":I
    .end local v29    # "top":I
    .restart local v12    # "committed":Z
    :cond_2c
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    goto/16 :goto_9

    .line 848
    .end local v12    # "committed":Z
    .restart local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2d
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x32

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 850
    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    goto/16 :goto_a

    .line 858
    :cond_2e
    iget v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 859
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v4, :cond_2f

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_30

    .line 860
    :cond_2f
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tokenMayBeDrawnExcludingSaved: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 861
    const-string/jumbo v7, " w="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 861
    const-string/jumbo v7, " numInteresting="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 862
    iget v7, v11, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 863
    const-string/jumbo v7, " freezingScreen="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 864
    iget-object v7, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 865
    const-string/jumbo v7, " mAppFreezing="

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 865
    move-object/from16 v0, v31

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_30
    const/16 v30, 0x1

    goto/16 :goto_b

    .line 880
    .end local v11    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v25    # "obscuredChanged":Z
    .end local v28    # "task":Lcom/android/server/wm/Task;
    .end local v31    # "w":Lcom/android/server/wm/WindowState;
    .end local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 881
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 882
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 883
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 884
    const/4 v9, 0x1

    .line 880
    invoke-virtual/range {v4 .. v9}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->stopDimmingIfNeeded()V

    .line 888
    if-eqz v30, :cond_32

    .line 889
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 612
    :cond_32
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 893
    .end local v5    # "displayId":I
    .end local v13    # "dh":I
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v17    # "dw":I
    .end local v20    # "i":I
    .end local v21    # "innerDh":I
    .end local v22    # "innerDw":I
    .end local v23    # "isDefaultDisplay":Z
    .end local v26    # "repeats":I
    .end local v27    # "someoneLosingFocus":Z
    .end local v30    # "updateAllDrawn":Z
    .end local v33    # "windows":Lcom/android/server/wm/WindowList;
    :cond_33
    if-eqz v19, :cond_34

    .line 894
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 899
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->performTraversalInTransactionFromWindowManager()V

    .line 594
    return-void

    .line 753
    .restart local v5    # "displayId":I
    .restart local v13    # "dh":I
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v17    # "dw":I
    .restart local v20    # "i":I
    .restart local v21    # "innerDh":I
    .restart local v22    # "innerDw":I
    .restart local v23    # "isDefaultDisplay":Z
    .restart local v24    # "left":I
    .restart local v25    # "obscuredChanged":Z
    .restart local v26    # "repeats":I
    .restart local v27    # "someoneLosingFocus":Z
    .restart local v28    # "task":Lcom/android/server/wm/Task;
    .restart local v29    # "top":I
    .restart local v30    # "updateAllDrawn":Z
    .restart local v31    # "w":Lcom/android/server/wm/WindowState;
    .restart local v32    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v33    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v18

    .local v18, "e":Landroid/os/RemoteException;
    goto/16 :goto_8
.end method

.method private createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V
    .locals 22
    .param p1, "transit"    # I
    .param p2, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "openingLayer"    # I
    .param p4, "closingLayer"    # I

    .prologue
    .line 1661
    if-nez p2, :cond_1

    const/16 v18, 0x0

    .line 1662
    .local v18, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :goto_0
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v3, :cond_2

    .line 1663
    :cond_0
    return-void

    .line 1661
    .end local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v18, v0

    goto :goto_0

    .line 1665
    .restart local v18    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget v0, v3, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v19, v0

    .line 1666
    .local v19, "taskId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1667
    .local v20, "thumbnailHeader":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v3, v6, :cond_5

    .line 1668
    :cond_3
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No thumbnail header bitmap for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_4
    return-void

    .line 1673
    :cond_5
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v12, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1676
    .local v12, "dirty":Landroid/graphics/Rect;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    .line 1677
    .local v14, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v13

    .line 1678
    .local v13, "display":Landroid/view/Display;
    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .line 1681
    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v2, Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    .line 1682
    const-string/jumbo v4, "thumbnail anim"

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 1683
    const/4 v7, -0x3

    const/4 v8, 0x4

    .line 1681
    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 1684
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-virtual {v13}, Landroid/view/Display;->getLayerStack()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1685
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_6

    .line 1686
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  THUMBNAIL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": CREATE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_6
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .line 1691
    .local v16, "drawSurface":Landroid/view/Surface;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1692
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v11

    .line 1693
    .local v11, "c":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1694
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1695
    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->release()V

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionAspectScaled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1703
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v21

    .line 1704
    .local v21, "win":Lcom/android/server/wm/WindowState;
    if-eqz v21, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    .line 1706
    .local v4, "appRect":Landroid/graphics/Rect;
    :goto_1
    if-eqz v21, :cond_8

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 1711
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1712
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v8, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 1713
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v9, v6, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v6, v20

    move/from16 v7, v19

    .line 1711
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;III)Landroid/view/animation/Animation;

    move-result-object v10

    .line 1714
    .local v10, "anim":Landroid/view/animation/Animation;
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailForceAboveLayer:I

    .line 1716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isNextThumbnailTransitionScaleUp()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    .line 1715
    :goto_3
    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowAnimator;->deferThumbnailDestruction:Z

    .line 1721
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :goto_4
    const-wide/16 v6, 0x2710

    invoke-virtual {v10, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1724
    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    .line 1725
    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 1726
    move-object/from16 v0, v18

    iput-object v10, v0, Lcom/android/server/wm/AppWindowAnimator;->thumbnailAnimation:Landroid/view/animation/Animation;

    .line 1727
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpStartRect:Landroid/graphics/Rect;

    move/from16 v0, v19

    invoke-virtual {v3, v0, v6}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    .line 1660
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :goto_5
    return-void

    .line 1705
    .restart local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .restart local v11    # "c":Landroid/graphics/Canvas;
    .restart local v13    # "display":Landroid/view/Display;
    .restart local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v16    # "drawSurface":Landroid/view/Surface;
    .restart local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    iget v3, v15, Landroid/view/DisplayInfo;->appWidth:I

    iget v6, v15, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4    # "appRect":Landroid/graphics/Rect;
    goto :goto_1

    .line 1706
    :cond_8
    const/4 v5, 0x0

    .local v5, "insets":Landroid/graphics/Rect;
    goto :goto_2

    .line 1716
    .end local v5    # "insets":Landroid/graphics/Rect;
    .restart local v10    # "anim":Landroid/view/animation/Animation;
    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    .line 1718
    .end local v4    # "appRect":Landroid/graphics/Rect;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v21    # "win":Lcom/android/server/wm/WindowState;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1719
    iget v6, v15, Landroid/view/DisplayInfo;->appWidth:I

    iget v7, v15, Landroid/view/DisplayInfo;->appHeight:I

    .line 1718
    move/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v3, v6, v7, v0, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailScaleAnimationLocked(IIILandroid/graphics/Bitmap;)Landroid/view/animation/Animation;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .restart local v10    # "anim":Landroid/view/animation/Animation;
    goto :goto_4

    .line 1728
    .end local v2    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v10    # "anim":Landroid/view/animation/Animation;
    .end local v11    # "c":Landroid/graphics/Canvas;
    .end local v13    # "display":Landroid/view/Display;
    .end local v14    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v16    # "drawSurface":Landroid/view/Surface;
    :catch_0
    move-exception v17

    .line 1729
    .local v17, "e":Landroid/view/Surface$OutOfResourcesException;
    sget-object v3, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t allocate thumbnail/Canvas surface w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1730
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1730
    const-string/jumbo v7, " h="

    .line 1729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1730
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 1729
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    goto :goto_5
.end method

.method private handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I
    .locals 30
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 1087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 1088
    .local v11, "appsCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/wm/WindowSurfacePlacer;->transitionGoodToGo(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1089
    const/4 v4, 0x0

    return v4

    .line 1091
    :cond_0
    const-string/jumbo v4, "AppTransitionReady"

    const-wide/16 v28, 0x20

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1093
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v27, "**** GOOD TO GO"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v5

    .line 1095
    .local v5, "transit":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    if-eqz v4, :cond_2

    .line 1096
    const/4 v5, -0x1

    .line 1098
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v27, 0x0

    move/from16 v0, v27

    iput-boolean v0, v4, Lcom/android/server/wm/WindowManagerService;->mSkipAppTransitionAnimation:Z

    .line 1099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v27, 0xd

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->rebuildAppWindowListLocked()V

    .line 1105
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 1109
    const/4 v10, 0x0

    .line 1110
    .local v10, "animLp":Landroid/view/WindowManager$LayoutParams;
    const/4 v12, -0x1

    .line 1111
    .local v12, "bestAnimLayer":I
    const/16 v16, 0x0

    .line 1112
    .local v16, "fullscreenAnim":Z
    const/16 v24, 0x0

    .line 1115
    .local v24, "voiceInteraction":Z
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v11, :cond_3

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/AppWindowToken;

    .line 1122
    .local v26, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/AppWindowToken;->clearAnimatingFlags()V

    .line 1115
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1127
    .end local v26    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    .line 1128
    .local v15, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v4, v15, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()Z

    move-result v4

    .line 1128
    if-eqz v4, :cond_4

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 1131
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1135
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 1137
    .local v8, "lowerWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v9

    .line 1139
    .local v9, "upperWallpaperTarget":Lcom/android/server/wm/WindowState;
    const/4 v6, 0x0

    .line 1140
    .local v6, "openingAppHasWallpaper":Z
    const/4 v7, 0x0

    .line 1143
    .local v7, "closingAppHasWallpaper":Z
    if-nez v8, :cond_8

    .line 1144
    const/16 v23, 0x0

    .local v23, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    const/16 v18, 0x0

    .line 1160
    .end local v23    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v14

    .line 1161
    .local v14, "closingAppsCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    add-int v11, v14, v4

    .line 1162
    const/16 v17, 0x0

    .end local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v24    # "voiceInteraction":Z
    :goto_2
    move/from16 v0, v17

    if-ge v0, v11, :cond_c

    .line 1164
    move/from16 v0, v17

    if-ge v0, v14, :cond_9

    .line 1165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/AppWindowToken;

    .line 1166
    .restart local v26    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 1167
    :cond_5
    const/4 v7, 0x1

    .line 1176
    :cond_6
    :goto_3
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    or-int v24, v24, v4

    .line 1178
    .local v24, "voiceInteraction":Z
    move-object/from16 v0, v26

    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v4, :cond_b

    .line 1179
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v25

    .line 1180
    .local v25, "ws":Lcom/android/server/wm/WindowState;
    if-eqz v25, :cond_7

    .line 1181
    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1182
    .local v10, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1183
    const/16 v16, 0x1

    .line 1162
    .end local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v25    # "ws":Lcom/android/server/wm/WindowState;
    :cond_7
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1146
    .end local v14    # "closingAppsCount":I
    .end local v26    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .local v10, "animLp":Landroid/view/WindowManager$LayoutParams;
    .local v24, "voiceInteraction":Z
    :cond_8
    iget-object v0, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v18, v0

    .line 1147
    .local v18, "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    iget-object v0, v9, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    .local v23, "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    goto :goto_1

    .line 1170
    .end local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v18    # "lowerWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v23    # "upperWallpaperAppToken":Lcom/android/server/wm/AppWindowToken;
    .end local v24    # "voiceInteraction":Z
    .restart local v14    # "closingAppsCount":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    sub-int v27, v17, v14

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/AppWindowToken;

    .line 1171
    .restart local v26    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_a

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 1172
    :cond_a
    const/4 v6, 0x1

    goto :goto_3

    .line 1185
    .local v24, "voiceInteraction":Z
    :cond_b
    if-nez v16, :cond_7

    .line 1186
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v25

    .line 1187
    .restart local v25    # "ws":Lcom/android/server/wm/WindowState;
    if-eqz v25, :cond_7

    .line 1188
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v4, v12, :cond_7

    .line 1189
    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1190
    .local v10, "animLp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v12, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_4

    .end local v10    # "animLp":Landroid/view/WindowManager$LayoutParams;
    .end local v24    # "voiceInteraction":Z
    .end local v25    # "ws":Lcom/android/server/wm/WindowState;
    .end local v26    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    move-object/from16 v4, p0

    .line 1196
    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/WindowSurfacePlacer;->maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v5

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy;->allowAppAnimationsLw()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1204
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1205
    const-string/jumbo v27, "Animations disallowed by keyguard or dream."

    .line 1204
    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_d
    const/4 v10, 0x0

    .line 1209
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->processApplicationsAnimatingInPlace(I)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    iput-object v0, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v5, v10, v1, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget-object v0, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    .line 1214
    .local v20, "topClosingApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpLayerAndToken:Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    iget v0, v4, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    move/from16 v21, v0

    .line 1216
    .local v21, "topClosingLayer":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v21

    invoke-direct {v0, v5, v10, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;

    move-result-object v22

    .line 1219
    .local v22, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 1221
    if-nez v22, :cond_10

    const/16 v19, 0x0

    .line 1223
    :goto_5
    if-nez v20, :cond_11

    const/4 v13, 0x0

    .line 1226
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v28, v0

    .line 1226
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v4, v0, v13, v1, v2}, Lcom/android/server/wm/AppTransition;->goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 1231
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 1232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    .line 1236
    const/4 v4, 0x1

    iput-boolean v4, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_f

    .line 1240
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->moveInputMethodWindowsIfNeededLocked(Z)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1243
    :cond_f
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v27, 0x2

    .line 1244
    const/16 v28, 0x1

    .line 1243
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v27, 0x0

    move/from16 v0, v27

    iput-boolean v0, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->notifyActivityDrawnForKeyguard()V

    .line 1248
    const-wide/16 v28, 0x20

    invoke-static/range {v28 .. v29}, Landroid/os/Trace;->traceEnd(J)V

    .line 1250
    const/4 v4, 0x3

    return v4

    .line 1222
    :cond_10
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v19, v0

    .local v19, "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_5

    .line 1224
    .end local v19    # "openingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_11
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .local v13, "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    goto/16 :goto_6

    .line 1241
    .end local v13    # "closingAppAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    goto :goto_7
.end method

.method private handleClosingApps(ILandroid/view/WindowManager$LayoutParams;ZLcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;)V
    .locals 14
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "layerAndToken"    # Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v9

    .line 1320
    .local v9, "appsCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_8

    .line 1321
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1328
    .local v2, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->markSavedSurfaceExiting()V

    .line 1330
    iget-object v8, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1331
    .local v8, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Now closing app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1333
    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1334
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 1335
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p2

    move v5, p1

    move/from16 v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 1337
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1341
    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1342
    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1345
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_3

    .line 1348
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1350
    if-eqz p2, :cond_6

    .line 1351
    const/4 v12, -0x1

    .line 1352
    .local v12, "layer":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 1353
    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 1354
    .local v13, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v1, v12, :cond_2

    .line 1355
    iget-object v1, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1352
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1346
    .end local v11    # "j":I
    .end local v12    # "layer":I
    .end local v13    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleRemoveStartingWindowLocked(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_1

    .line 1358
    .restart local v11    # "j":I
    .restart local v12    # "layer":I
    :cond_4
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_5

    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    if-le v12, v1, :cond_6

    .line 1359
    :cond_5
    move-object/from16 v0, p4

    iput-object v2, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->token:Lcom/android/server/wm/AppWindowToken;

    .line 1360
    move-object/from16 v0, p4

    iput v12, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    .line 1363
    .end local v11    # "j":I
    .end local v12    # "layer":I
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1364
    move-object/from16 v0, p4

    iget v1, v0, Lcom/android/server/wm/WindowSurfacePlacer$LayerAndToken;->layer:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 1320
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1317
    .end local v2    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v8    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_8
    return-void
.end method

.method private handleNotObscuredLocked(Lcom/android/server/wm/WindowState;Landroid/view/DisplayInfo;)V
    .locals 12
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "dispInfo"    # Landroid/view/DisplayInfo;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1501
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1502
    .local v1, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1503
    .local v0, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    .line 1504
    .local v2, "canBeSeen":Z
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1506
    .local v4, "privateflags":I
    if-eqz v2, :cond_1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->isObscuringFullscreen(Landroid/view/DisplayInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1510
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-nez v6, :cond_0

    .line 1511
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 1514
    :cond_0
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    .line 1517
    :cond_1
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_d

    if-eqz v2, :cond_d

    .line 1518
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_2

    .line 1519
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 1520
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 1526
    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_3

    .line 1527
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    .line 1528
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 1530
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4

    .line 1531
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    .line 1532
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 1534
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    if-nez v6, :cond_5

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    cmp-long v6, v6, v10

    if-ltz v6, :cond_5

    .line 1535
    iget-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    cmp-long v6, v6, v10

    if-gez v6, :cond_5

    .line 1536
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 1539
    :cond_5
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1540
    .local v5, "type":I
    const/16 v6, 0x7d8

    if-eq v5, v6, :cond_6

    const/16 v6, 0x7da

    if-ne v5, v6, :cond_e

    .line 1542
    :cond_6
    :goto_0
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSyswin:Z

    .line 1547
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1548
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_f

    iget-boolean v6, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_f

    .line 1553
    const/16 v6, 0x7e7

    if-eq v5, v6, :cond_8

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_9

    .line 1554
    :cond_8
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 1556
    :cond_9
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    .line 1563
    :cond_a
    :goto_1
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_b

    .line 1564
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_b

    .line 1565
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredRefreshRate:F

    .line 1567
    :cond_b
    iget v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    if-nez v6, :cond_c

    .line 1568
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v6, :cond_c

    .line 1569
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPreferredModeId:I

    .line 1571
    :cond_c
    const/high16 v6, 0x40000

    and-int/2addr v6, v4

    if-eqz v6, :cond_d

    .line 1572
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 1500
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "type":I
    :cond_d
    return-void

    .line 1541
    .restart local v5    # "type":I
    :cond_e
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_7

    goto :goto_0

    .line 1557
    .restart local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_f
    if-eqz v3, :cond_a

    .line 1558
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v6, :cond_10

    .line 1559
    iget-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObscured:Z

    if-eqz v6, :cond_a

    const/16 v6, 0x7d9

    if-ne v5, v6, :cond_a

    .line 1561
    :cond_10
    iput-boolean v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDisplayHasContent:Z

    goto :goto_1
.end method

.method private handleOpeningApps(ILandroid/view/WindowManager$LayoutParams;ZI)Lcom/android/server/wm/AppWindowToken;
    .locals 20
    .param p1, "transit"    # I
    .param p2, "animLp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "voiceInteraction"    # Z
    .param p4, "topClosingLayer"    # I

    .prologue
    .line 1255
    const/16 v16, 0x0

    .line 1256
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v12

    .line 1257
    .local v12, "appsCount":I
    const/4 v13, 0x0

    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_c

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 1259
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v11, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1260
    .local v11, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Now opening app"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_0
    iget-boolean v4, v11, Lcom/android/server/wm/AppWindowAnimator;->usingTransferredAnimation:Z

    if-nez v4, :cond_1

    .line 1263
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1264
    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1266
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1269
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v6, p2

    move/from16 v8, p1

    move/from16 v10, p3

    .line 1268
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/WindowManagerService;->setTokenVisibilityLocked(Lcom/android/server/wm/AppWindowToken;Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v6, v5, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1276
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 1278
    iget-object v4, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1279
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v19

    .line 1280
    .local v19, "windowsCount":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_3

    .line 1281
    iget-object v6, v11, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1283
    :cond_3
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1284
    const-string/jumbo v6, ">>> OPEN TRANSACTION handleAppTransitionReadyLocked()"

    .line 1283
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_4
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1287
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1290
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1291
    const-string/jumbo v6, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    .line 1290
    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v11}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v4, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1295
    const/16 v17, 0x0

    .line 1296
    .local v17, "topOpeningLayer":I
    if-eqz p2, :cond_a

    .line 1297
    const/4 v15, -0x1

    .line 1298
    .local v15, "layer":I
    const/4 v14, 0x0

    :goto_2
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v14, v4, :cond_8

    .line 1299
    iget-object v4, v5, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/WindowState;

    .line 1300
    .local v18, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v4, v15, :cond_6

    .line 1301
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v15, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 1298
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1288
    .end local v15    # "layer":I
    .end local v17    # "topOpeningLayer":I
    .end local v18    # "win":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v4

    .line 1289
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1290
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1291
    const-string/jumbo v7, "<<< CLOSE TRANSACTION handleAppTransitionReadyLocked()"

    .line 1290
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_7
    throw v4

    .line 1304
    .restart local v15    # "layer":I
    .restart local v17    # "topOpeningLayer":I
    :cond_8
    if-eqz v16, :cond_9

    if-lez v15, :cond_a

    .line 1305
    :cond_9
    move-object/from16 v16, v5

    .line 1306
    .local v16, "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    move/from16 v17, v15

    .line 1309
    .end local v15    # "layer":I
    .end local v16    # "topOpeningApp":Lcom/android/server/wm/AppWindowToken;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1310
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p4

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->createThumbnailAppAnimator(ILcom/android/server/wm/AppWindowToken;II)V

    .line 1257
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1313
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    .end local v11    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v14    # "j":I
    .end local v17    # "topOpeningLayer":I
    .end local v19    # "windowsCount":I
    :cond_c
    return-object v16
.end method

.method private maybeUpdateTransitToWallpaper(IZZLcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 7
    .param p1, "transit"    # I
    .param p2, "openingAppHasWallpaper"    # Z
    .param p3, "closingAppHasWallpaper"    # Z
    .param p4, "lowerWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p5, "upperWallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 1443
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1445
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1446
    const/4 v1, 0x0

    .line 1447
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    .line 1448
    .local v2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    .line 1449
    .local v0, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New wallpaper target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1451
    const-string/jumbo v6, ", oldWallpaper="

    .line 1450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1452
    const-string/jumbo v6, ", lower target="

    .line 1450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1453
    const-string/jumbo v6, ", upper target="

    .line 1450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1454
    const-string/jumbo v6, ", openingApps="

    .line 1450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1455
    const-string/jumbo v6, ", closingApps="

    .line 1450
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1449
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    .line 1457
    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    .line 1458
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_1

    .line 1459
    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Wallpaper animation!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1472
    :goto_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New transit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1472
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_2
    :goto_2
    return p1

    .line 1446
    .end local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_3
    move-object v1, v3

    .local v1, "oldWallpaper":Lcom/android/server/wm/WindowState;
    goto/16 :goto_0

    .line 1464
    .end local v1    # "oldWallpaper":Lcom/android/server/wm/WindowState;
    .restart local v0    # "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v2    # "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    :pswitch_0
    const/16 p1, 0xe

    .line 1465
    goto :goto_1

    .line 1469
    :pswitch_1
    const/16 p1, 0xf

    .line 1470
    goto :goto_1

    .line 1474
    :cond_4
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1482
    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1483
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1482
    if-eqz v4, :cond_7

    .line 1486
    const/16 p1, 0xd

    .line 1487
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1488
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New transit into wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1489
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1488
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1487
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1475
    :cond_6
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1476
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1474
    if-eqz v4, :cond_5

    .line 1478
    const/16 p1, 0xc

    .line 1479
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "New transit away from wallpaper: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1481
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    .line 1480
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1479
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1491
    :cond_7
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/server/wm/WindowManagerService;->mAnimateWallpaperWithTarget:Z

    goto/16 :goto_2

    .line 1460
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private performSurfacePlacementInner(Z)V
    .locals 31
    .param p1, "recoveringMemory"    # Z

    .prologue
    .line 278
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v27, :cond_0

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 279
    const/16 v29, 0x3

    invoke-static/range {v29 .. v29}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v29

    .line 278
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    const/16 v23, 0x0

    .line 284
    .local v23, "updateInputWindowsNeeded":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    .line 287
    const/16 v28, 0x3

    const/16 v29, 0x0

    .line 286
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v23

    .line 291
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 292
    .local v18, "numDisplays":I
    const/4 v13, 0x0

    .local v13, "displayNdx":I
    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 294
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    .local v17, "i":I
    :goto_1
    if-ltz v17, :cond_2

    .line 295
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/WindowToken;

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    .line 294
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 292
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 299
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v17    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v19, v27, -0x1

    .local v19, "stackNdx":I
    :goto_2
    if-ltz v19, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/TaskStack;

    .line 301
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 303
    .local v15, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v27

    add-int/lit8 v22, v27, -0x1

    .local v22, "tokenNdx":I
    :goto_3
    if-ltz v22, :cond_4

    .line 304
    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/AppWindowToken;

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    .line 303
    add-int/lit8 v22, v22, -0x1

    goto :goto_3

    .line 299
    :cond_4
    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 308
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v22    # "tokenNdx":I
    :cond_5
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 309
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 310
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    .line 311
    const/high16 v27, -0x40800000    # -1.0f

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    .line 312
    const/high16 v27, -0x40800000    # -1.0f

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    .line 313
    const-wide/16 v28, -0x1

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    .line 314
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 315
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 319
    .local v6, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 320
    .local v8, "defaultInfo":Landroid/view/DisplayInfo;
    iget v7, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 321
    .local v7, "defaultDw":I
    iget v5, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 323
    .local v5, "defaultDh":I
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v27, :cond_6

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 324
    const-string/jumbo v28, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    .line 323
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_6
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 327
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v5}, Lcom/android/server/wm/WindowSurfacePlacer;->applySurfaceChangesTransaction(ZIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 332
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v27, :cond_7

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 333
    const-string/jumbo v28, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 332
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_7
    :goto_4
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v9

    .line 341
    .local v9, "defaultWindows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v27

    if-eqz v27, :cond_8

    .line 342
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked(Lcom/android/server/wm/WindowList;)I

    move-result v28

    or-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 343
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_8

    .line 344
    const-string/jumbo v27, "after handleAppTransitionReadyLocked"

    .line 345
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 348
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    move/from16 v27, v0

    if-nez v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v27

    if-eqz v27, :cond_9

    .line 355
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v28

    .line 355
    or-int v27, v27, v28

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 357
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_9

    .line 358
    const-string/jumbo v27, "after handleAnimStopAndXitionLock"

    .line 359
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 362
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    move/from16 v27, v0

    if-eqz v27, :cond_a

    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    if-nez v27, :cond_a

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v27

    if-eqz v27, :cond_10

    .line 375
    :cond_a
    :goto_5
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 377
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 378
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v27, :cond_b

    .line 379
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Wallpaper may change!  Adjusting"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_b
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 381
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_c

    const-string/jumbo v27, "WallpaperMayChange"

    .line 382
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 385
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    .line 388
    const/16 v29, 0x0

    .line 387
    invoke-virtual/range {v27 .. v29}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 389
    const/16 v23, 0x1

    .line 390
    .restart local v23    # "updateInputWindowsNeeded":Z
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x8

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 394
    .end local v23    # "updateInputWindowsNeeded":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v27

    if-eqz v27, :cond_e

    .line 395
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 396
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_e

    const-string/jumbo v27, "mLayoutNeeded"

    .line 397
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 400
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    .restart local v17    # "i":I
    :goto_6
    if-ltz v17, :cond_13

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 402
    .local v26, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 400
    :goto_7
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 328
    .end local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    .end local v17    # "i":I
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :catch_0
    move-exception v14

    .line 329
    .local v14, "e":Ljava/lang/RuntimeException;
    :try_start_1
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Unhandled exception in Window Manager"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 332
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v27, :cond_7

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 333
    const-string/jumbo v28, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 332
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 330
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v27

    .line 331
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 332
    sget-boolean v28, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v28, :cond_f

    sget-object v28, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 333
    const-string/jumbo v29, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    .line 332
    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_f
    throw v27

    .line 370
    .restart local v9    # "defaultWindows":Lcom/android/server/wm/WindowList;
    :cond_10
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 371
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v27, :cond_a

    .line 372
    const-string/jumbo v27, "after animateAwayWallpaperLocked"

    .line 373
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v28, v0

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 407
    .restart local v17    # "i":I
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_11
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    .line 408
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowToken;->destroySavedSurfaces()V

    .line 410
    :cond_12
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 414
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_13
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v27, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_14

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 415
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "With display frozen, orientationChangeComplete="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 414
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput v0, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0xb

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 422
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 426
    :cond_16
    const/16 v25, 0x0

    .line 427
    .local v25, "wallpaperDestroyed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 428
    if-lez v17, :cond_1a

    .line 430
    :cond_17
    add-int/lit8 v17, v17, -0x1

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/wm/WindowState;

    .line 432
    .restart local v26    # "win":Lcom/android/server/wm/WindowState;
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_18

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 436
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v27

    if-eqz v27, :cond_19

    .line 437
    const/16 v25, 0x1

    .line 439
    :cond_19
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/WindowState;->destroyOrSaveSurface()V

    .line 440
    if-gtz v17, :cond_17

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 445
    .end local v26    # "win":Lcom/android/server/wm/WindowState;
    :cond_1a
    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v18

    if-ge v13, v0, :cond_1d

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 447
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 448
    .local v16, "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    :goto_9
    if-ltz v17, :cond_1c

    .line 449
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowToken;

    .line 450
    .local v21, "token":Lcom/android/server/wm/WindowToken;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    move/from16 v27, v0

    if-nez v27, :cond_1b

    .line 451
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 452
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowToken;->windowType:I

    move/from16 v27, v0

    const/16 v28, 0x7dd

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1b

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V

    .line 448
    :cond_1b
    add-int/lit8 v17, v17, -0x1

    goto :goto_9

    .line 445
    .end local v21    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1c
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 460
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "exitingTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v19, v27, -0x1

    :goto_a
    if-ltz v19, :cond_24

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/TaskStack;

    .line 462
    move-object/from16 v0, v27

    iget-object v15, v0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 464
    .restart local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v15}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v27

    add-int/lit8 v17, v27, -0x1

    :goto_b
    if-ltz v17, :cond_23

    .line 465
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/wm/AppWindowToken;

    .line 466
    .local v20, "token":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    move/from16 v27, v0

    if-nez v27, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f

    .line 464
    :cond_1e
    :goto_c
    add-int/lit8 v17, v17, -0x1

    goto :goto_b

    .line 467
    :cond_1f
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    move/from16 v27, v0

    if-eqz v27, :cond_20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v27

    .line 466
    if-eqz v27, :cond_1e

    .line 471
    :cond_20
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/AppWindowAnimator;->clearAnimation()V

    .line 472
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 473
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v27, :cond_21

    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v27, :cond_22

    :cond_21
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 474
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "performLayout: App token exiting now removed"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 473
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_22
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/AppWindowToken;->removeAppFromTaskLocked()V

    goto :goto_c

    .line 460
    .end local v20    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_23
    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_a

    .line 480
    .end local v15    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    :cond_24
    if-eqz v25, :cond_25

    .line 481
    iget v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    iput v0, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 482
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 485
    :cond_25
    const/4 v13, 0x0

    :goto_d
    move/from16 v0, v18

    if-ge v13, v0, :cond_27

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 487
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v0, v10, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    move/from16 v27, v0

    if-eqz v27, :cond_26

    .line 488
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 485
    :cond_26
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 493
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreen:Lcom/android/server/wm/Session;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a

    .line 497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_36

    .line 498
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    .line 503
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpg-float v27, v27, v28

    if-ltz v27, :cond_29

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v27, v0

    const/high16 v28, 0x3f800000    # 1.0f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_37

    .line 505
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    const/16 v28, -0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    .line 510
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 511
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUserActivityTimeout:J

    move-wide/from16 v28, v0

    .line 510
    invoke-virtual/range {v27 .. v29}, Landroid/os/PowerManagerInternal;->setUserActivityTimeoutOverrideFromWindowManager(J)V

    .line 514
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2b

    .line 515
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeCurrent:Z

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v28, v0

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mSustainedPerformanceModeEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_38

    const/16 v27, 0x1

    .line 517
    :goto_10
    const/16 v29, 0x6

    .line 516
    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 521
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    move/from16 v27, v0

    if-eqz v27, :cond_30

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    move/from16 v27, v0

    if-nez v27, :cond_2c

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 524
    const-string/jumbo v28, "theater_mode_on"

    const/16 v29, 0x0

    .line 523
    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_2f

    .line 525
    :cond_2c
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v27, :cond_2d

    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v27, :cond_2e

    .line 526
    :cond_2d
    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Turning screen on after layout!"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v27, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 529
    const-string/jumbo v30, "android.server.wm:TURN_ON"

    .line 528
    invoke-virtual/range {v27 .. v30}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 531
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 534
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    move/from16 v27, v0

    if-eqz v27, :cond_32

    .line 535
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v27, :cond_31

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v28, "Performing post-rotate rotation"

    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService;->updateRotationUncheckedLocked(Z)Z

    move-result v27

    if-eqz v27, :cond_39

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v27, v0

    const/16 v28, 0x12

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 543
    :cond_32
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    move-object/from16 v27, v0

    if-nez v27, :cond_3b

    .line 544
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    move/from16 v27, v0

    if-eqz v27, :cond_33

    iget-boolean v0, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3a

    .line 549
    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 550
    .local v4, "N":I
    if-lez v4, :cond_3e

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_34

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    add-int/lit8 v28, v4, 0xa

    move/from16 v0, v28

    new-array v0, v0, [Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 554
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 556
    new-instance v12, Lcom/android/server/wm/DisplayContentList;

    invoke-direct {v12}, Lcom/android/server/wm/DisplayContentList;-><init>()V

    .line 557
    .local v12, "displayList":Lcom/android/server/wm/DisplayContentList;
    const/16 v17, 0x0

    :goto_13
    move/from16 v0, v17

    if-ge v0, v4, :cond_3d

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0

    aget-object v24, v27, v17

    .line 559
    .local v24, "w":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    .line 560
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 561
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_35

    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3c

    .line 557
    :cond_35
    :goto_14
    add-int/lit8 v17, v17, 0x1

    goto :goto_13

    .line 500
    .end local v4    # "N":I
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mScreenBrightness:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    move-result v28

    .line 500
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_e

    .line 507
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v27, v0

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mButtonBrightness:F

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowSurfacePlacer;->toBrightnessOverride(F)I

    move-result v28

    .line 507
    invoke-virtual/range {v27 .. v28}, Landroid/os/PowerManagerInternal;->setButtonBrightnessOverrideFromWindowManager(I)V

    goto/16 :goto_f

    .line 518
    :cond_38
    const/16 v27, 0x0

    goto/16 :goto_10

    .line 539
    :cond_39
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    goto/16 :goto_11

    .line 545
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    move/from16 v27, v0

    if-nez v27, :cond_33

    .line 546
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    goto/16 :goto_12

    .line 562
    .restart local v4    # "N":I
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    .restart local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_3c
    invoke-virtual {v12, v10}, Lcom/android/server/wm/DisplayContentList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 566
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "w":Lcom/android/server/wm/WindowState;
    :cond_3d
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "displayContent$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 567
    .restart local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    move-object/from16 v27, v0

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/WindowLayersController;->assignLayersLocked(Lcom/android/server/wm/WindowList;)V

    .line 568
    const/16 v27, 0x1

    move/from16 v0, v27

    iput-boolean v0, v10, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    goto :goto_15

    .line 573
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "displayContent$iterator":Ljava/util/Iterator;
    .end local v12    # "displayList":Lcom/android/server/wm/DisplayContentList;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    :goto_16
    if-ltz v13, :cond_3f

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/wm/DisplayContent;

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/DisplayContent;->checkForDeferredActions()V

    .line 573
    add-int/lit8 v13, v13, -0x1

    goto :goto_16

    .line 577
    :cond_3f
    if-eqz v23, :cond_40

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 580
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked()V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/wm/WindowSurfacePlacer;->destroyPendingSurfaces()V

    .line 589
    sget-boolean v27, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v27, :cond_41

    sget-object v27, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 590
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "performSurfacePlacementInner exit: animating="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 589
    invoke-static/range {v27 .. v28}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_41
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x20

    const/4 v8, 0x0

    .line 198
    iget-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v5, :cond_1

    .line 199
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 200
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Recursive call!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :cond_0
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 203
    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void

    .line 207
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    if-eqz v5, :cond_2

    .line 211
    return-void

    .line 214
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v5, :cond_3

    .line 216
    return-void

    .line 219
    :cond_3
    const-string/jumbo v5, "wmLayout"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 220
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, "recoveringMemory":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 224
    const/4 v2, 0x1

    .line 226
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 227
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 228
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Force removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/WindowState;)V

    goto :goto_0

    .line 231
    .end local v4    # "ws":Lcom/android/server/wm/WindowState;
    :cond_4
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 233
    .local v3, "tmp":Ljava/lang/Object;
    monitor-enter v3

    .line 235
    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    .line 242
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_5
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementInner(Z)V

    .line 244
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 246
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->needsLayout()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 247
    iget v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v6, 0x6

    if-ge v5, v6, :cond_7

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 257
    :goto_2
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_9

    .line 266
    :cond_6
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 197
    return-void

    .line 236
    .restart local v3    # "tmp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 233
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v3

    throw v5

    .line 250
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_7
    :try_start_2
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Performed 6 layouts in a row. Skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 261
    :catch_1
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-boolean v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 263
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Unhandled exception while laying out windows"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 254
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_8
    const/4 v5, 0x0

    :try_start_3
    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_2

    .line 258
    :cond_9
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 259
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private processApplicationsAnimatingInPlace(I)V
    .locals 8
    .param p1, "transit"    # I

    .prologue
    .line 1634
    const/16 v5, 0x11

    if-ne p1, v5, :cond_2

    .line 1636
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1637
    iget-object v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 1636
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->findFocusedWindowLocked(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 1638
    .local v3, "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_2

    .line 1639
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1640
    .local v4, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v4, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1641
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_0

    .line 1642
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Now animating app in place "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->clearThumbnail()V

    .line 1644
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->setNullAnimation()V

    .line 1645
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v4, p1}, Lcom/android/server/wm/WindowManagerService;->updateTokenInPlaceLocked(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1646
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 1648
    iget-object v5, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1649
    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1650
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1651
    iget-object v6, v1, Lcom/android/server/wm/AppWindowAnimator;->mAllAppWinAnimators:Ljava/util/ArrayList;

    iget-object v5, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1653
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->isAnimating()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, v5, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 1654
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 1633
    .end local v0    # "N":I
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v2    # "j":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v4    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 1630
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private transitionGoodToGo(I)Z
    .locals 12
    .param p1, "appsCount"    # I

    .prologue
    const/16 v11, 0x2f

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 1370
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Checking "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " opening apps (frozen="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1372
    iget-object v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    .line 1371
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1372
    const-string/jumbo v9, " timeout="

    .line 1371
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1373
    iget-object v9, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v9

    .line 1371
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1373
    const-string/jumbo v9, ")..."

    .line 1371
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1370
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_0
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    .line 1378
    .local v3, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    const/4 v2, 0x3

    .line 1379
    .local v2, "reason":I
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1386
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1387
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->rotationNeedsUpdateLocked()Z

    move-result v7

    .line 1386
    if-eqz v7, :cond_2

    .line 1388
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_1

    .line 1389
    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Delaying app transition for screen rotation animation to finish"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_1
    return v10

    .line 1393
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 1394
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 1395
    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1396
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Check opening app="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": allDrawn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1397
    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1397
    const-string/jumbo v9, " startingDisplayed="

    .line 1396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1398
    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1398
    const-string/jumbo v9, " startingMoved="

    .line 1396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1399
    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1399
    const-string/jumbo v9, " isRelaunching()="

    .line 1396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1400
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v9

    .line 1396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1395
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1403
    return v10

    .line 1406
    :cond_4
    iget-boolean v0, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1407
    .local v0, "drawnBeforeRestoring":Z
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->restoreSavedSurfaces()V

    .line 1409
    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v7, :cond_5

    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v7, :cond_6

    .line 1412
    :cond_5
    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v7, :cond_8

    .line 1413
    if-eqz v0, :cond_7

    const/4 v2, 0x2

    .line 1393
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1409
    :cond_6
    iget-boolean v7, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v7, :cond_5

    .line 1410
    return v10

    .line 1414
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 1416
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 1421
    .end local v0    # "drawnBeforeRestoring":Z
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1422
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isFetchingAppTransitionSpecs=true"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_a
    return v10

    .line 1427
    :cond_b
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1428
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v7}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v4

    .line 1429
    .local v4, "wallpaperReady":Z
    :goto_2
    if-eqz v4, :cond_d

    .line 1430
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v11, v2, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1431
    return v6

    .end local v4    # "wallpaperReady":Z
    :cond_c
    move v4, v6

    .line 1427
    goto :goto_2

    .line 1433
    .restart local v4    # "wallpaperReady":Z
    :cond_d
    return v10

    .line 1435
    .end local v1    # "i":I
    .end local v4    # "wallpaperReady":Z
    :cond_e
    iget-object v7, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v7, v11, v2, v10}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1436
    return v6
.end method

.method private updateAllDrawnLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 13
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v12, 0x1

    .line 1580
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 1581
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_8

    .line 1582
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1583
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_7

    .line 1584
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v6, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1585
    .local v6, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "tokenNdx":I
    :goto_2
    if-ltz v5, :cond_6

    .line 1586
    invoke-virtual {v6, v5}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/AppWindowToken;

    .line 1587
    .local v7, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v8, :cond_2

    .line 1588
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    .line 1589
    .local v0, "numInteresting":I
    if-lez v0, :cond_2

    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    if-lt v8, v0, :cond_2

    .line 1592
    sget-boolean v8, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v8, :cond_0

    .line 1593
    const-string/jumbo v8, "APP_LAUNCH"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " WMS: updateAllDrawnLocked: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :cond_0
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v8, :cond_1

    .line 1597
    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "allDrawn: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1598
    const-string/jumbo v10, " interesting="

    .line 1597
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1599
    const-string/jumbo v10, " drawn="

    .line 1597
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1599
    iget v10, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    .line 1597
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_1
    iput-boolean v12, v7, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1603
    iput-boolean v12, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1604
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 1605
    iget-object v9, v7, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    .line 1604
    const/16 v10, 0x20

    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1608
    .end local v0    # "numInteresting":I
    :cond_2
    iget-boolean v8, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    if-nez v8, :cond_4

    .line 1609
    iget v0, v7, Lcom/android/server/wm/AppWindowToken;->numInterestingWindowsExcludingSaved:I

    .line 1610
    .restart local v0    # "numInteresting":I
    if-lez v0, :cond_4

    .line 1611
    iget v8, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    if-lt v8, v0, :cond_4

    .line 1612
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v8, :cond_3

    .line 1613
    sget-object v8, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "allDrawnExcludingSaved: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1614
    const-string/jumbo v10, " interesting="

    .line 1613
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1615
    const-string/jumbo v10, " drawn="

    .line 1613
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1615
    iget v10, v7, Lcom/android/server/wm/AppWindowToken;->numDrawnWindowsExclusingSaved:I

    .line 1613
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_3
    iput-boolean v12, v7, Lcom/android/server/wm/AppWindowToken;->allDrawnExcludingSaved:Z

    .line 1617
    iput-boolean v12, p1, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 1618
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isAnimatingInvisibleWithSavedSurface()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1619
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1585
    .end local v0    # "numInteresting":I
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_2

    .line 1620
    .restart local v0    # "numInteresting":I
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mFinishedEarlyAnim:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1583
    .end local v0    # "numInteresting":I
    .end local v7    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1

    .line 1581
    .end local v5    # "tokenNdx":I
    .end local v6    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 1577
    .end local v3    # "taskNdx":I
    .end local v4    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_8
    return-void
.end method


# virtual methods
.method continueLayout()V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 178
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 176
    :cond_0
    return-void
.end method

.method copyAnimToLayoutParamsLocked()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1736
    const/4 v1, 0x0

    .line 1738
    .local v1, "doRequest":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, v2, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 1739
    .local v0, "bulkUpdateParams":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 1740
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mUpdateRotation:Z

    .line 1741
    const/4 v1, 0x1

    .line 1743
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 1744
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 1745
    const/4 v1, 0x1

    .line 1747
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 1748
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperForceHidingChanged:Z

    .line 1749
    const/4 v1, 0x1

    .line 1751
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_6

    .line 1752
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 1760
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    .line 1761
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreen:Z

    .line 1763
    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_5

    .line 1764
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 1767
    :cond_5
    return v1

    .line 1754
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mOrientationChangeComplete:Z

    .line 1755
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 1756
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_3

    .line 1757
    const/4 v1, 0x1

    goto :goto_0
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"    # I

    .prologue
    .line 270
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 271
    sget-object v0, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layouts looping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string/jumbo v2, ", mPendingLayoutChanges = 0x"

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    return-void
.end method

.method deferLayout()V
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 169
    return-void
.end method

.method destroyAfterTransaction(Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/SurfaceControl;

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    return-void
.end method

.method destroyPendingSurfaces()V
    .locals 2

    .prologue
    .line 1790
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 1790
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1793
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPendingDestroyingSurfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1789
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1797
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTraversalScheduled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1798
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHoldScreenWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1799
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mObsuringWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mObsuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1796
    return-void
.end method

.method isInLayout()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method final performLayoutLockedInner(Lcom/android/server/wm/DisplayContent;ZZ)V
    .locals 19
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "initial"    # Z
    .param p3, "updateInputWindows"    # Z

    .prologue
    .line 908
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    if-nez v1, :cond_0

    .line 909
    return-void

    .line 911
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 912
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 913
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    .line 915
    .local v2, "isDefaultDisplay":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 916
    .local v11, "displayInfo":Landroid/view/DisplayInfo;
    iget v3, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 917
    .local v3, "dw":I
    iget v4, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 919
    .local v4, "dh":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v1, :cond_1

    .line 920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    .line 923
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    if-eqz v1, :cond_2

    .line 924
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperInputConsumer:Lcom/android/server/wm/InputConsumerImpl;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/InputConsumerImpl;->layout(II)V

    .line 927
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    .line 930
    .local v7, "N":I
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_3

    .line 931
    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "-------------------------------------"

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performLayout: needed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 933
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 932
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 933
    const-string/jumbo v6, " dw="

    .line 932
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 933
    const-string/jumbo v6, " dh="

    .line 932
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    .line 937
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v6, v6, Landroid/content/res/Configuration;->uiMode:I

    .line 936
    invoke-interface/range {v1 .. v6}, Landroid/view/WindowManagerPolicy;->beginLayoutLw(ZIIII)V

    .line 938
    if-eqz v2, :cond_4

    .line 940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v5

    iput v5, v1, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    .line 941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 944
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    invoke-interface {v1, v5}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mTmpContentRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->resize(Landroid/graphics/Rect;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    add-int/lit8 v14, v1, 0x1

    .line 948
    .local v14, "seq":I
    if-gez v14, :cond_5

    const/4 v14, 0x0

    .line 949
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v14, v1, Lcom/android/server/wm/WindowManagerService;->mLayoutSeq:I

    .line 951
    const/4 v10, 0x0

    .line 955
    .local v10, "behindDream":Z
    const/16 v16, -0x1

    .line 956
    .local v16, "topAttached":I
    add-int/lit8 v13, v7, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_15

    .line 957
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 962
    .local v17, "win":Lcom/android/server/wm/WindowState;
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 963
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v12

    .line 965
    :goto_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_b

    .line 990
    :cond_7
    :goto_2
    if-eqz v12, :cond_10

    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v1, :cond_10

    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-nez v1, :cond_10

    .line 991
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 992
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 956
    :cond_9
    :goto_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 962
    :cond_a
    const/4 v12, 0x1

    .local v12, "gone":Z
    goto :goto_1

    .line 966
    .end local v12    # "gone":Z
    :cond_b
    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "1ST PASS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 967
    const-string/jumbo v6, ": gone="

    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 967
    const-string/jumbo v6, " mHaveFrame="

    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 967
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 968
    const-string/jumbo v6, " mLayoutAttached="

    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 968
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 969
    const-string/jumbo v6, " screen changed="

    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 969
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v6

    .line 966
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 971
    .local v8, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v12, :cond_d

    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  GONE: mViewVisibility="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 972
    const-string/jumbo v6, " mRelayoutCalled="

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 973
    const-string/jumbo v6, " hidden="

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 974
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 974
    const-string/jumbo v6, " hiddenRequested="

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 975
    if-eqz v8, :cond_c

    iget-boolean v1, v8, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 971
    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 976
    const-string/jumbo v6, " mAttachedHidden="

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 976
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 971
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 975
    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    .line 977
    :cond_d
    sget-object v5, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  VIS: mViewVisibility="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 978
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 978
    const-string/jumbo v6, " mRelayoutCalled="

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 979
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 979
    const-string/jumbo v6, " hidden="

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 980
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 980
    const-string/jumbo v6, " hiddenRequested="

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 981
    if-eqz v8, :cond_e

    iget-boolean v1, v8, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 977
    :goto_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 982
    const-string/jumbo v6, " mAttachedHidden="

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 982
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    .line 977
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 981
    :cond_e
    const/4 v1, 0x0

    goto :goto_5

    .line 993
    .end local v8    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_f
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_10

    .line 994
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_9

    .line 995
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    .line 990
    if-eqz v1, :cond_9

    .line 996
    :cond_10
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v1, :cond_14

    .line 997
    if-eqz p2, :cond_11

    .line 999
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1001
    :cond_11
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e7

    if-ne v1, v5, :cond_12

    .line 1005
    const/4 v10, 0x1

    .line 1007
    :cond_12
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1008
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 1009
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1010
    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1013
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    .line 1014
    .local v15, "task":Lcom/android/server/wm/Task;
    if-eqz v15, :cond_13

    .line 1015
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDimLayerController:Lcom/android/server/wm/DimLayerController;

    invoke-virtual {v1, v15}, Lcom/android/server/wm/DimLayerController;->updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 1018
    :cond_13
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  LAYOUT: mFrame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1020
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1019
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1020
    const-string/jumbo v6, " mContainingFrame="

    .line 1019
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1021
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 1019
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1021
    const-string/jumbo v6, " mDisplayFrame="

    .line 1019
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1022
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1019
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1018
    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1024
    .end local v15    # "task":Lcom/android/server/wm/Task;
    :cond_14
    if-gez v16, :cond_9

    move/from16 v16, v13

    goto/16 :goto_3

    .line 1029
    .end local v17    # "win":Lcom/android/server/wm/WindowState;
    :cond_15
    const/4 v9, 0x0

    .line 1035
    .local v9, "attachedBehindDream":Z
    move/from16 v13, v16

    .end local v9    # "attachedBehindDream":Z
    :goto_6
    if-ltz v13, :cond_1d

    .line 1036
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/WindowState;

    .line 1038
    .restart local v17    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_1c

    .line 1039
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "2ND PASS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mHaveFrame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mViewVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1041
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1041
    const-string/jumbo v6, " mRelayoutCalled="

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1041
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    .line 1040
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1039
    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_16
    if-eqz v9, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1035
    :cond_17
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 1050
    :cond_18
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v5, 0x8

    if-eq v1, v5, :cond_19

    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_1a

    .line 1051
    :cond_19
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v1, :cond_1a

    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1050
    if-eqz v1, :cond_17

    .line 1052
    :cond_1a
    if-eqz p2, :cond_1b

    .line 1054
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1056
    :cond_1b
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1057
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/WindowState;->prelayout()V

    .line 1058
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v17

    invoke-interface {v1, v0, v5}, Landroid/view/WindowManagerPolicy;->layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1059
    move-object/from16 v0, v17

    iput v14, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1060
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/server/wm/WindowSurfacePlacer;->TAG:Ljava/lang/String;

    .line 1061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  LAYOUT: mFrame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mContainingFrame="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1062
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 1061
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1062
    const-string/jumbo v6, " mDisplayFrame="

    .line 1061
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1062
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 1061
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1060
    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1064
    :cond_1c
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7e7

    if-ne v1, v5, :cond_17

    .line 1068
    move v9, v10

    .local v9, "attachedBehindDream":Z
    goto/16 :goto_7

    .line 1073
    .end local v9    # "attachedBehindDream":Z
    .end local v17    # "win":Lcom/android/server/wm/WindowState;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 1074
    if-eqz p3, :cond_1e

    .line 1075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1078
    :cond_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy;->finishLayoutLw()V

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x29

    invoke-virtual {v1, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 907
    return-void
.end method

.method final performSurfacePlacement()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v1, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x6

    .line 189
    .local v0, "loopCount":I
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 190
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 192
    add-int/lit8 v0, v0, -0x1

    .line 193
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_2

    if-gtz v0, :cond_1

    .line 194
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperActionPending:Z

    .line 183
    return-void
.end method

.method requestTraversal()V
    .locals 2

    .prologue
    .line 1771
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 1772
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 1773
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 1770
    :cond_0
    return-void
.end method
