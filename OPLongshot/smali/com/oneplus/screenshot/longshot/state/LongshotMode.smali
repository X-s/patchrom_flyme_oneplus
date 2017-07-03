.class public Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.super Ljava/lang/Object;
.source "LongshotMode.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lcom/oneplus/screenshot/longshot/state/LongshotContext;
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;
.implements Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;
    }
.end annotation


# static fields
.field private static final DIM_AMOUNT:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Longshot.LongshotMode"

.field private static sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# instance fields
.field private mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

.field private mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

.field private mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

.field private mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mFinisher:Ljava/lang/Runnable;

.field private mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field private mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

.field private mHandler:Landroid/os/Handler;

.field private mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

.field private mIndex:I

.field private mIsFirst:Z

.field private mIsFullScreenWindow:Z

.field private mIsLast:Z

.field private mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

.field private mMoveDistance:I

.field private mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

.field private mNavigationbarHeight:I

.field private mOverScroll:Z

.field private mRealDisplaySize:Landroid/graphics/Point;

.field private mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

.field private mScroll:Z

.field private mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

.field private mStatusbarHeight:I

.field private mWindowFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 63
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 64
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 65
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 66
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 67
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 68
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 69
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 70
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    .line 71
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    .line 72
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-direct {v0}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    .line 73
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    .line 74
    iput-object v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 75
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 76
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 77
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 78
    iput v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveDistance:I

    .line 79
    iput-boolean v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 80
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 81
    iput-boolean v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFullScreenWindow:Z

    .line 82
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 83
    iput-boolean v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 91
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mContext:Landroid/content/Context;

    .line 92
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initDialog(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initFocusedWindow()V

    .line 95
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initSharedPrefs()V

    .line 96
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initConfigs()V

    .line 97
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initParams()V

    .line 98
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initStates()V

    .line 99
    return-void
.end method

.method private getBottom(I)I
    .locals 2
    .param p1, "total"    # I

    .prologue
    .line 526
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_0

    .line 527
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    .line 532
    :goto_0
    return v0

    .line 529
    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1

    .line 530
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    goto :goto_0

    .line 532
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_BOTTOM:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/longshot/state/LongshotMode;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 108
    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    return-object v0
.end method

.method private getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I
    .locals 3
    .param p1, "total"    # I
    .param p2, "height"    # Lcom/oneplus/screenshot/longshot/util/Configs;
    .param p3, "percent"    # Lcom/oneplus/screenshot/longshot/util/Configs;

    .prologue
    .line 510
    invoke-virtual {p2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v1

    .line 511
    .local v1, "value":I
    sub-int v0, p1, v1

    .line 512
    .local v0, "offset":I
    invoke-static {v1, p3}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method private getTop(I)I
    .locals 2
    .param p1, "total"    # I

    .prologue
    .line 516
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LOWER_LIST:Z

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_LOWER_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_LOWER_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    .line 522
    :goto_0
    return v0

    .line 519
    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_SMALL_LIST:Z

    if-eqz v0, :cond_1

    .line 520
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->HEIGHT_SMALL_LIST:Lcom/oneplus/screenshot/longshot/util/Configs;

    sget-object v1, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_SMALL_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getPos(ILcom/oneplus/screenshot/longshot/util/Configs;Lcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    goto :goto_0

    .line 522
    :cond_1
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->PERCENT_MOVE_TOP:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-static {p1, v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getPercent(ILcom/oneplus/screenshot/longshot/util/Configs;)I

    move-result v0

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 474
    :try_start_0
    const-string v2, "input_method"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    .line 476
    .local v1, "iimm":Lcom/android/internal/view/IInputMethodManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    .end local v1    # "iimm":Lcom/android/internal/view/IInputMethodManager;
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Longshot.LongshotMode"

    const-string v3, "hide ime failed, "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initConfigs()V
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->load(Landroid/content/Context;)V

    .line 467
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Features;->load(Landroid/content/Context;)V

    .line 468
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->load(Landroid/content/Context;)V

    .line 469
    return-void
.end method

.method private initDialog(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 387
    new-instance v7, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-direct {v7, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    .line 388
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 389
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 392
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 393
    .local v5, "wm":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 394
    .local v1, "display":Landroid/view/Display;
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 395
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 396
    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 399
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 400
    .local v2, "res":Landroid/content/res/Resources;
    const/high16 v7, 0x7f070000

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 401
    .local v3, "statusbarHeight":I
    sget-object v7, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 402
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v7, 0x61

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 403
    .local v4, "windowFullScreen":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 405
    if-eqz v4, :cond_0

    move v3, v6

    .end local v3    # "statusbarHeight":I
    :cond_0
    iput v3, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    .line 408
    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v6, p0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnDismissListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnDismissListener;)V

    .line 409
    return-void
.end method

.method private initFocusedWindow()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/oneplus/view/OneplusWindowManager;->getFocusedWindowFrame(Landroid/graphics/Rect;)V

    .line 421
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullScreenWindow(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFullScreenWindow:Z

    .line 423
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusedWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method

.method private initNavigationBar(Z)V
    .locals 5
    .param p1, "navBarVisible"    # Z

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 413
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 414
    .local v0, "navigationbarHeight":I
    if-eqz p1, :cond_0

    .end local v0    # "navigationbarHeight":I
    :goto_0
    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    .line 416
    const-string v2, "Longshot.LongshotMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NavigationbarHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void

    .line 414
    .restart local v0    # "navigationbarHeight":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initParams()V
    .locals 7

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 429
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    sub-int v3, v5, v6

    .line 430
    .local v3, "total":I
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    shr-int/lit8 v4, v5, 0x1

    .line 431
    .local v4, "x":I
    new-instance v2, Landroid/graphics/Point;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getTop(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v2, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 432
    .local v2, "top":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mStatusbarHeight:I

    invoke-direct {p0, v3}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getBottom(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 434
    .local v0, "bottom":Landroid/graphics/Point;
    new-instance v5, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->MOVE_DISTANCE:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {v6}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v6

    invoke-direct {v5, p0, v6, v0, v2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MoveNext;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;ILandroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object v5, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    .line 435
    return-void
.end method

.method private initSharedPrefs()V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Lcom/oneplus/screenshot/util/SharedPrefs;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/screenshot/util/SharedPrefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    .line 463
    return-void
.end method

.method private initStates()V
    .locals 3

    .prologue
    .line 438
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/IdleState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/IdleState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 439
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UnsupportedState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 440
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MainState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/MainState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 441
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/SaveState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/SaveState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 442
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotFirstState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 443
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 444
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 445
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 446
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOverState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 447
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 448
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 449
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/ShotOneState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/ShotOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 450
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MOVE_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/MoveNextState;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mMoveNext:Lcom/oneplus/screenshot/longshot/util/MovePoint;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/state/MoveNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 451
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGNEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 452
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_BGOVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchBgOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 453
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_NEXT:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchNextState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 454
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOverState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOverState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 455
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_LAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 456
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_SLAST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchSLastState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 457
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_ONE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/StitchOneState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/StitchOneState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 458
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNDO:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/UndoState;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/state/UndoState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->init(Lcom/oneplus/screenshot/longshot/state/BaseState;)V

    .line 459
    return-void
.end method

.method private isFullHeight(Landroid/graphics/Rect;I)Z
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "height"    # I

    .prologue
    .line 496
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    sub-int v1, p2, v1

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFullScreenWindow(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-direct {p0, p1, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullWidth(Landroid/graphics/Rect;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    .line 503
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRealDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, p1, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isFullHeight(Landroid/graphics/Rect;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFullWidth(Landroid/graphics/Rect;I)Z
    .locals 1
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "width"    # I

    .prologue
    .line 492
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnsupported()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFullScreenWindow:Z

    if-nez v0, :cond_0

    .line 486
    const/4 v0, 0x1

    .line 488
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_UNSUPPORTED:Z

    goto :goto_0
.end method

.method private onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 360
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 363
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/RunnableCache;->clear()V

    .line 364
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 365
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->clear()V

    .line 366
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCompareCache:Lcom/oneplus/screenshot/longshot/cache/CompareCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/CompareCache;->clear()V

    .line 367
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->clear()V

    .line 369
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    .line 371
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/task/BaseThread;->stop()V

    .line 375
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 379
    iput-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 382
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v3, v1, v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 383
    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    .line 384
    return-void
.end method

.method public static recycle()V
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "LongshotMode recycle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->sInstance:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    return v0
.end method

.method public getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    return-object v0
.end method

.method public getNavBarHeight()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mNavigationbarHeight:I

    return v0
.end method

.method public getRunnableCache()Lcom/oneplus/screenshot/longshot/cache/RunnableCache;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mRunnableCache:Lcom/oneplus/screenshot/longshot/cache/RunnableCache;

    return-object v0
.end method

.method public getSharedPrefs()Lcom/oneplus/screenshot/util/SharedPrefs;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mSharedPrefs:Lcom/oneplus/screenshot/util/SharedPrefs;

    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->hide()V

    .line 152
    return-void
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    return v0
.end method

.method public isHandleState()Z
    .locals 2

    .prologue
    .line 352
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 353
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsViewState;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    return v0
.end method

.method public isMoveState()Z
    .locals 2

    .prologue
    .line 347
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->get()Lcom/oneplus/screenshot/longshot/state/BaseState;

    move-result-object v0

    .line 348
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/BaseState;
    instance-of v1, v0, Lcom/oneplus/screenshot/longshot/state/AbsMoveState;

    return v1
.end method

.method public isOverScroll()Z
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->FORCE_OVER_SCROLL:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    .line 219
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    goto :goto_0
.end method

.method public isScroll()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    return v0
.end method

.method public notifyMove()V
    .locals 2

    .prologue
    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotCallback;->notifyMove()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->stop()V

    .line 125
    return-void
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->IDLE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 302
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 303
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onTouch()V
    .locals 2

    .prologue
    .line 307
    const-string v0, "Longshot.LongshotMode"

    const-string v1, "onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->FORCE_OVER_SCROLL:Z

    .line 309
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFirstCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->addBitmaps(Ljava/util/List;Ljava/util/List;)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mImageCache:Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mJoinCache:Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->pickBitmaps(Ljava/util/List;Ljava/util/List;)V

    .line 311
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 312
    return-void
.end method

.method public reject(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/screenshot/longshot/state/LongshotMode$1;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 343
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->onDestroy()V

    .line 344
    return-void
.end method

.method public setFirst(Z)V
    .locals 0
    .param p1, "isFirst"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsFirst:Z

    .line 212
    return-void
.end method

.method public setLast(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIsLast:Z

    .line 202
    return-void
.end method

.method public setOverScroll(Z)V
    .locals 1
    .param p1, "isOverScroll"    # Z

    .prologue
    .line 225
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->FORCE_OVER_SCROLL:Z

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mOverScroll:Z

    goto :goto_0
.end method

.method public setScroll(Z)V
    .locals 0
    .param p1, "isScroll"    # Z

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mScroll:Z

    .line 240
    return-void
.end method

.method public show(IILcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V
    .locals 2
    .param p1, "titleRes"    # I
    .param p2, "layoutRes"    # I
    .param p3, "listener"    # Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(I)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p2}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setContent(I)V

    .line 162
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0, p3}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setOnShowListener(Lcom/oneplus/screenshot/longshot/app/LongshotDialog$OnShowListener;)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->show()V

    .line 164
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public start(Ljava/lang/Runnable;Lcom/oneplus/longshot/ILongScreenshotCallback;ZZ)V
    .locals 3
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "callback"    # Lcom/oneplus/longshot/ILongScreenshotCallback;
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    .line 317
    const-string v1, "Longshot.LongshotMode"

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mFinisher:Ljava/lang/Runnable;

    .line 320
    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCallback:Lcom/oneplus/longshot/ILongScreenshotCallback;

    .line 321
    invoke-direct {p0, p4}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->initNavigationBar(Z)V

    .line 322
    new-instance v1, Lcom/oneplus/screenshot/longshot/task/GcThread;

    invoke-direct {v1}, Lcom/oneplus/screenshot/longshot/task/GcThread;-><init>()V

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/task/GcThread;->start()Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mGcThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 323
    new-instance v1, Lcom/oneplus/screenshot/longshot/task/CheckThread;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/task/CheckThread;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/task/CheckThread;->start()Lcom/oneplus/screenshot/longshot/task/BaseThread;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCheckThread:Lcom/oneplus/screenshot/longshot/task/BaseThread;

    .line 324
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->MAIN:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 325
    .local v0, "state":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->isUnsupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->UNSUPPORTED:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 328
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 329
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 142
    const-string v0, "Longshot.LongshotMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mDialog:Lcom/oneplus/screenshot/longshot/app/LongshotDialog;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/LongshotDialog;->dismiss()V

    .line 147
    :cond_0
    return-void
.end method

.method public updateIndex(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 191
    iget v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mIndex:I

    .line 192
    return-void
.end method

.method public updateState(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V
    .locals 6
    .param p1, "newState"    # Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .param p2, "listener"    # Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;

    .prologue
    const/4 v5, 0x1

    .line 168
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-eq v2, p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 170
    .local v0, "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    const-string v2, "Longshot.LongshotMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateState, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SAVE:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v2, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c0012

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    .line 183
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v2, p1}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->exit(Lcom/oneplus/screenshot/longshot/state/LongshotState;)V

    .line 184
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    .line 185
    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->mCurrentState:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    invoke-virtual {v2, v0, p2}, Lcom/oneplus/screenshot/longshot/state/LongshotState;->enter(Lcom/oneplus/screenshot/longshot/state/LongshotState;Lcom/oneplus/screenshot/longshot/state/LongshotAction$OnStateListener;)V

    .line 187
    .end local v0    # "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    :cond_1
    return-void

    .line 174
    .restart local v0    # "oldState":Lcom/oneplus/screenshot/longshot/state/LongshotState;
    :cond_2
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne v0, v2, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->showNotifyWindow(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/oneplus/screenshot/longshot/state/LongshotState;->SHOT_FIRST:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    if-ne p1, v2, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->hideSoftInput()V

    goto :goto_0
.end method
