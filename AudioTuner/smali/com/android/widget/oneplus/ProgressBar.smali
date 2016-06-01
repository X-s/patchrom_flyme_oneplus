.class public Lcom/android/widget/oneplus/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/widget/oneplus/ProgressBar$1;,
        Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;,
        Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;,
        Lcom/android/widget/oneplus/ProgressBar$SavedState;,
        Lcom/android/widget/oneplus/ProgressBar$RefreshData;,
        Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAnimationPosition:F

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/widget/oneplus/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/widget/oneplus/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 276
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/android/widget/oneplus/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/widget/oneplus/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v10, 0x16

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 285
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 259
    iput-boolean v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mMirrorForRtl:Z

    .line 261
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    .line 287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mUiThreadId:J

    .line 288
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->initProgressBar()V

    .line 290
    sget-object v6, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v5, p0, Lcom/android/widget/oneplus/ProgressBar;->mNoInvalidate:Z

    .line 295
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 297
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/widget/oneplus/ProgressBar;->setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_0
    const/16 v6, 0x9

    iget v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mDuration:I

    .line 307
    const/16 v6, 0xb

    iget v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinWidth:I

    .line 309
    iget v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxWidth:I

    .line 311
    const/16 v6, 0xc

    iget v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinHeight:I

    .line 313
    iget v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxHeight:I

    .line 316
    const/16 v6, 0xa

    iget v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mBehavior:I

    .line 319
    const/16 v6, 0xd

    const v7, 0x10a000b

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 323
    .local v3, "resID":I
    if-lez v3, :cond_1

    .line 324
    invoke-virtual {p0, p1, v3}, Lcom/android/widget/oneplus/ProgressBar;->setInterpolator(Landroid/content/Context;I)V

    .line 327
    :cond_1
    const/4 v6, 0x2

    iget v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/widget/oneplus/ProgressBar;->setMax(I)V

    .line 329
    const/4 v6, 0x3

    iget v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/widget/oneplus/ProgressBar;->setProgress(I)V

    .line 331
    const/4 v6, 0x4

    iget v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/widget/oneplus/ProgressBar;->setSecondaryProgress(I)V

    .line 334
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 336
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 337
    invoke-virtual {p0, v1}, Lcom/android/widget/oneplus/ProgressBar;->setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_2
    const/4 v6, 0x6

    iget-boolean v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mOnlyIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mOnlyIndeterminate:Z

    .line 343
    iput-boolean v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mNoInvalidate:Z

    .line 345
    iget-boolean v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mOnlyIndeterminate:Z

    if-nez v6, :cond_3

    const/4 v6, 0x5

    iget-boolean v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/widget/oneplus/ProgressBar;->setIndeterminate(Z)V

    .line 349
    const/16 v4, 0xf

    iget-boolean v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mMirrorForRtl:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mMirrorForRtl:Z

    .line 352
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 353
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_5

    .line 354
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 356
    :cond_5
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x13

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 359
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 362
    :cond_6
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 363
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_7

    .line 364
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 366
    :cond_7
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 368
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 371
    :cond_8
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 372
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_9

    .line 373
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 375
    :cond_9
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x11

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 378
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 381
    :cond_a
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 382
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_b

    .line 383
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 385
    :cond_b
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 387
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 390
    :cond_c
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 391
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_d

    .line 392
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 394
    :cond_d
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x15

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 398
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 401
    :cond_e
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 402
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_f

    .line 403
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 405
    :cond_f
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 407
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 410
    :cond_10
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 411
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_11

    .line 412
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 414
    :cond_11
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x17

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 418
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 421
    :cond_12
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 422
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_13

    .line 423
    new-instance v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 425
    :cond_13
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 427
    iget-object v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 430
    :cond_14
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 432
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyProgressTints()V

    .line 433
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyIndeterminateTint()V

    .line 436
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_15

    .line 437
    invoke-virtual {p0, v5}, Lcom/android/widget/oneplus/ProgressBar;->setImportantForAccessibility(I)V

    .line 439
    :cond_15
    return-void
.end method

.method static synthetic access$100(Lcom/android/widget/oneplus/ProgressBar;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/widget/oneplus/ProgressBar;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/widget/oneplus/ProgressBar;IFZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/widget/oneplus/ProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 220
    invoke-direct/range {p0 .. p5}, Lcom/android/widget/oneplus/ProgressBar;->doRefreshProgress(IFZZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/widget/oneplus/ProgressBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/widget/oneplus/ProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshIsPosted:Z

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 720
    .local v0, "tintInfo":Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 724
    iget-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 729
    :cond_1
    iget-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    .line 730
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 735
    .end local v0    # "tintInfo":Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;
    :cond_2
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 3

    .prologue
    .line 835
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 837
    :cond_0
    const v1, 0x102000d

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 838
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 839
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    .line 840
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 843
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 847
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 856
    :cond_0
    const/high16 v1, 0x1020000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 857
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 858
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 861
    :cond_1
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    .line 862
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 866
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    .line 824
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyPrimaryProgressTint()V

    .line 825
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyProgressBackgroundTint()V

    .line 826
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applySecondaryProgressTint()V

    .line 828
    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 3

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 875
    :cond_0
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 876
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 877
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    .line 878
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 880
    :cond_1
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    .line 881
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 885
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IFZZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # F
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    .line 1303
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/widget/oneplus/ProgressBar;->doRefreshProgress(IFZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1304
    monitor-exit p0

    return-void

    .line 1303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized doRefreshProgress(IFZZZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "progress"    # F
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z
    .param p5, "animate"    # Z

    .prologue
    .line 1308
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/widget/oneplus/ProgressBar;->getScale(F)F

    move-result v4

    .line 1310
    .local v4, "scale":F
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1311
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 1312
    const/4 v3, 0x0

    .line 1314
    .local v3, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_0

    .line 1315
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1317
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->canResolveLayoutDirection()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1318
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getLayoutDirection()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 1322
    :cond_0
    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 1323
    .local v2, "level":I
    if-eqz v3, :cond_2

    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1328
    .end local v2    # "level":I
    :goto_1
    const v5, 0x102000d

    if-ne p1, v5, :cond_1

    .line 1329
    if-eqz p5, :cond_4

    .line 1330
    invoke-virtual {p0, v4, p3}, Lcom/android/widget/oneplus/ProgressBar;->onAnimatePosition(FZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .restart local v2    # "level":I
    .restart local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object v3, v1

    .line 1323
    goto :goto_0

    .line 1325
    .end local v2    # "level":I
    .end local v3    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1308
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "scale":F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1331
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "scale":F
    :cond_4
    if-eqz p4, :cond_1

    .line 1332
    :try_start_2
    invoke-virtual {p0, v4, p3}, Lcom/android/widget/oneplus/ProgressBar;->onProgressRefresh(FZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private getScale(F)F
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 1298
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    int-to-float v0, v0

    div-float v0, p1, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .prologue
    .line 1150
    const/4 v1, 0x0

    .line 1152
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1153
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1156
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1157
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1160
    :cond_0
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 1161
    move-object v1, v0

    .line 1165
    :cond_1
    return-object v1
.end method

.method private initProgressBar()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 542
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    .line 543
    iput v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    .line 544
    iput v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    .line 545
    iput-boolean v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    .line 546
    iput-boolean v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mOnlyIndeterminate:Z

    .line 547
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mDuration:I

    .line 548
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mBehavior:I

    .line 549
    iput v2, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinWidth:I

    .line 550
    iput v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxWidth:I

    .line 551
    iput v2, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinHeight:I

    .line 552
    iput v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxHeight:I

    .line 553
    return-void
.end method

.method private declared-synchronized refreshProgress(IFZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "progress"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 1377
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/widget/oneplus/ProgressBar;->refreshProgress(IFZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1378
    monitor-exit p0

    return-void

    .line 1377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized refreshProgress(IFZZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "progress"    # F
    .param p3, "fromUser"    # Z
    .param p4, "animate"    # Z

    .prologue
    .line 1382
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1383
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/widget/oneplus/ProgressBar;->doRefreshProgress(IFZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1385
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_2

    .line 1386
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;-><init>(Lcom/android/widget/oneplus/ProgressBar;Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    .line 1389
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->obtain(IFZZ)Lcom/android/widget/oneplus/ProgressBar$RefreshData;

    move-result-object v6

    .line 1391
    .local v6, "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAttached:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshIsPosted:Z

    if-nez v0, :cond_0

    .line 1393
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 1394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshIsPosted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1382
    .end local v6    # "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAccessibilityEventSender:Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1997
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;-><init>(Lcom/android/widget/oneplus/ProgressBar;Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAccessibilityEventSender:Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

    .line 2001
    :goto_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAccessibilityEventSender:Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/widget/oneplus/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2002
    return-void

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAccessibilityEventSender:Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setDrawableTint(ILandroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;
    .param p4, "fallback"    # Z

    .prologue
    .line 1280
    const/4 v1, 0x0

    .line 1283
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1284
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1285
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1288
    :cond_0
    if-eqz p4, :cond_1

    if-nez v1, :cond_1

    .line 1289
    move-object v1, v0

    .line 1292
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1293
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 1294
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1295
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 19
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 447
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v4, p1

    .line 448
    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    .line 449
    .local v4, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    .line 450
    .local v3, "N":I
    new-array v13, v3, [Landroid/graphics/drawable/Drawable;

    .line 452
    .local v13, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 453
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v8

    .line 454
    .local v8, "id":I
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const v16, 0x102000d

    move/from16 v0, v16

    if-eq v8, v0, :cond_0

    const v16, 0x102000f

    move/from16 v0, v16

    if-ne v8, v0, :cond_1

    :cond_0
    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    aput-object v16, v13, v7

    .line 452
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 454
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 458
    .end local v8    # "id":I
    :cond_2
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v10, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 460
    .local v10, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v3, :cond_5

    .line 461
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v10, v7, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 460
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 466
    .end local v3    # "N":I
    .end local v4    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v7    # "i":I
    .end local v10    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v13    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v9, p1

    .line 467
    check-cast v9, Landroid/graphics/drawable/StateListDrawable;

    .line 468
    .local v9, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 469
    .local v12, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v11

    .line 470
    .local v11, "numStates":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v11, :cond_4

    .line 471
    invoke-virtual {v9, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v16

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 470
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object v10, v12

    .line 498
    .end local v7    # "i":I
    .end local v9    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v11    # "numStates":I
    .end local v12    # "out":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    :goto_4
    return-object v10

    .line 476
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v5, p1

    .line 477
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 478
    .local v5, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 479
    .local v15, "tileBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 480
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/widget/oneplus/ProgressBar;->mSampleTile:Landroid/graphics/Bitmap;

    .line 483
    :cond_7
    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/widget/oneplus/ProgressBar;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 485
    .local v14, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v6, Landroid/graphics/BitmapShader;

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v15, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 487
    .local v6, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 490
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getTint()Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 491
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/ShapeDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 492
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/ShapeDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 494
    if-eqz p2, :cond_8

    new-instance v16, Landroid/graphics/drawable/ClipDrawable;

    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v14, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object/from16 v14, v16

    .end local v14    # "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    :cond_8
    move-object v10, v14

    goto :goto_4

    .end local v5    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "bitmapShader":Landroid/graphics/BitmapShader;
    .end local v15    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_9
    move-object/from16 v10, p1

    .line 498
    goto :goto_4
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 512
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 513
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 514
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 515
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 516
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 518
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 519
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/widget/oneplus/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 520
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 521
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 524
    move-object p1, v4

    .line 526
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 15
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1724
    iget v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingRight:I

    iget v13, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    .line 1725
    iget v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingTop:I

    iget v13, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    .line 1727
    move/from16 v8, p1

    .line 1728
    .local v8, "right":I
    move/from16 v1, p2

    .line 1729
    .local v1, "bottom":I
    const/4 v10, 0x0

    .line 1730
    .local v10, "top":I
    const/4 v7, 0x0

    .line 1732
    .local v7, "left":I
    iget-object v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 1734
    iget-boolean v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v12, :cond_0

    .line 1738
    iget-object v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1740
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1742
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .line 1744
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 1745
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_0

    .line 1746
    cmpl-float v12, v2, v4

    if-lez v12, :cond_4

    .line 1748
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .line 1749
    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    .line 1750
    add-int v8, v7, v11

    .line 1759
    .end local v2    # "boundAspect":F
    .end local v4    # "intrinsicAspect":F
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicWidth":I
    .end local v11    # "width":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-boolean v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mMirrorForRtl:Z

    if-eqz v12, :cond_1

    .line 1760
    move v9, v7

    .line 1761
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    .line 1762
    sub-int v8, p1, v9

    .line 1764
    .end local v9    # "tempLeft":I
    :cond_1
    iget-object v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1767
    :cond_2
    iget-object v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 1768
    iget-object v12, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1770
    :cond_3
    return-void

    .line 1753
    .restart local v2    # "boundAspect":F
    .restart local v4    # "intrinsicAspect":F
    .restart local v5    # "intrinsicHeight":I
    .restart local v6    # "intrinsicWidth":I
    :cond_4
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 1754
    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    .line 1755
    add-int v1, v10, v3

    goto :goto_0
.end method

.method private updateDrawableState()V
    .locals 2

    .prologue
    .line 1848
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getDrawableState()[I

    move-result-object v0

    .line 1850
    .local v0, "state":[I
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1854
    :cond_0
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1856
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1858
    :cond_1
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1783
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1784
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 1788
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1790
    .local v1, "saveCount":I
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mMirrorForRtl:Z

    if-eqz v3, :cond_2

    .line 1791
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingRight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1792
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1797
    :goto_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getDrawingTime()J

    move-result-wide v4

    .line 1798
    .local v4, "time":J
    iget-boolean v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mHasAnimation:Z

    if-eqz v3, :cond_0

    .line 1799
    iget-object v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1800
    iget-object v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 1802
    .local v2, "scale":F
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mInDrawing:Z

    .line 1803
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1805
    iput-boolean v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mInDrawing:Z

    .line 1807
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->postInvalidateOnAnimation()V

    .line 1810
    .end local v2    # "scale":F
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1811
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1813
    iget-boolean v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    .line 1814
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1815
    iput-boolean v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1818
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_1
    return-void

    .line 1794
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_2
    iget v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingLeft:I

    int-to-float v3, v3

    iget v6, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 1805
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_0
    move-exception v3

    iput-boolean v7, p0, Lcom/android/widget/oneplus/ProgressBar;->mInDrawing:Z

    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1862
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1864
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1869
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1871
    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 1843
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1844
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->updateDrawableState()V

    .line 1845
    return-void
.end method

.method getAnimationPosition()F
    .locals 1

    .prologue
    .line 1366
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimationPosition:F

    return v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 502
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 503
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 502
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1522
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1487
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1506
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1564
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1565
    monitor-exit p0

    return-void

    .line 1564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 1578
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    monitor-exit p0

    return-void

    .line 1578
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1702
    iget-boolean v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mInDrawing:Z

    if-nez v3, :cond_0

    .line 1703
    invoke-virtual {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1704
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1705
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mScrollX:I

    iget v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingLeft:I

    add-int v1, v3, v4

    .line 1706
    .local v1, "scrollX":I
    iget v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mScrollY:I

    iget v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingTop:I

    add-int v2, v3, v4

    .line 1708
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/widget/oneplus/ProgressBar;->invalidate(IIII)V

    .line 1714
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_0
    :goto_0
    return-void

    .line 1711
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1203
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1204
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1208
    :cond_1
    return-void
.end method

.method onAnimatePosition(FZ)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 1346
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    .line 1934
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1935
    iget-boolean v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-eqz v3, :cond_0

    .line 1936
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->startAnimation()V

    .line 1938
    :cond_0
    iget-object v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1939
    monitor-enter p0

    .line 1940
    :try_start_0
    iget-object v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1941
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1942
    iget-object v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/widget/oneplus/ProgressBar$RefreshData;

    .line 1943
    .local v2, "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    iget v3, v2, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->id:I

    iget v4, v2, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->progress:F

    iget-boolean v5, v2, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->fromUser:Z

    iget-boolean v6, v2, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->animate:Z

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/widget/oneplus/ProgressBar;->doRefreshProgress(IFZZ)V

    .line 1945
    invoke-virtual {v2}, Lcom/android/widget/oneplus/ProgressBar$RefreshData;->recycle()V

    .line 1941
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1947
    .end local v2    # "rd":Lcom/android/widget/oneplus/ProgressBar$RefreshData;
    :cond_1
    iget-object v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1948
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mAttached:Z

    .line 1951
    return-void

    .line 1948
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1955
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_0

    .line 1956
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->stopAnimation()V

    .line 1958
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_1

    .line 1959
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshIsPosted:Z

    if-eqz v0, :cond_2

    .line 1962
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mRefreshProgressRunnable:Lcom/android/widget/oneplus/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1964
    :cond_2
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAccessibilityEventSender:Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_3

    .line 1965
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAccessibilityEventSender:Lcom/android/widget/oneplus/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1971
    :cond_3
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1972
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAttached:Z

    .line 1973
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1774
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1776
    invoke-virtual {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1777
    monitor-exit p0

    return-void

    .line 1774
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1977
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1978
    const-class v0, Lcom/android/widget/oneplus/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1979
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1980
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1981
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1985
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1986
    const-class v0, Lcom/android/widget/oneplus/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1987
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1823
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1825
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 1826
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1827
    .local v1, "dh":I
    if-eqz v0, :cond_0

    .line 1828
    iget v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1830
    iget v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1833
    :cond_0
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->updateDrawableState()V

    .line 1834
    iget v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingLeft:I

    iget v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1835
    iget v3, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingTop:I

    iget v4, p0, Lcom/android/widget/oneplus/ProgressBar;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 1837
    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/widget/oneplus/ProgressBar;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, p2, v4}, Lcom/android/widget/oneplus/ProgressBar;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/widget/oneplus/ProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1839
    monitor-exit p0

    return-void

    .line 1823
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onProgressRefresh(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->scheduleAccessibilityEventSender()V

    .line 1373
    :cond_0
    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1216
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 1219
    :cond_0
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 1222
    :cond_1
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1223
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 1225
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1925
    move-object v0, p1

    check-cast v0, Lcom/android/widget/oneplus/ProgressBar$SavedState;

    .line 1926
    .local v0, "ss":Lcom/android/widget/oneplus/ProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/android/widget/oneplus/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1928
    iget v1, v0, Lcom/android/widget/oneplus/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/android/widget/oneplus/ProgressBar;->setProgress(I)V

    .line 1929
    iget v1, v0, Lcom/android/widget/oneplus/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, Lcom/android/widget/oneplus/ProgressBar;->setSecondaryProgress(I)V

    .line 1930
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1914
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1915
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1917
    .local v0, "ss":Lcom/android/widget/oneplus/ProgressBar$SavedState;
    iget v2, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    iput v2, v0, Lcom/android/widget/oneplus/ProgressBar$SavedState;->progress:I

    .line 1918
    iget v2, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    iput v2, v0, Lcom/android/widget/oneplus/ProgressBar$SavedState;->secondaryProgress:I

    .line 1920
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1718
    invoke-direct {p0, p1, p2}, Lcom/android/widget/oneplus/ProgressBar;->updateDrawableBounds(II)V

    .line 1719
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1688
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1690
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1692
    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 1693
    :cond_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->stopAnimation()V

    .line 1698
    :cond_1
    :goto_0
    return-void

    .line 1695
    :cond_2
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mNoInvalidate:Z

    if-nez v0, :cond_0

    .line 1230
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1232
    :cond_0
    return-void
.end method

.method setAnimationPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    const/4 v1, 0x1

    .line 1361
    iput p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimationPosition:F

    .line 1362
    const v0, 0x102000d

    invoke-direct {p0, v0, p1, v1, v1}, Lcom/android/widget/oneplus/ProgressBar;->refreshProgress(IFZZ)V

    .line 1363
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-eq p1, v0, :cond_1

    .line 584
    iput-boolean p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    .line 586
    if-eqz p1, :cond_2

    .line 588
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 589
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->startAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 591
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 592
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->stopAnimation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 621
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 623
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    :cond_0
    iput-object p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 628
    if-eqz p1, :cond_2

    .line 629
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 630
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 631
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 634
    :cond_1
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyIndeterminateTint()V

    .line 637
    :cond_2
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_3

    .line 638
    iput-object p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 639
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->postInvalidate()V

    .line 642
    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 750
    if-eqz p1, :cond_0

    .line 751
    invoke-direct {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 754
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 755
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 664
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 666
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyIndeterminateTint()V

    .line 667
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 697
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 699
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyIndeterminateTint()V

    .line 700
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 1646
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1647
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1658
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1539
    monitor-enter p0

    if-gez p1, :cond_0

    .line 1540
    const/4 p1, 0x0

    .line 1542
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 1543
    iput p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    .line 1544
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->postInvalidate()V

    .line 1546
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 1547
    iput p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    .line 1549
    :cond_1
    const v0, 0x102000d

    iget v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->refreshProgress(IFZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    :cond_2
    monitor-exit p0

    return-void

    .line 1539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1415
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/widget/oneplus/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    monitor-exit p0

    return-void

    .line 1415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1424
    :cond_1
    if-gez p1, :cond_2

    .line 1425
    const/4 p1, 0x0

    .line 1428
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 1429
    iget p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    .line 1432
    :cond_3
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    if-eq p1, v0, :cond_0

    .line 1433
    iput p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    .line 1434
    const v0, 0x102000d

    iget v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/widget/oneplus/ProgressBar;->refreshProgress(IFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 992
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 993
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 996
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 998
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 999
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyProgressBackgroundTint()V

    .line 1001
    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1030
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1033
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1035
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1036
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyProgressBackgroundTint()V

    .line 1038
    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 780
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_5

    .line 781
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 783
    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/widget/oneplus/ProgressBar;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    :cond_0
    iput-object p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 788
    if-eqz p1, :cond_3

    .line 789
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 790
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 791
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 796
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 797
    .local v0, "drawableHeight":I
    iget v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxHeight:I

    if-ge v1, v0, :cond_2

    .line 798
    iput v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMaxHeight:I

    .line 799
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->requestLayout()V

    .line 802
    :cond_2
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyProgressTints()V

    .line 805
    .end local v0    # "drawableHeight":I
    :cond_3
    iget-boolean v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-nez v1, :cond_4

    .line 806
    iput-object p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 807
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->postInvalidate()V

    .line 810
    :cond_4
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->updateDrawableBounds(II)V

    .line 811
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->updateDrawableState()V

    .line 813
    const v1, 0x102000d

    iget v2, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/widget/oneplus/ProgressBar;->doRefreshProgress(IFZZ)V

    .line 814
    const v1, 0x102000f

    iget v2, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    int-to-float v2, v2

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/android/widget/oneplus/ProgressBar;->doRefreshProgress(IFZZ)V

    .line 817
    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1181
    if-eqz p1, :cond_0

    .line 1182
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/widget/oneplus/ProgressBar;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/widget/oneplus/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1186
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 909
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 912
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 914
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 915
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyPrimaryProgressTint()V

    .line 917
    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 949
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 951
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 952
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applyPrimaryProgressTint()V

    .line 954
    :cond_1
    return-void
.end method

.method setProgressValueOnly(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1356
    iput p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgress:I

    .line 1357
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/android/widget/oneplus/ProgressBar;->getScale(F)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/widget/oneplus/ProgressBar;->onProgressRefresh(FZ)V

    .line 1358
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1453
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1469
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1457
    :cond_1
    if-gez p1, :cond_2

    .line 1458
    const/4 p1, 0x0

    .line 1461
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    if-le p1, v0, :cond_3

    .line 1462
    iget p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mMax:I

    .line 1465
    :cond_3
    iget v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_0

    .line 1466
    iput p1, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    .line 1467
    const v0, 0x102000f

    iget v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mSecondaryProgress:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/widget/oneplus/ProgressBar;->refreshProgress(IFZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1075
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1078
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1080
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1081
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applySecondaryProgressTint()V

    .line 1083
    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    .line 1113
    new-instance v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;-><init>(Lcom/android/widget/oneplus/ProgressBar$1;)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1116
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressTintInfo:Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/widget/oneplus/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1118
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1119
    invoke-direct {p0}, Lcom/android/widget/oneplus/ProgressBar;->applySecondaryProgressTint()V

    .line 1121
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1673
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1675
    iget-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminate:Z

    if-eqz v0, :cond_1

    .line 1677
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1678
    :cond_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->stopAnimation()V

    .line 1684
    :cond_1
    :goto_0
    return-void

    .line 1680
    :cond_2
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->startAnimation()V

    goto :goto_0
.end method

.method startAnimation()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1587
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1620
    :goto_0
    return-void

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_1

    .line 1592
    iput-boolean v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mHasAnimation:Z

    .line 1619
    :goto_1
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->postInvalidate()V

    goto :goto_0

    .line 1595
    :cond_1
    iput-boolean v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mHasAnimation:Z

    .line 1597
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 1598
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1601
    :cond_2
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    .line 1602
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    .line 1607
    :goto_2
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    .line 1608
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1613
    :goto_3
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1614
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1615
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1616
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1617
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_1

    .line 1604
    :cond_3
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2

    .line 1610
    :cond_4
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3
.end method

.method stopAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1628
    iput-boolean v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mHasAnimation:Z

    .line 1629
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1631
    iput-boolean v1, p0, Lcom/android/widget/oneplus/ProgressBar;->mShouldStartAnimationDrawable:Z

    .line 1633
    :cond_0
    invoke-virtual {p0}, Lcom/android/widget/oneplus/ProgressBar;->postInvalidate()V

    .line 1634
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/widget/oneplus/ProgressBar;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
