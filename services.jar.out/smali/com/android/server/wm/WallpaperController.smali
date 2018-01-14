.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field private mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

.field mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperAnimLayerAdjustment:I

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/high16 v3, -0x80000000

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 66
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 69
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 73
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 74
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 75
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 76
    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 77
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 78
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 95
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 104
    new-instance v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 107
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 106
    return-void
.end method

.method private findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I
    .locals 4
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;

    .prologue
    .line 796
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 797
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 798
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 799
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 800
    return v0

    .line 797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_1
    const v3, 0x7fffffff

    return v3
.end method

.method private findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 13
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    .line 478
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 479
    .local v8, "winAnimator":Lcom/android/server/wm/WindowAnimator;
    invoke-virtual {p2}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 480
    const/4 v7, 0x0

    .line 481
    .local v7, "w":Lcom/android/server/wm/WindowState;
    const/4 v9, -0x1

    .line 482
    .local v9, "windowDetachedI":I
    const/4 v5, 0x0

    .line 483
    .local v5, "resetTopWallpaper":Z
    const/4 v2, 0x0

    .line 484
    .local v2, "inFreeformSpace":Z
    const/4 v4, 0x0

    .line 485
    .local v4, "replacing":Z
    const/4 v3, 0x0

    .line 487
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_c

    .line 488
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 489
    .local v7, "w":Lcom/android/server/wm/WindowState;
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x7dd

    if-ne v10, v11, :cond_2

    .line 490
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_0

    if-eqz v5, :cond_1

    .line 491
    :cond_0
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;I)V

    .line 492
    const/4 v5, 0x0

    .line 487
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 496
    :cond_2
    const/4 v5, 0x1

    .line 497
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v7, v10, :cond_3

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_3

    .line 500
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v10, v10, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-eqz v10, :cond_3

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v10, :cond_3

    .line 501
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 502
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipping hidden and not animating token: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 501
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 506
    :cond_3
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Win #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": isOnScreen="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 507
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v12

    .line 506
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 507
    const-string/jumbo v12, " mDrawState="

    .line 506
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 507
    iget-object v12, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v12, v12, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 506
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_4
    if-nez v2, :cond_5

    .line 510
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    .line 511
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v6, :cond_8

    iget v10, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    const/4 v2, 0x1

    .line 514
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_5
    :goto_2
    iget-boolean v10, v7, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    or-int/2addr v4, v10

    .line 515
    .local v4, "replacing":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_9

    .line 516
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayWithWallpaper:Z

    .line 515
    :goto_3
    or-int/2addr v3, v10

    .line 518
    .local v3, "keyguardGoingAwayWithWallpaper":Z
    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v11, 0x100000

    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    const/4 v0, 0x1

    .line 519
    .local v0, "hasWallpaper":Z
    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v10, v7, :cond_6

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 520
    :cond_6
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found wallpaper target: #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_7
    invoke-virtual {p2, v7, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 522
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v7, v10, :cond_c

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 525
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 526
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Win "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": token animating, looking behind."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 525
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 511
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 515
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v4    # "replacing":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 518
    .restart local v3    # "keyguardGoingAwayWithWallpaper":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 530
    .restart local v0    # "hasWallpaper":Z
    :cond_b
    iget-object v10, v8, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v7, v10, :cond_1

    .line 531
    move v9, v1

    goto/16 :goto_1

    .line 535
    .end local v0    # "hasWallpaper":Z
    .end local v3    # "keyguardGoingAwayWithWallpaper":Z
    .end local v4    # "replacing":Z
    .end local v7    # "w":Lcom/android/server/wm/WindowState;
    :cond_c
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_d

    .line 536
    return-void

    .line 539
    :cond_d
    if-ltz v9, :cond_10

    .line 540
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v10, :cond_e

    sget-object v10, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 541
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Found animating detached wallpaper activity: #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 540
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_e
    invoke-virtual {p2, v7, v9}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 477
    :cond_f
    :goto_5
    return-void

    .line 543
    :cond_10
    if-nez v2, :cond_11

    if-eqz v4, :cond_12

    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_12

    .line 548
    :cond_11
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    goto :goto_5

    .line 550
    :cond_12
    if-eqz v3, :cond_f

    .line 554
    iget-object v10, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    iget v11, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    invoke-virtual {p2, v10, v11}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    goto :goto_5
.end method

.method private isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wallpaper vis: target "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", obscured="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 136
    if-eqz p1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v4, " anim="

    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 137
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    .line 135
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    const-string/jumbo v1, " upper="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string/jumbo v1, " lower="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    if-eqz p1, :cond_4

    .line 142
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 141
    :goto_2
    return v0

    .line 136
    :cond_2
    const-string/jumbo v0, "??"

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 138
    goto :goto_1

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 13
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v12, 0x0

    .line 561
    const/4 v6, 0x0

    .line 562
    .local v6, "targetChanged":Z
    iget-object v7, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 563
    .local v7, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v8, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 565
    .local v8, "wallpaperTargetIndex":I
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v9, v7, :cond_11

    .line 566
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v9, v7, :cond_11

    .line 571
    :cond_0
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_2

    :cond_1
    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 573
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "New wallpaper target: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " oldTarget: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 571
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_2
    iput-object v12, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 576
    iput-object v12, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 578
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 579
    .local v5, "oldW":Lcom/android/server/wm/WindowState;
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 580
    const/4 v6, 0x1

    .line 584
    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    .line 585
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    .line 586
    .local v2, "oldAnim":Z
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    .line 587
    .local v0, "foundAnim":Z
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_3

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 588
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "New animation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " old animation: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 587
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_3
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 590
    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 591
    .local v3, "oldI":I
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 592
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "New i: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " old i: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 591
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_4
    if-ltz v3, :cond_8

    .line 595
    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_9

    iget-object v9, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 597
    :goto_0
    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_a

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v9, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 598
    :goto_1
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Animating wallpapers: old#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 599
    const-string/jumbo v11, "="

    .line 598
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 599
    const-string/jumbo v11, " hidden="

    .line 598
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 600
    const-string/jumbo v11, " new#"

    .line 598
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 600
    const-string/jumbo v11, "="

    .line 598
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 601
    const-string/jumbo v11, " hidden="

    .line 598
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_5
    if-le v8, v3, :cond_b

    .line 607
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 608
    const-string/jumbo v10, "Found target above old target."

    .line 607
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_6
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 610
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 612
    move-object v7, v5

    .line 613
    move v8, v3

    .line 621
    :goto_2
    if-eqz v1, :cond_7

    if-eqz v4, :cond_d

    .line 627
    :cond_7
    if-ne v1, v4, :cond_8

    .line 628
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v10, v7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 652
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_8
    :goto_3
    invoke-virtual {p2, v7, v8}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 653
    return v6

    .line 595
    .restart local v0    # "foundAnim":Z
    .restart local v2    # "oldAnim":Z
    .restart local v3    # "oldI":I
    .restart local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_9
    const/4 v1, 0x0

    .local v1, "newTargetHidden":Z
    goto/16 :goto_0

    .line 597
    .end local v1    # "newTargetHidden":Z
    :cond_a
    const/4 v4, 0x0

    .local v4, "oldTargetHidden":Z
    goto/16 :goto_1

    .line 616
    .end local v4    # "oldTargetHidden":Z
    :cond_b
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_c

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 617
    const-string/jumbo v10, "Found target below old target."

    .line 616
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_c
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 619
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 622
    :cond_d
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_e

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 623
    const-string/jumbo v10, "Old wallpaper still the target."

    .line 622
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_e
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 629
    :cond_f
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 630
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 627
    if-eqz v9, :cond_8

    .line 635
    :cond_10
    iput-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_3

    .line 641
    .end local v0    # "foundAnim":Z
    .end local v2    # "oldAnim":Z
    .end local v3    # "oldI":I
    .end local v5    # "oldW":Lcom/android/server/wm/WindowState;
    :cond_11
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v9, :cond_8

    .line 643
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v9

    if-nez v9, :cond_8

    .line 644
    :cond_12
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_13

    sget-object v9, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "No longer animating wallpaper targets!"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_13
    iput-object v12, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 646
    iput-object v12, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 647
    iput-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 648
    const/4 v6, 0x1

    goto :goto_3
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    return-void
.end method

.method adjustWallpaperWindows()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    .line 807
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iput-boolean v9, v6, Lcom/android/server/wm/WindowSurfacePlacer;->mWallpaperMayChange:Z

    .line 809
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 812
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 813
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v1

    .line 814
    .local v1, "targetChanged":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z

    move-result v2

    .line 815
    .local v2, "visible":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 816
    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v4, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 818
    .local v4, "wallpaperTargetIndex":I
    if-nez v3, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_5

    .line 821
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v3, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 822
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget v6, v6, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaperIndex:I

    add-int/lit8 v4, v6, 0x1

    .line 830
    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v2, :cond_3

    .line 831
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 832
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 833
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 835
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 836
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 837
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 839
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v6, v8, :cond_2

    .line 840
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 842
    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v6, v8, :cond_3

    .line 843
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v6, v6, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 847
    :cond_3
    invoke-virtual {p0, v5, v3, v4, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z

    move-result v0

    .line 850
    .local v0, "changed":Z
    if-eqz v1, :cond_4

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "New wallpaper: target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 851
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 850
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 851
    const-string/jumbo v8, " lower="

    .line 850
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 851
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 850
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 851
    const-string/jumbo v8, " upper="

    .line 850
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 852
    iget-object v8, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 850
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_4
    return v0

    .line 826
    .end local v0    # "changed":Z
    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_5
    if-lez v4, :cond_6

    .line 827
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    .restart local v3    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    .local v3, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto/16 :goto_0
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    .prologue
    .line 436
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 435
    return-void
.end method

.method dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V
    .locals 5
    .param p1, "wallpaper"    # Lcom/android/server/wm/WindowState;
    .param p2, "visible"    # Z

    .prologue
    .line 234
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p2, :cond_3

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 234
    if-eqz p2, :cond_3

    .line 236
    :cond_0
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 238
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating vis of wallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string/jumbo v3, ": "

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string/jumbo v3, " from:\n"

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 240
    const-string/jumbo v3, "  "

    const/4 v4, 0x4

    invoke-static {v4, v3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :cond_3
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/high16 v1, -0x80000000

    .line 913
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 914
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 915
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLowerWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 916
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpperWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 918
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 919
    const-string/jumbo v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 920
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    if-ne v0, v1, :cond_2

    .line 921
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_3

    .line 922
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 923
    const-string/jumbo v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 924
    const-string/jumbo v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 912
    :cond_3
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 929
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 930
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 931
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper tokens:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 932
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 933
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    .line 934
    .local v1, "token":Lcom/android/server/wm/WindowToken;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Wallpaper #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 935
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 936
    if-eqz p3, :cond_0

    .line 937
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 938
    const-string/jumbo v2, "    "

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 932
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 940
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 928
    .end local v0    # "i":I
    .end local v1    # "token":Lcom/android/server/wm/WindowToken;
    :cond_1
    return-void
.end method

.method getAnimLayerAdjustment()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    return v0
.end method

.method getLowerWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getUpperWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 187
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 184
    :cond_0
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 12
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v11, 0x0

    .line 192
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1

    .line 193
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_1

    .line 194
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 200
    return-void

    .line 203
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v7, p1, :cond_5

    const/4 v5, 0x1

    .line 204
    .local v5, "wasDeferred":Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_9

    .line 205
    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 206
    .local v3, "token":Lcom/android/server/wm/WindowToken;
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "j":I
    :goto_2
    if-ltz v2, :cond_6

    .line 207
    iget-object v7, v3, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 208
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 209
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v7, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v7, :cond_3

    if-eqz v5, :cond_4

    .line 210
    :cond_3
    const-string/jumbo v7, "hideWallpapers"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v4, v11}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 212
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 213
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_4

    .line 214
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 206
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 203
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v5    # "wasDeferred":Z
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "wasDeferred":Z
    goto :goto_0

    .line 219
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_7

    iget-boolean v7, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v7, :cond_8

    .line 222
    :cond_7
    :goto_3
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 204
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 219
    :cond_8
    sget-object v7, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Hiding wallpaper "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 220
    const-string/jumbo v9, " from "

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 220
    const-string/jumbo v9, " target="

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 220
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 220
    const-string/jumbo v9, " lower="

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 221
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 221
    const-string/jumbo v9, "\n"

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 221
    const-string/jumbo v9, "  "

    const/4 v10, 0x5

    invoke-static {v10, v9}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 219
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 191
    .end local v2    # "j":I
    .end local v3    # "token":Lcom/android/server/wm/WindowToken;
    :cond_9
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWallpaperTargetAnimating()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 150
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isWallpaperVisible()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 858
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-ne v0, v2, :cond_2

    .line 859
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 860
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 861
    const-string/jumbo v1, "*** WALLPAPER DRAW TIMEOUT"

    .line 860
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_1
    return v2

    .line 864
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WindowToken;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 908
    return-void
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 13
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_1

    .line 352
    :cond_0
    move/from16 v8, p7

    .line 353
    .local v8, "doWait":Z
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .end local p7    # "sync":Z
    .local v7, "curTokenNdx":I
    :goto_0
    if-ltz v7, :cond_4

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    iget-object v12, v0, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 355
    .local v12, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v12}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v11, v0, -0x1

    .local v11, "wallpaperNdx":I
    :goto_1
    if-ltz v11, :cond_3

    .line 356
    invoke-virtual {v12, v11}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowState;

    .line 358
    .local v10, "wallpaper":Lcom/android/server/wm/WindowState;
    :try_start_0
    iget-object v0, v10, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    const/16 p7, 0x0

    .line 355
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 351
    .end local v7    # "curTokenNdx":I
    .end local v8    # "doWait":Z
    .end local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p7    # "sync":Z
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq p1, v0, :cond_0

    .line 372
    .end local p7    # "sync":Z
    :cond_2
    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 353
    .restart local v7    # "curTokenNdx":I
    .restart local v8    # "doWait":Z
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 367
    .end local v11    # "wallpaperNdx":I
    .end local v12    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    if-eqz v8, :cond_2

    goto :goto_3

    .line 362
    .restart local v10    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v11    # "wallpaperNdx":I
    .restart local v12    # "windows":Lcom/android/server/wm/WindowList;
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method setAnimLayerAdjustment(Lcom/android/server/wm/WindowState;I)V
    .locals 7
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "adj"    # I

    .prologue
    .line 460
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_1

    .line 461
    :cond_0
    return-void

    .line 464
    :cond_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_3

    :cond_2
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Setting wallpaper layer adj to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_3
    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 466
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_7

    .line 467
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    iget-object v3, v4, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 468
    .local v3, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "j":I
    :goto_1
    if-ltz v1, :cond_6

    .line 469
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 470
    .local v2, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/2addr v5, p2

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 471
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_5

    :cond_4
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWallpaper win "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 472
    const-string/jumbo v6, " anim layer: "

    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 472
    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 471
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 466
    .end local v2    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 459
    .end local v1    # "j":I
    .end local v3    # "windows":Lcom/android/server/wm/WindowList;
    :cond_7
    return-void
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 340
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_1

    .line 341
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 342
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 339
    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .prologue
    .line 330
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 332
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 333
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 334
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 329
    :cond_1
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 24
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "sync"    # Z

    .prologue
    .line 248
    const/16 v17, 0x0

    .line 251
    .local v17, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_10

    const/high16 v13, 0x3f800000    # 1.0f

    .line 252
    .local v13, "defaultWallpaperX":F
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    move/from16 v20, v0

    .line 253
    .local v20, "wpx":F
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    move/from16 v21, v0

    .line 254
    .local v21, "wpxs":F
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int v11, v4, p2

    .line 255
    .local v11, "availw":I
    if-lez v11, :cond_13

    int-to-float v4, v11

    mul-float v4, v4, v20

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    .line 256
    .local v16, "offset":I
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    .line 257
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    add-int v16, v16, v4

    .line 259
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_14

    const/4 v12, 0x1

    .line 260
    .local v12, "changed":Z
    :goto_4
    if-eqz v12, :cond_2

    .line 261
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 264
    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v4, v4, v20

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v4, v4, v21

    if-eqz v4, :cond_4

    .line 265
    :cond_3
    move/from16 v0, v20

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 266
    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 267
    const/16 v17, 0x1

    .line 270
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    move/from16 v22, v0

    .line 271
    .local v22, "wpy":F
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    move/from16 v23, v0

    .line 272
    .local v23, "wpys":F
    :goto_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v10, v4, p3

    .line 273
    .local v10, "availh":I
    if-lez v10, :cond_17

    int-to-float v4, v10

    mul-float v4, v4, v22

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    move/from16 v16, v0

    .line 274
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_5

    .line 275
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    add-int v16, v16, v4

    .line 277
    :cond_5
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    move/from16 v0, v16

    if-eq v4, v0, :cond_7

    .line 278
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Update wallpaper "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_6
    const/4 v12, 0x1

    .line 280
    .local v12, "changed":Z
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 282
    .end local v12    # "changed":Z
    :cond_7
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v4, v4, v22

    if-nez v4, :cond_8

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v4, v4, v23

    if-eqz v4, :cond_9

    .line 283
    :cond_8
    move/from16 v0, v22

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 284
    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 285
    const/16 v17, 0x1

    .line 288
    :cond_9
    if-eqz v17, :cond_f

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_f

    .line 291
    :try_start_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Report new wp offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    const-string/jumbo v6, " x="

    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 292
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 293
    const-string/jumbo v6, " y="

    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 293
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_a
    if-eqz p4, :cond_b

    .line 295
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 297
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 298
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 299
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move/from16 v9, p4

    .line 297
    invoke-interface/range {v4 .. v9}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 300
    if-eqz p4, :cond_f

    .line 301
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_f

    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 303
    .local v18, "start":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    cmp-long v4, v4, v18

    if-gez v4, :cond_e

    .line 306
    :try_start_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 307
    const-string/jumbo v5, "Waiting for offset complete..."

    .line 306
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    const-wide/16 v6, 0x96

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    :goto_8
    :try_start_2
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_d

    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Offset complete!"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_d
    const-wide/16 v4, 0x96

    add-long v4, v4, v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    .line 313
    sget-object v4, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 318
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 325
    .end local v18    # "start":J
    :cond_f
    :goto_9
    return v12

    .line 251
    .end local v10    # "availh":I
    .end local v11    # "availw":I
    .end local v13    # "defaultWallpaperX":F
    .end local v16    # "offset":I
    .end local v20    # "wpx":F
    .end local v21    # "wpxs":F
    .end local v22    # "wpy":F
    .end local v23    # "wpys":F
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "defaultWallpaperX":F
    goto/16 :goto_0

    .line 252
    :cond_11
    move/from16 v20, v13

    .restart local v20    # "wpx":F
    goto/16 :goto_1

    .line 253
    :cond_12
    const/high16 v21, -0x40800000    # -1.0f

    .restart local v21    # "wpxs":F
    goto/16 :goto_2

    .line 255
    .restart local v11    # "availw":I
    :cond_13
    const/16 v16, 0x0

    .restart local v16    # "offset":I
    goto/16 :goto_3

    .line 259
    :cond_14
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 270
    .local v12, "changed":Z
    :cond_15
    const/high16 v22, 0x3f000000    # 0.5f

    .restart local v22    # "wpy":F
    goto/16 :goto_5

    .line 271
    :cond_16
    const/high16 v23, -0x40800000    # -1.0f

    .restart local v23    # "wpys":F
    goto/16 :goto_6

    .line 273
    .restart local v10    # "availh":I
    :cond_17
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 321
    .end local v12    # "changed":Z
    :catch_0
    move-exception v14

    .local v14, "e":Landroid/os/RemoteException;
    goto :goto_9

    .line 309
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v18    # "start":J
    :catch_1
    move-exception v15

    .local v15, "e":Ljava/lang/InterruptedException;
    goto :goto_8
.end method

.method updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 13
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .prologue
    const/high16 v12, -0x80000000

    const/4 v11, 0x0

    .line 376
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 377
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 381
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 382
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 384
    .local v1, "dh":I
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 385
    .local v5, "target":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_6

    .line 386
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8

    .line 387
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 391
    :cond_1
    :goto_0
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_9

    .line 392
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 396
    :cond_2
    :goto_1
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_a

    .line 397
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 401
    :cond_3
    :goto_2
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_b

    .line 402
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 406
    :cond_4
    :goto_3
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_c

    .line 407
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 411
    :cond_5
    :goto_4
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_d

    .line 412
    iget v10, v5, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 418
    :cond_6
    :goto_5
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .end local p2    # "sync":Z
    .local v0, "curTokenNdx":I
    :goto_6
    if-ltz v0, :cond_f

    .line 419
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    iget-object v9, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 420
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    .local v7, "wallpaperNdx":I
    :goto_7
    if-ltz v7, :cond_e

    .line 421
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 422
    .local v6, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0, v6, v4, v1, p2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 423
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 424
    .local v8, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->computeShownFrameLocked()V

    .line 427
    iget-object v10, v6, Lcom/android/server/wm/WindowState;->mShownPosition:Landroid/graphics/Point;

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(Landroid/graphics/Point;)V

    .line 429
    const/4 p2, 0x0

    .line 420
    .end local v8    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 388
    .end local v0    # "curTokenNdx":I
    .end local v6    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    .restart local p2    # "sync":Z
    :cond_8
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_1

    .line 389
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_0

    .line 393
    :cond_9
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_2

    .line 394
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_1

    .line 398
    :cond_a
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v10, v12, :cond_3

    .line 399
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_2

    .line 403
    :cond_b
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v10, v12, :cond_4

    .line 404
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3

    .line 408
    :cond_c
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_5

    .line 409
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_4

    .line 413
    :cond_d
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_6

    .line 414
    iget v10, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_5

    .line 418
    .end local p2    # "sync":Z
    .restart local v0    # "curTokenNdx":I
    .restart local v7    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 375
    .end local v7    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_f
    return-void
.end method

.method updateWallpaperVisibility()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 154
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 155
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v10}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    .line 159
    .local v6, "visible":Z
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 160
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 161
    .local v4, "dw":I
    iget v1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 163
    .local v1, "dh":I
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_5

    .line 164
    iget-object v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 165
    .local v5, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-ne v10, v6, :cond_1

    .line 166
    if-eqz v6, :cond_3

    move v10, v11

    :goto_1
    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 169
    iput-boolean v12, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 172
    :cond_1
    iget-object v9, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 173
    .local v9, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .local v8, "wallpaperNdx":I
    :goto_2
    if-ltz v8, :cond_4

    .line 174
    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 175
    .local v7, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz v6, :cond_2

    .line 176
    invoke-virtual {p0, v7, v4, v1, v11}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 179
    :cond_2
    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 173
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .end local v7    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    move v10, v12

    .line 166
    goto :goto_1

    .line 163
    .restart local v8    # "wallpaperNdx":I
    .restart local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 153
    .end local v5    # "token":Lcom/android/server/wm/WindowToken;
    .end local v8    # "wallpaperNdx":I
    .end local v9    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    return-void
.end method

.method updateWallpaperWindowsPlacement(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;IZ)Z
    .locals 18
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p3, "wallpaperTargetIndex"    # I
    .param p4, "visible"    # Z

    .prologue
    .line 710
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 711
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v6, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 712
    .local v6, "dw":I
    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 716
    .local v4, "dh":I
    const/4 v2, 0x0

    .line 717
    .local v2, "changed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    .local v3, "curTokenNdx":I
    :goto_0
    if-ltz v3, :cond_10

    .line 718
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowToken;

    .line 719
    .local v10, "token":Lcom/android/server/wm/WindowToken;
    iget-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v0, p4

    if-ne v15, v0, :cond_1

    .line 720
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v15, :cond_0

    sget-object v16, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 721
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Wallpaper token "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v17, " hidden="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz p4, :cond_5

    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 720
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    if-eqz p4, :cond_6

    const/4 v15, 0x0

    :goto_2
    iput-boolean v15, v10, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 724
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 727
    :cond_1
    iget-object v11, v10, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    .line 728
    .local v11, "tokenWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v11}, Lcom/android/server/wm/WindowList;->size()I

    move-result v15

    add-int/lit8 v14, v15, -0x1

    .local v14, "wallpaperNdx":I
    :goto_3
    if-ltz v14, :cond_f

    .line 729
    invoke-virtual {v11, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    .line 731
    .local v13, "wallpaper":Lcom/android/server/wm/WindowState;
    if-eqz p4, :cond_2

    .line 732
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6, v4, v15}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 736
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v13, v1}, Lcom/android/server/wm/WallpaperController;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 738
    iget-object v15, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 739
    iget v0, v13, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    move/from16 v17, v0

    add-int v16, v16, v17

    .line 738
    move/from16 v0, v16

    iput v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 740
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    if-nez v15, :cond_3

    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v15, :cond_4

    :cond_3
    sget-object v15, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "adjustWallpaper win "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 741
    const-string/jumbo v17, " anim layer: "

    .line 740
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 741
    iget-object v0, v13, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v17, v0

    .line 740
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_4
    move-object/from16 v0, p2

    if-ne v13, v0, :cond_8

    .line 745
    add-int/lit8 p3, p3, -0x1

    .line 746
    if-lez p3, :cond_7

    .line 747
    add-int/lit8 v15, p3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowState;

    .line 728
    :goto_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 721
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v14    # "wallpaperNdx":I
    :cond_5
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 722
    :cond_6
    const/4 v15, 0x1

    goto/16 :goto_2

    .line 747
    .restart local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .restart local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v14    # "wallpaperNdx":I
    :cond_7
    const/16 p2, 0x0

    .local p2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    goto :goto_4

    .line 753
    .end local p2    # "wallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 754
    .local v8, "oldIndex":I
    if-ltz v8, :cond_a

    .line 755
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-eqz v15, :cond_9

    sget-object v15, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 756
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Wallpaper removing at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 755
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowList;->remove(I)Ljava/lang/Object;

    .line 758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 759
    move/from16 v0, p3

    if-ge v8, v0, :cond_a

    .line 760
    add-int/lit8 p3, p3, -0x1

    .line 767
    :cond_a
    const/4 v7, 0x0

    .line 768
    .local v7, "insertionIndex":I
    if-eqz p4, :cond_c

    if-eqz p2, :cond_c

    .line 769
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 770
    .local v12, "type":I
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 771
    .local v9, "privateFlags":I
    and-int/lit16 v15, v9, 0x400

    if-nez v15, :cond_b

    .line 772
    const/16 v15, 0x7ed

    if-ne v12, v15, :cond_c

    .line 773
    :cond_b
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 774
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WallpaperController;->findLowestWindowOnScreen(Lcom/android/server/wm/WindowList;)I

    move-result v16

    .line 773
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 777
    .end local v9    # "privateFlags":I
    .end local v12    # "type":I
    :cond_c
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-nez v15, :cond_d

    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-nez v15, :cond_d

    .line 778
    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v15, :cond_e

    if-eq v8, v7, :cond_e

    :cond_d
    sget-object v15, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 779
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Moving wallpaper "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 780
    const-string/jumbo v17, " from "

    .line 779
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 780
    const-string/jumbo v17, " to "

    .line 779
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 778
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 784
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 717
    .end local v7    # "insertionIndex":I
    .end local v8    # "oldIndex":I
    .end local v13    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 788
    .end local v10    # "token":Lcom/android/server/wm/WindowToken;
    .end local v11    # "tokenWindows":Lcom/android/server/wm/WindowList;
    .end local v14    # "wallpaperNdx":I
    :cond_10
    return v2
.end method

.method updateWallpaperWindowsTargetByLayer(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)Z
    .locals 9
    .param p1, "windows"    # Lcom/android/server/wm/WindowList;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .prologue
    const/4 v5, 0x0

    .line 659
    iget-object v2, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 660
    .local v2, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget v3, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTargetIndex:I

    .line 661
    .local v3, "wallpaperTargetIndex":I
    if-eqz v2, :cond_4

    const/4 v1, 0x1

    .line 663
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 666
    invoke-direct {p0, v2}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 667
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wallpaper visibility: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_1

    .line 673
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v5, v5, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    .line 671
    :cond_1
    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperAnimLayerAdjustment:I

    .line 675
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->getMaxWallpaperLayer()I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit16 v0, v5, 0x3e8

    .line 682
    .local v0, "maxLayer":I
    :goto_1
    if-lez v3, :cond_3

    .line 683
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p1, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 684
    .local v4, "wb":Lcom/android/server/wm/WindowState;
    iget v5, v4, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-ge v5, v0, :cond_6

    .line 685
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v2, :cond_6

    .line 686
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_2

    .line 687
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eq v5, v6, :cond_6

    .line 688
    :cond_2
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 689
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v5, :cond_5

    .line 702
    .end local v0    # "maxLayer":I
    .end local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_3
    :goto_2
    invoke-virtual {p2, v2, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;I)V

    .line 703
    return v1

    .end local v1    # "visible":Z
    :cond_4
    move v1, v5

    .line 661
    goto :goto_0

    .line 690
    .restart local v0    # "maxLayer":I
    .restart local v1    # "visible":Z
    .restart local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_5
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v5, v6, :cond_3

    .line 695
    :cond_6
    move-object v2, v4

    .line 696
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 699
    .end local v0    # "maxLayer":I
    .end local v4    # "wb":Lcom/android/server/wm/WindowState;
    :cond_7
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "No wallpaper target"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 442
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 439
    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 450
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->notifyAll()V

    .line 447
    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 12

    .prologue
    const/16 v11, 0x27

    const/4 v10, 0x0

    .line 868
    const/4 v3, 0x1

    .line 869
    .local v3, "transitionReady":Z
    const/4 v5, 0x1

    .line 870
    .local v5, "wallpaperReady":Z
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 871
    .local v0, "curTokenIndex":I
    :goto_0
    if-ltz v0, :cond_6

    .line 870
    if-eqz v5, :cond_6

    .line 872
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 873
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "curWallpaperIndex":I
    :goto_1
    if-ltz v1, :cond_5

    .line 875
    iget-object v6, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 876
    .local v4, "wallpaper":Lcom/android/server/wm/WindowState;
    iget-boolean v6, v4, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 874
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 878
    :cond_1
    const/4 v5, 0x0

    .line 879
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 881
    const/4 v3, 0x0

    .line 883
    :cond_2
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_3

    .line 884
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 885
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 886
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 887
    const-wide/16 v8, 0x1f4

    .line 886
    invoke-virtual {v6, v11, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 889
    :cond_3
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v6, :cond_5

    :cond_4
    sget-object v6, Lcom/android/server/wm/WallpaperController;->TAG:Ljava/lang/String;

    .line 890
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wallpaper should be visible but has not been drawn yet. mWallpaperDrawState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 891
    iget v8, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 890
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 889
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    .end local v4    # "wallpaper":Lcom/android/server/wm/WindowState;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 896
    .end local v1    # "curWallpaperIndex":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_6
    if-eqz v5, :cond_7

    .line 897
    iput v10, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 898
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v6, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 901
    :cond_7
    return v3
.end method
