.class public Lcom/oneplus/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;,
        Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;,
        Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ALPHA:F = 0.5f

.field static final CANCEL_ID:Ljava/lang/String; = "android:cancel_id"

.field private static final OP_GALLERY_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final SCREENSHOT_DROP_IN_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_IN_MIN_SCALE:F = 0.725f

.field private static final SCREENSHOT_DROP_OUT_DELAY:I = 0xbb8

.field private static final SCREENSHOT_DROP_OUT_DURATION:I = 0x1ae

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE:F = 0.45f

.field private static final SCREENSHOT_DROP_OUT_MIN_SCALE_OFFSET:F = 0.0f

.field private static final SCREENSHOT_DROP_OUT_SCALE_DURATION:I = 0x172

.field private static final SCREENSHOT_FAST_DROP_OUT_DURATION:I = 0x140

.field private static final SCREENSHOT_FAST_DROP_OUT_MIN_SCALE:F = 0.6f

.field private static final SCREENSHOT_FLASH_TO_PEAK_DURATION:I = 0x82

.field private static final SCREENSHOT_SCALE:F = 1.0f

.field static final SCREENSHOT_URI_ID:Ljava/lang/String; = "android:screenshot_uri_id"

.field private static final TAG:Ljava/lang/String; = "Longshot.GlobalScreenshot"


# instance fields
.field private mAnimScale:F

.field private mBackgroundView:Landroid/widget/ImageView;

.field private mBgPadding:F

.field private mBgPaddingScale:F

.field private mCameraSound:Landroid/media/MediaActionSound;

.field private mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditIcon:Landroid/widget/ImageView;

.field final mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

.field private mFinisher:Ljava/lang/Runnable;

.field private mFooter:Landroid/widget/LinearLayout;

.field private mIsBusy:Z

.field private mIsLongShotStarted:Z

.field private mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

.field private mLongshotIcon:Landroid/widget/ImageView;

.field private mNavBarVisible:Z

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mPreviewHeight:I

.field private final mPreviewWidth:I

.field private mSaveInBgTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/oneplus/screenshot/SaveImageInBackgroundData;",
            "Ljava/lang/Void;",
            "Lcom/oneplus/screenshot/SaveImageInBackgroundData;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenshotAnimation:Landroid/animation/AnimatorSet;

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

.field private mScreenshotView:Landroid/widget/ImageView;

.field private mShareIcon:Landroid/widget/ImageButton;

.field private mStatusBarVisible:Z

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 495
    iput-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsLongShotStarted:Z

    .line 504
    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    .line 850
    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$6;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$6;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 512
    .local v10, "r":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    .line 513
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 517
    .local v8, "layoutInflater":Landroid/view/LayoutInflater;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 520
    const/high16 v0, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    .line 522
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b0005

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    .line 523
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b0006

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 524
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b0007

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 525
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b0008

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    .line 526
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b0009

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    .line 527
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b000a

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    .line 530
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    .line 533
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 535
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const v2, 0x7f0b000c

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    .line 536
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setFocusable(Z)V

    .line 539
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$1;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$1;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 547
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v2, Lcom/oneplus/screenshot/GlobalScreenshot$2;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$2;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 565
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7de

    const v6, 0x1080500

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 573
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ScreenshotAnimation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 574
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 576
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    .line 578
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 579
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 580
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 583
    const v0, 0x1050006

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 587
    iput v11, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    .line 588
    iput v11, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    .line 591
    const/4 v9, 0x0

    .line 593
    .local v9, "panelWidth":I
    const v0, 0x7f07006d

    :try_start_0
    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 596
    :goto_0
    if-gtz v9, :cond_0

    .line 598
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 600
    :cond_0
    iput v9, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    .line 601
    const v0, 0x7f07006e

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    .line 604
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    .line 605
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 607
    return-void

    .line 594
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/GlobalScreenshot;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/screenshot/GlobalScreenshot;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;
    .param p1, "x1"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCameraSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/screenshot/GlobalScreenshot;)F
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPaddingScale:F

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotFlash:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFooter:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/screenshot/GlobalScreenshot;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
    .locals 8

    .prologue
    .line 906
    const v3, 0x3e9aca6b

    .line 908
    .local v3, "flashPeakDurationPct":F
    const v2, 0x3f1aca6b

    .line 909
    .local v2, "flashDurationPct":F
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$7;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$7;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 919
    .local v1, "flashAlphaInterpolator":Landroid/view/animation/Interpolator;
    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot$8;

    invoke-direct {v4, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$8;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 929
    .local v4, "scaleInterpolator":Landroid/view/animation/Interpolator;
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 930
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x1ae

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 931
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$9;

    invoke-direct {v5, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$9;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 951
    new-instance v5, Lcom/oneplus/screenshot/GlobalScreenshot$10;

    invoke-direct {v5, p0, v4, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$10;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 965
    return-object v0

    .line 929
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "statusBarVisible"    # Z
    .param p4, "navBarVisible"    # Z

    .prologue
    .line 969
    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 970
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v8, 0xbb8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 971
    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$11;

    invoke-direct {v7, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$11;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 980
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 982
    :cond_0
    const-wide/16 v8, 0x140

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 983
    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$12;

    invoke-direct {v7, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$12;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1036
    :goto_0
    return-object v0

    .line 997
    :cond_1
    const v5, 0x3f5c4771

    .line 999
    .local v5, "scaleDurationPct":F
    new-instance v6, Lcom/oneplus/screenshot/GlobalScreenshot$13;

    invoke-direct {v6, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$13;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    .line 1011
    .local v6, "scaleInterpolator":Landroid/view/animation/Interpolator;
    int-to-float v7, p1

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v3, v7, v8

    .line 1012
    .local v3, "halfScreenWidth":F
    int-to-float v7, p2

    const/high16 v8, 0x40000000    # 2.0f

    iget v9, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBgPadding:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 1013
    .local v2, "halfScreenHeight":F
    const/4 v4, 0x0

    .line 1014
    .local v4, "offsetPct":F
    new-instance v1, Landroid/graphics/PointF;

    neg-float v7, v3

    const v8, 0x3ee66666    # 0.45f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    neg-float v8, v2

    const v9, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    invoke-direct {v1, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1019
    .local v1, "finalPos":Landroid/graphics/PointF;
    const-wide/16 v8, 0x1ae

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1020
    new-instance v7, Lcom/oneplus/screenshot/GlobalScreenshot$14;

    invoke-direct {v7, p0, v6, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$14;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 969
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private delete()V
    .locals 2

    .prologue
    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private edit(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1142
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.gallery"

    const-string v2, "com.oneplus.gallery.PhotoEditorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1144
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getImageUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1146
    return-void
.end method

.method private endScreenshotAnim()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 858
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 861
    :cond_0
    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "endScreenshotAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 865
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 871
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 874
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 877
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->unregisterKeyEventCallBack()V

    .line 883
    :cond_1
    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 884
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 892
    :cond_3
    iput-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 893
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 894
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mShareIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 895
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mLongshotIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 896
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 897
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEditIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 899
    iput-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 901
    iput v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 663
    packed-switch p1, :pswitch_data_0

    .line 671
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 665
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_0

    .line 667
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_0

    .line 669
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_0

    .line 663
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nManager"    # Landroid/app/NotificationManager;

    .prologue
    const v7, 0x7f0c0018

    const v5, 0x7f0c0017

    const/4 v6, 0x1

    .line 1040
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1043
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f02002f

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "err"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1060059

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1054
    .local v0, "b":Landroid/app/Notification$Builder;
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1058
    .local v1, "n":Landroid/app/Notification;
    const/high16 v3, 0x7f0b0000

    invoke-virtual {p1, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1059
    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "finisher"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x0

    .line 632
    new-instance v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-direct {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 633
    .local v0, "data":Lcom/oneplus/screenshot/SaveImageInBackgroundData;
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 634
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 635
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 636
    iput-object p1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 637
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewWidth:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 638
    iget v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mPreviewHeight:I

    iput v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 639
    new-instance v1, Lcom/oneplus/screenshot/GlobalScreenshot$3;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$3;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    iput-object v1, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    .line 652
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    invoke-virtual {v1, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 655
    :cond_0
    new-instance v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const/high16 v4, 0x7f0b0000

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    .line 657
    return-void
.end method

.method private shareVia(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mSaveInBgTask:Landroid/os/AsyncTask;

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getViewIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1130
    return-void
.end method

.method private startAnimation(Ljava/lang/Runnable;IIZZ)V
    .locals 6
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "statusBarVisible"    # Z
    .param p5, "navBarVisible"    # Z

    .prologue
    .line 749
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 750
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->requestFocus()Z

    .line 753
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 754
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->end()V

    .line 755
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 758
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;)V

    .line 760
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v4, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    if-eqz v2, :cond_1

    .line 763
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mKeyCallBack:Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->registerKeyEventCallBack(Lcom/oneplus/screenshot/GlobalScreenshot$KeyEventCallBack;)V

    .line 767
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 768
    .local v0, "screenshotDropInAnim":Landroid/animation/ValueAnimator;
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/oneplus/screenshot/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 770
    .local v1, "screenshotFadeOutAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    .line 773
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v2

    iput v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    .line 775
    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 776
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 778
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 779
    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mFinisher:Ljava/lang/Runnable;

    .line 780
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    iget-object v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mEndScreenshotAnimTimeout:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 826
    :goto_0
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotLayout:Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;

    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$5;

    invoke-direct {v3, p0}, Lcom/oneplus/screenshot/GlobalScreenshot$5;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/app/GlobalScreenShotFrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 847
    return-void

    .line 784
    :cond_2
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 785
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/oneplus/screenshot/GlobalScreenshot$4;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/screenshot/GlobalScreenshot$4;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private takeLongshot()V
    .locals 5

    .prologue
    .line 1149
    const/4 v1, 0x0

    .line 1150
    .local v1, "top":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1151
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/util/Configs;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1153
    :cond_0
    const-string v2, "Longshot.GlobalScreenshot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeLongshot, top:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v3, "longscreenshot"

    const-string v4, "takelongshot"

    invoke-static {v2, v3, v4, v1}, Lcom/oneplus/screenshot/longshot/util/Configs;->sendAppTrackerEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v3, "longshot"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/LongScreenshotManager;

    .line 1157
    .local v0, "sm":Lcom/oneplus/longshot/LongScreenshotManager;
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    iget-boolean v3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/longshot/LongScreenshotManager;->takeLongshot(ZZ)V

    .line 1158
    :cond_1
    return-void
.end method


# virtual methods
.method isBusy()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1120
    :goto_0
    iget v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mAnimScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1121
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->endScreenshotAnim()V

    .line 1126
    :cond_0
    :goto_1
    return-void

    .line 1105
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->shareVia(Landroid/content/Context;)V

    goto :goto_0

    .line 1108
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->edit(Landroid/content/Context;)V

    goto :goto_0

    .line 1111
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->delete()V

    .line 1112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->IS_LONGSHOT_RUNNING:Z

    .line 1113
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeLongshot()V

    goto :goto_0

    .line 1116
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/screenshot/GlobalScreenshot;->delete()V

    goto :goto_0

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0009
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZ)V
    .locals 12
    .param p1, "finisher"    # Ljava/lang/Runnable;
    .param p2, "statusBarVisible"    # Z
    .param p3, "navBarVisible"    # Z

    .prologue
    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mIsBusy:Z

    .line 684
    iput-boolean p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNavBarVisible:Z

    .line 685
    iput-boolean p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mStatusBarVisible:Z

    .line 689
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 690
    const/4 v0, 0x2

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    aput v1, v8, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    aput v1, v8, v0

    .line 691
    .local v8, "dims":[F
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v7

    .line 692
    .local v7, "degrees":F
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_1

    const/4 v10, 0x1

    .line 693
    .local v10, "requiresRotation":Z
    :goto_0
    if-eqz v10, :cond_0

    .line 695
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 696
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 697
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 698
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v8, v0

    .line 699
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v8, v0

    .line 703
    :cond_0
    const/4 v0, 0x0

    aget v0, v8, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aget v1, v8, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 704
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 705
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 706
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 740
    :goto_1
    return-void

    .line 692
    .end local v10    # "requiresRotation":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 711
    .restart local v10    # "requiresRotation":Z
    :cond_2
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 712
    .local v9, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    new-instance v0, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;-><init>(Lcom/oneplus/screenshot/GlobalScreenshot;Lcom/oneplus/screenshot/GlobalScreenshot$1;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    .line 715
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mCloseReceiver:Lcom/oneplus/screenshot/GlobalScreenshot$closeReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 718
    if-eqz v10, :cond_3

    .line 720
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 722
    .local v11, "ss":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 723
    .local v6, "c":Landroid/graphics/Canvas;
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 724
    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 725
    const/4 v0, 0x0

    aget v0, v8, v0

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x1

    aget v1, v8, v1

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 726
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 727
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 729
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    iput-object v11, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 734
    .end local v6    # "c":Landroid/graphics/Canvas;
    .end local v11    # "ss":Landroid/graphics/Bitmap;
    :cond_3
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 735
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 738
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V

    goto/16 :goto_1
.end method
