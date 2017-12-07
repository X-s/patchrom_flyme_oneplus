.class public Lcom/android/server/wm/DockedStackDividerController;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"

# interfaces
.implements Lcom/android/server/wm/DimLayer$DimLayerUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final CLIP_REVEAL_MEET_EARLIEST:F = 0.6f

.field private static final CLIP_REVEAL_MEET_FRACTION_MAX:F = 0.8f

.field private static final CLIP_REVEAL_MEET_FRACTION_MIN:F = 0.4f

.field private static final CLIP_REVEAL_MEET_LAST:F = 1.0f

.field private static final DIVIDER_WIDTH_INACTIVE_DP:I = 0x4

.field private static final IME_ADJUST_ANIM_DURATION:J = 0x118L

.field private static final IME_ADJUST_DRAWN_TIMEOUT:J = 0xc8L

.field private static final IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustedForDivider:Z

.field private mAdjustedForIme:Z

.field private mAnimatingForIme:Z

.field private mAnimatingForMinimizedDockedStack:Z

.field private mAnimationDuration:J

.field private mAnimationStart:F

.field private mAnimationStartDelayed:Z

.field private mAnimationStartTime:J

.field private mAnimationStarted:Z

.field private mAnimationTarget:F

.field private mDelayedImeWin:Lcom/android/server/wm/WindowState;

.field private final mDimLayer:Lcom/android/server/wm/DimLayer;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDividerAnimationStart:F

.field private mDividerAnimationTarget:F

.field private mDividerInsets:I

.field private mDividerWindowWidth:I

.field private mDividerWindowWidthInactive:I

.field private final mDockedStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IDockedStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHeight:I

.field private mImeHideRequested:Z

.field private mLastAnimationProgress:F

.field private mLastDividerProgress:F

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastVisibility:Z

.field private mMaximizeMeetFraction:F

.field private mMinimizedDock:Z

.field private final mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

.field private mResizing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTouchRegion:Landroid/graphics/Rect;

.field private mWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    const-string/jumbo v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 93
    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 65
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 110
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 115
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 114
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 138
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 143
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 144
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 145
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/server/wm/DimLayer;

    iget-object v2, p2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 146
    const-string/jumbo v4, "DockedStackDim"

    .line 145
    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 148
    const v1, 0x10c000d

    .line 147
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 149
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 141
    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F
    .param p3, "naturalAmount"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 828
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    cmpl-float v4, v4, v6

    if-nez v4, :cond_0

    .line 829
    return p3

    .line 831
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v1

    .line 832
    .local v1, "minimizeDistance":I
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v4

    int-to-float v4, v4

    .line 833
    int-to-float v5, v1

    .line 832
    div-float v2, v4, v5

    .line 834
    .local v2, "startPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v4, p2

    sub-float v5, v6, p2

    mul-float/2addr v5, v2

    add-float v0, v4, v5

    .line 835
    .local v0, "amountPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    div-float v4, p2, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 836
    .local v3, "t2":F
    mul-float v4, v0, v3

    sub-float v5, v6, v3

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    return v4
.end method

.method private animateForIme(J)Z
    .locals 13
    .param p1, "now"    # J

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 728
    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz v5, :cond_1

    .line 729
    :cond_0
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 730
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 732
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v5

    const/high16 v6, 0x438c0000    # 280.0f

    mul-float/2addr v5, v6

    .line 731
    float-to-long v6, v5

    iput-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 734
    :cond_1
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v6, p1, v6

    long-to-float v5, v6

    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 735
    .local v3, "t":F
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v5, v5, v8

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-interface {v5, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 737
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v2

    .line 738
    .local v2, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    const/4 v4, 0x0

    .line 739
    .local v4, "updated":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .end local v4    # "updated":Z
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 740
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 741
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 742
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_4

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_4

    .line 743
    invoke-virtual {v1, v10}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 744
    const/4 v4, 0x1

    .line 753
    :goto_2
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_2

    .line 754
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    .line 739
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 735
    .end local v0    # "i":I
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_3
    sget-object v5, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 746
    .restart local v0    # "i":I
    .restart local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v2    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 747
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 749
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 750
    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 748
    invoke-virtual {v1, v5, v6, v9}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v5

    or-int/2addr v4, v5

    .local v4, "updated":Z
    goto :goto_2

    .line 758
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v4    # "updated":Z
    :cond_5
    if-eqz v4, :cond_6

    .line 759
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 761
    :cond_6
    cmpl-float v5, v3, v8

    if-ltz v5, :cond_7

    .line 762
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 763
    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 764
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 765
    return v9

    .line 767
    :cond_7
    return v10
.end method

.method private animateForMinimizedDockedStack(J)Z
    .locals 11
    .param p1, "now"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 772
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 773
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    if-nez v4, :cond_0

    .line 774
    iput-boolean v10, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 775
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 776
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 777
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    move-result-wide v2

    .line 780
    .local v2, "transitionDuration":J
    :goto_0
    long-to-float v4, v2

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v5

    mul-float/2addr v4, v5

    .line 779
    float-to-long v4, v4

    iput-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 781
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    move-result v4

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    .line 782
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 783
    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    mul-float/2addr v5, v6

    float-to-long v6, v5

    .line 782
    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    .line 785
    .end local v2    # "transitionDuration":J
    :cond_0
    iget-wide v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v4, p1, v4

    long-to-float v4, v4

    iget-wide v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 786
    .local v1, "t":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 788
    if-eqz v0, :cond_1

    .line 789
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 790
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 793
    :cond_1
    cmpl-float v4, v1, v8

    if-ltz v4, :cond_4

    .line 794
    iput-boolean v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 795
    return v9

    .line 778
    .end local v1    # "t":F
    :cond_2
    const-wide/16 v2, 0xc8

    goto :goto_0

    .line 786
    .restart local v1    # "t":F
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 797
    :cond_4
    return v10
.end method

.method private checkMinimizeChanged(Z)V
    .locals 10
    .param p1, "animate"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 531
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    if-nez v9, :cond_0

    .line 532
    return-void

    .line 534
    :cond_0
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 535
    .local v2, "homeStack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_1

    .line 536
    return-void

    .line 538
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 539
    .local v4, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_4

    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 543
    iget-object v9, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 544
    .local v0, "fullscreenStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 545
    .local v3, "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    .line 546
    .local v6, "topHomeStackTask":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v5, 0x1

    .line 547
    .local v5, "homeVisible":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v9

    if-nez v9, :cond_6

    .line 548
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v8, :cond_7

    if-eq v6, v4, :cond_7

    const/4 v1, 0x1

    .line 549
    .local v1, "homeBehind":Z
    :goto_1
    if-eqz v5, :cond_3

    if-eqz v1, :cond_8

    :cond_3
    :goto_2
    invoke-direct {p0, v7, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 530
    return-void

    .line 540
    .end local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "homeBehind":Z
    .end local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .end local v5    # "homeVisible":Z
    .end local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_4
    return-void

    .line 546
    .restart local v0    # "fullscreenStack":Lcom/android/server/wm/TaskStack;
    .restart local v3    # "homeStackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    .restart local v6    # "topHomeStackTask":Lcom/android/server/wm/Task;
    :cond_5
    const/4 v5, 0x0

    .restart local v5    # "homeVisible":Z
    goto :goto_0

    .line 547
    :cond_6
    const/4 v1, 0x1

    .restart local v1    # "homeBehind":Z
    goto :goto_1

    .line 548
    .end local v1    # "homeBehind":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "homeBehind":Z
    goto :goto_1

    :cond_8
    move v7, v8

    .line 549
    goto :goto_2
.end method

.method private clearImeAdjustAnimation()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 598
    const/4 v0, 0x0

    .line 599
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 600
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 601
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 602
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 603
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    .line 604
    const/4 v0, 0x1

    .line 600
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 607
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 608
    return v0
.end method

.method private containsAppInDockedStack(Landroid/util/ArraySet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v4, 0x0

    .line 517
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 518
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 519
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v2, v2, Lcom/android/server/wm/TaskStack;->mStackId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 520
    const/4 v2, 0x1

    return v2

    .line 517
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 523
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return v4
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .locals 7
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const v6, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 844
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 846
    :cond_0
    return v5

    .line 845
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 848
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v1

    .line 849
    .local v1, "minimizeDistance":I
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    .line 850
    int-to-float v4, v1

    .line 849
    div-float v0, v3, v4

    .line 851
    .local v0, "fraction":F
    const/4 v3, 0x0

    sub-float v4, v0, v6

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 854
    .local v2, "t":F
    sub-float v3, v5, v2

    const v4, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v3, v4

    .line 853
    const v4, 0x3f19999a    # 0.6f

    add-float/2addr v3, v4

    return v3
.end method

.method private getInterpolatedAnimationValue(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 802
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getInterpolatedDividerValue(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 806
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .locals 2
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;
    .param p2, "t"    # F

    .prologue
    .line 813
    invoke-direct {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v0

    .line 814
    .local v0, "naturalAmount":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    move-result v1

    return v1

    .line 817
    :cond_0
    return v0
.end method

.method private initSnapAlgorithmForRotations()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 198
    .local v7, "baseConfig":Landroid/content/res/Configuration;
    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    .line 199
    .local v8, "config":Landroid/content/res/Configuration;
    const/4 v10, 0x0

    .local v10, "rotation":I
    :goto_0
    const/4 v0, 0x4

    if-ge v10, v0, :cond_6

    .line 200
    if-eq v10, v12, :cond_0

    const/4 v0, 0x3

    if-ne v10, v0, :cond_1

    :cond_0
    move v9, v12

    .line 201
    .local v9, "rotated":Z
    :goto_1
    if-eqz v9, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 204
    .local v2, "dw":I
    :goto_2
    if-eqz v9, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 207
    .local v3, "dh":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v10, v2, v3, v1}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 208
    invoke-virtual {v8}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 209
    if-gt v2, v3, :cond_4

    move v0, v12

    :goto_4
    iput v0, v8, Landroid/content/res/Configuration;->orientation:I

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface {v0, v2, v3, v10, v1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayWidth(IIII)I

    move-result v0

    int-to-float v0, v0

    .line 212
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 211
    div-float/2addr v0, v1

    .line 210
    float-to-int v0, v0

    iput v0, v8, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget v1, v7, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface {v0, v2, v3, v10, v1}, Landroid/view/WindowManagerPolicy;->getConfigDisplayHeight(IIII)I

    move-result v0

    int-to-float v0, v0

    .line 215
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 214
    div-float/2addr v0, v1

    .line 213
    float-to-int v0, v0

    iput v0, v8, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v11

    .line 217
    .local v11, "rotationContext":Landroid/content/Context;
    iget-object v14, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 218
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 219
    iget v5, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v12, :cond_5

    move v5, v12

    :goto_5
    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 217
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    aput-object v0, v14, v10

    .line 199
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v9    # "rotated":Z
    .end local v11    # "rotationContext":Landroid/content/Context;
    :cond_1
    move v9, v13

    .line 200
    goto :goto_1

    .line 203
    .restart local v9    # "rotated":Z
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .restart local v2    # "dw":I
    goto :goto_2

    .line 206
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .restart local v3    # "dh":I
    goto :goto_3

    .line 209
    :cond_4
    const/4 v0, 0x2

    goto :goto_4

    .restart local v11    # "rotationContext":Landroid/content/Context;
    :cond_5
    move v5, v13

    .line 219
    goto :goto_5

    .line 194
    .end local v2    # "dw":I
    .end local v3    # "dh":I
    .end local v9    # "rotated":Z
    .end local v11    # "rotationContext":Landroid/content/Context;
    :cond_6
    return-void
.end method

.method private isAnimationMaximizing()Z
    .locals 2

    .prologue
    .line 708
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 553
    iget-object v0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private loadDimens()V
    .locals 3

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 225
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    const v2, 0x1050023

    .line 225
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    .line 227
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 228
    const v2, 0x1050024

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x4

    .line 229
    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    .line 231
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    .line 223
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .locals 3

    .prologue
    .line 271
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    .line 272
    .local v1, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 273
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->resetDragResizingChangeReported()V

    .line 272
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .locals 6
    .param p1, "minimizedDock"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 566
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 567
    .local v2, "wasMinimized":Z
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 568
    if-ne p1, v2, :cond_0

    .line 569
    return-void

    .line 572
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    move-result v0

    .line 573
    .local v0, "imeChanged":Z
    const/4 v1, 0x0

    .line 574
    .local v1, "minimizedChange":Z
    if-eqz p1, :cond_5

    .line 575
    if-eqz p2, :cond_4

    .line 576
    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    .line 587
    .end local v1    # "minimizedChange":Z
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 588
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_7

    .line 593
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 565
    :cond_3
    return-void

    .line 578
    .restart local v1    # "minimizedChange":Z
    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v1

    .local v1, "minimizedChange":Z
    goto :goto_0

    .line 581
    .local v1, "minimizedChange":Z
    :cond_5
    if-eqz p2, :cond_6

    .line 582
    invoke-direct {p0, v4, v3}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_0

    .line 584
    :cond_6
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v1

    .local v1, "minimizedChange":Z
    goto :goto_0

    .line 589
    .end local v1    # "minimizedChange":Z
    :cond_7
    sget-object v3, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 591
    const-string/jumbo v5, " minimizedChange="

    .line 589
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setMinimizedDockedStack(Z)Z
    .locals 4
    .param p1, "minimized"    # Z

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedStackVisibleForUserLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 703
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    .line 704
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private startAdjustAnimation(FF)V
    .locals 1
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 614
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 615
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 611
    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "imeWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/16 v8, 0x18

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 624
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-nez v4, :cond_4

    .line 625
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    int-to-float v4, v4

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 626
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    int-to-float v4, v4

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 627
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 628
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 633
    :goto_2
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 634
    iput-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 635
    if-eqz p1, :cond_5

    move v4, v5

    :goto_3
    int-to-float v4, v4

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 636
    if-eqz p2, :cond_0

    move v6, v5

    :cond_0
    int-to-float v4, v6

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 638
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    .line 639
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_4
    if-ltz v1, :cond_6

    .line 640
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 641
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isVisibleLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 642
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    .line 639
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .end local v1    # "i":I
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_2
    move v4, v6

    .line 625
    goto :goto_0

    :cond_3
    move v4, v6

    .line 626
    goto :goto_1

    .line 630
    :cond_4
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 631
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    goto :goto_2

    :cond_5
    move v4, v6

    .line 635
    goto :goto_3

    .line 648
    .restart local v1    # "i":I
    .restart local v3    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 649
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 650
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 651
    const-wide/16 v6, 0xc8

    .line 650
    invoke-virtual {v4, v8, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 652
    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 653
    if-eqz p3, :cond_8

    .line 656
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_7

    .line 657
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    .line 659
    :cond_7
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    .line 660
    iget-object v4, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->startDelayingAnimationStart()V

    .line 665
    :cond_8
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 667
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v5, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;

    invoke-direct {v5, p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController$-void_startImeAdjustAnimation_boolean_adjustedForIme_boolean_adjustedForDivider_com_android_server_wm_WindowState_imeWin_LambdaImpl0;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZLjava/lang/Runnable;)V

    iput-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 619
    .end local v0    # "callback":Ljava/lang/Runnable;
    :goto_5
    return-void

    .line 697
    :cond_9
    if-nez p1, :cond_a

    move v5, p2

    :cond_a
    const-wide/16 v6, 0x118

    .line 696
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    goto :goto_5
.end method


# virtual methods
.method synthetic -com_android_server_wm_DockedStackDividerController_lambda$1(ZZLjava/lang/Runnable;)V
    .locals 5
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 668
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 669
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->endDelayingAnimationStart()V

    .line 674
    :cond_0
    const-wide/16 v0, 0x0

    .line 675
    .local v0, "duration":J
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v2, p1, :cond_3

    .line 676
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-ne v2, p2, :cond_3

    .line 677
    const-wide/16 v0, 0x118

    .line 686
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 685
    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 689
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startImeAdjustAnimation callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_1
    if-eqz p3, :cond_2

    .line 691
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 0
    :cond_2
    return-void

    .line 679
    :cond_3
    sget-object v2, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME adjust changed while waiting for drawn: adjustedForIme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 681
    const-string/jumbo v4, " adjustedForDivider="

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 682
    const-string/jumbo v4, " mAdjustedForIme="

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 682
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 683
    const-string/jumbo v4, " mAdjustedForDivider="

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 683
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public animate(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    const/4 v2, 0x0

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    .line 713
    return v2

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_1

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    move-result v0

    return v0

    .line 717
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-eqz v0, :cond_2

    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    move-result v0

    return v0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowLayersController;->getResizeDimLayer()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    .line 723
    :cond_3
    return v2
.end method

.method public dimFullscreen()Z
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "DockedStackDividerController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mLastVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mMinimizedDock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mAdjustedForIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  mAdjustedForDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  Dim layer is dimming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 881
    :cond_0
    return-void
.end method

.method getContentInsets()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    return v0
.end method

.method getContentWidth()I
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method getContentWidthInactive()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    return v0
.end method

.method public getDimBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 868
    return-void
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getImeHeightAdjustedFor()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .locals 16
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    .line 156
    .local v9, "di":Landroid/view/DisplayInfo;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_1

    .line 157
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v3, v4, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v3, v4, :cond_1

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v3

    .line 160
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 161
    .local v8, "baseDisplayWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 162
    .local v7, "baseDisplayHeight":I
    const v10, 0x7fffffff

    .line 166
    .local v10, "minWidth":I
    const/4 v14, 0x0

    .local v14, "rotation":I
    :goto_0
    const/4 v3, 0x4

    if-ge v14, v3, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v9, Landroid/view/DisplayInfo;->rotation:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v14, v5}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 169
    const/4 v3, 0x1

    if-eq v14, v3, :cond_2

    const/4 v3, 0x3

    if-ne v14, v3, :cond_3

    :cond_2
    const/4 v13, 0x1

    .line 170
    .local v13, "rotated":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 171
    if-eqz v13, :cond_4

    move v4, v7

    .line 172
    :goto_2
    if-eqz v13, :cond_5

    move v3, v8

    .line 170
    :goto_3
    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v6, v15, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-gt v3, v4, :cond_6

    .line 174
    const/4 v11, 0x1

    .line 176
    .local v11, "orientation":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v3, v4, v11}, Lcom/android/server/wm/TaskStack;->getDockSideUnchecked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v2

    .line 177
    .local v2, "dockSide":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v4

    .line 177
    invoke-static {v3, v2, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v12

    .line 182
    .local v12, "position":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    aget-object v3, v3, v14

    invoke-virtual {v3, v12}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v3

    iget v1, v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 184
    .local v1, "snappedPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v6

    .line 184
    invoke-static/range {v1 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 187
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 186
    invoke-interface {v3, v14, v4, v5, v6}, Landroid/view/WindowManagerPolicy;->getStableInsetsLw(IIILandroid/graphics/Rect;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 166
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 169
    .end local v1    # "snappedPosition":I
    .end local v2    # "dockSide":I
    .end local v11    # "orientation":I
    .end local v12    # "position":I
    .end local v13    # "rotated":Z
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "rotated":Z
    goto/16 :goto_1

    :cond_4
    move v4, v8

    .line 171
    goto/16 :goto_2

    :cond_5
    move v3, v7

    .line 172
    goto/16 :goto_3

    .line 175
    :cond_6
    const/4 v11, 0x2

    .restart local v11    # "orientation":I
    goto/16 :goto_4

    .line 191
    .end local v11    # "orientation":I
    .end local v13    # "rotated":Z
    :cond_7
    int-to-float v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 265
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method isImeHideRequested()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return v0
.end method

.method isMinimizedDock()Z
    .locals 1

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    return v0
.end method

.method isResizing()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    return v0
.end method

.method notifyAdjustedForImeChanged(ZJ)V
    .locals 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J

    .prologue
    .line 447
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 448
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 449
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 451
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering adjusted for ime changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 456
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 446
    return-void
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .locals 3
    .param p2, "appTransition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v2, 0x1

    .line 499
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 500
    .local v0, "wasMinimized":Z
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 507
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    if-eqz p2, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps(Z)V

    .line 498
    :cond_0
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 494
    return-void
.end method

.method notifyDockSideChanged(I)V
    .locals 6
    .param p1, "newDockSide"    # I

    .prologue
    .line 434
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 435
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 436
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 438
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering dock side changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 443
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 433
    return-void
.end method

.method notifyDockedDividerVisibilityChanged(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 361
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 362
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 363
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 365
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering divider visibility changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 360
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .locals 7
    .param p1, "exists"    # Z

    .prologue
    .line 374
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 375
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 376
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDockedStackListener;

    .line 378
    .local v3, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v3, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WindowManager"

    const-string/jumbo v6, "Error delivering docked stack exists changed event."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/view/IDockedStackListener;
    :cond_0
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 384
    if-eqz p1, :cond_2

    .line 386
    const-class v5, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 387
    .local v2, "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_1

    .line 391
    invoke-interface {v2}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 392
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 373
    .end local v2    # "inputMethodManagerInternal":Landroid/view/inputmethod/InputMethodManagerInternal;
    :cond_1
    :goto_2
    return-void

    .line 394
    :cond_2
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 395
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    goto :goto_2
.end method

.method notifyDockedStackMinimizedChanged(ZJ)V
    .locals 8
    .param p1, "minimizedDock"    # Z
    .param p2, "animDuration"    # J

    .prologue
    const/16 v7, 0x35

    const/4 v5, 0x0

    .line 418
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 419
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 420
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 419
    :goto_0
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 421
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 422
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 425
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    .end local v3    # "size":I
    :cond_0
    move v4, v5

    .line 420
    goto :goto_0

    .line 426
    .restart local v1    # "i":I
    .restart local v2    # "listener":Landroid/view/IDockedStackListener;
    .restart local v3    # "size":I
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "Error delivering minimized dock changed event."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 430
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "listener":Landroid/view/IDockedStackListener;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 417
    return-void
.end method

.method onConfigurationChanged()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 234
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 326
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 327
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 334
    return-void

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 338
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 339
    .local v0, "side":I
    packed-switch v0, :pswitch_data_0

    .line 357
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 325
    return-void

    .line 341
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 342
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 341
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 345
    :pswitch_1
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v3, v4

    .line 346
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v5, v6

    .line 345
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 349
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 350
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 349
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 353
    :pswitch_3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v3, v4

    .line 354
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v5, v6

    .line 353
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method reevaluateVisibility(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 283
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskStack;

    .line 289
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 290
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    if-ne v2, v1, :cond_1

    if-eqz p1, :cond_4

    .line 293
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 294
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 295
    if-nez v1, :cond_2

    .line 296
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 282
    :cond_2
    return-void

    .line 289
    .end local v1    # "visible":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0

    .line 291
    :cond_4
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/IDockedStackListener;

    .prologue
    const-wide/16 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 461
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 462
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 464
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZJ)V

    .line 465
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 459
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resetImeHideRequested()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 402
    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .locals 4
    .param p1, "adjustedForIme"    # Z
    .param p2, "adjustedForDivider"    # Z
    .param p3, "animate"    # Z
    .param p4, "imeWin"    # Lcom/android/server/wm/WindowState;
    .param p5, "imeHeight"    # I

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    if-eq v0, p5, :cond_3

    .line 309
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_4

    .line 313
    :cond_1
    if-nez p1, :cond_5

    move v0, p2

    :goto_1
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 315
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 316
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    .line 317
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 306
    :cond_2
    return-void

    .line 308
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eq v0, p2, :cond_2

    goto :goto_0

    .line 310
    :cond_4
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    goto :goto_2

    .line 313
    :cond_5
    const/4 v0, 0x1

    goto :goto_1
.end method

.method setResizeDimLayer(ZIF)V
    .locals 8
    .param p1, "visible"    # Z
    .param p2, "targetStackId"    # I
    .param p3, "alpha"    # F

    .prologue
    const/4 v3, 0x0

    .line 470
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 471
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStackIdToStack:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 472
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 473
    .local v0, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    move v2, v3

    .line 474
    .local v2, "visibleAndValid":Z
    if-eqz v2, :cond_1

    .line 475
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 476
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_3

    .line 477
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 478
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLayersController:Lcom/android/server/wm/WindowLayersController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowLayersController;->getResizeDimLayer()I

    move-result v4

    .line 479
    const-wide/16 v6, 0x0

    .line 478
    invoke-virtual {v3, v4, p3, v6, v7}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 484
    .end local v2    # "visibleAndValid":Z
    :cond_1
    :goto_0
    if-nez v2, :cond_2

    .line 485
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 487
    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 469
    return-void

    .line 481
    .restart local v2    # "visibleAndValid":Z
    :cond_3
    const/4 v2, 0x0

    .local v2, "visibleAndValid":Z
    goto :goto_0
.end method

.method setResizing(Z)V
    .locals 1
    .param p1, "resizing"    # Z

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    if-eq v0, p1, :cond_0

    .line 256
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    .line 257
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    .line 254
    :cond_0
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "touchRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 261
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 277
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 874
    sget-object v0, Lcom/android/server/wm/DockedStackDividerController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method wasVisible()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    return v0
.end method
