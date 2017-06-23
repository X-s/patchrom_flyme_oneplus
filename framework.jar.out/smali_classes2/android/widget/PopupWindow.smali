.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private final mDrawingLocation:[I

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private final mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 267
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 201
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v5, v10, [I

    iput-object v5, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 95
    new-array v5, v10, [I

    iput-object v5, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 96
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 115
    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 116
    iput v8, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 117
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 118
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 119
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 120
    iput v9, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 123
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 124
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 126
    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 127
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 132
    iput v6, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 135
    iput v6, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 151
    const/16 v5, 0x3e8

    iput v5, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 154
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 156
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 164
    new-instance v5, Landroid/widget/PopupWindow$1;

    invoke-direct {v5, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v5, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 219
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 220
    const-string v5, "window"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 222
    sget-object v5, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 225
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 226
    invoke-virtual {v0, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 231
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 233
    .local v1, "animStyle":I
    const v5, 0x10302ec

    if-ne v1, v5, :cond_0

    .line 234
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 242
    .end local v1    # "animStyle":I
    :goto_0
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v3

    .line 245
    .local v3, "enterTransition":Landroid/transition/Transition;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 246
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v4

    .line 252
    .local v4, "exitTransition":Landroid/transition/Transition;
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    invoke-virtual {p0, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 255
    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 256
    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    return-void

    .line 236
    .end local v3    # "enterTransition":Landroid/transition/Transition;
    .end local v4    # "exitTransition":Landroid/transition/Transition;
    .restart local v1    # "animStyle":I
    :cond_0
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 239
    .end local v1    # "animStyle":I
    :cond_1
    iput v9, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    .line 249
    .restart local v3    # "enterTransition":Landroid/transition/Transition;
    :cond_2
    if-nez v3, :cond_3

    const/4 v4, 0x0

    .restart local v4    # "exitTransition":Landroid/transition/Transition;
    :goto_2
    goto :goto_1

    .end local v4    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-virtual {v3}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v4

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 95
    new-array v0, v5, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 115
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 116
    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 117
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 118
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 119
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 120
    iput v4, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 123
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 124
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 126
    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 127
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 132
    iput v3, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 135
    iput v3, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 151
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 154
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 156
    iput v4, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 164
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 325
    if-eqz p1, :cond_0

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 327
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 331
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 332
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 333
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 334
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$1300()[I
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 61
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1382
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1383
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1384
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10302e4

    .line 1390
    :goto_0
    return v0

    .line 1384
    :cond_0
    const v0, 0x10302e3

    goto :goto_0

    .line 1388
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1390
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1335
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1343
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1344
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1346
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_a

    .line 1347
    or-int/lit8 p1, p1, 0x8

    .line 1348
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1349
    or-int/2addr p1, v2

    .line 1354
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1355
    or-int/lit8 p1, p1, 0x10

    .line 1357
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1358
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1360
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1361
    or-int/lit16 p1, p1, 0x200

    .line 1363
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1364
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1366
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1367
    or-int/lit16 p1, p1, 0x100

    .line 1369
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1370
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1372
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1373
    or-int/lit8 p1, p1, 0x20

    .line 1375
    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_9

    .line 1376
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1378
    :cond_9
    return p1

    .line 1351
    :cond_a
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1352
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 1201
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1203
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    .line 1204
    const/4 v1, -0x2

    .line 1209
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1210
    .local v0, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1212
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1214
    return-object v0

    .line 1206
    .end local v0    # "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    .end local v1    # "height":I
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 6
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1224
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1226
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 1227
    const/4 v1, -0x2

    .line 1232
    .local v1, "height":I
    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1233
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1234
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1235
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1237
    return-object v0

    .line 1229
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "height":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method private createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1297
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1303
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1304
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1305
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1306
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1307
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1308
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1310
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1311
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1316
    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    .line 1317
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1322
    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    .line 1323
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1329
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1331
    return-object v0

    .line 1313
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    .line 1319
    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1325
    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1659
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1663
    :cond_0
    if-eqz p2, :cond_1

    .line 1664
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1669
    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1670
    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1672
    return-void
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1411
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1412
    .local v1, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1413
    .local v2, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v14, :cond_0

    .line 1414
    sub-int p4, p4, v1

    .line 1417
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, p3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1419
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1421
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v14

    move/from16 v0, p5

    invoke-static {v0, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v14

    and-int/lit8 v5, v14, 0x7

    .line 1423
    .local v5, "hgrav":I
    const/4 v14, 0x5

    if-ne v5, v14, :cond_1

    .line 1426
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    sub-int/2addr v15, v2

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1429
    :cond_1
    const/4 v6, 0x0

    .line 1431
    .local v6, "onTop":Z
    const/16 v14, 0x33

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1433
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1434
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1435
    .local v3, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v11, v14, p4

    .line 1438
    .local v11, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    .line 1439
    .local v10, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v14, v11

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v14, v15, :cond_2

    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v14, v15

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    if-lez v14, :cond_5

    .line 1444
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v14, :cond_3

    .line 1445
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v12

    .line 1446
    .local v12, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v13

    .line 1447
    .local v13, "scrollY":I
    new-instance v8, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v14, v12

    add-int v14, v14, p3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v15, v13

    add-int/2addr v15, v1

    add-int v15, v15, p4

    invoke-direct {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1449
    .local v8, "r":Landroid/graphics/Rect;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v14}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1454
    .end local v8    # "r":Landroid/graphics/Rect;
    .end local v12    # "scrollX":I
    .end local v13    # "scrollY":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    add-int v14, v14, p3

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1456
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1459
    const/4 v14, 0x5

    if-ne v5, v14, :cond_4

    .line 1460
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    sub-int/2addr v15, v2

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1464
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1465
    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    sub-int/2addr v14, v1

    sub-int v14, v14, p4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int v15, v15, p4

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    if-ge v14, v15, :cond_9

    const/4 v6, 0x1

    .line 1467
    :goto_0
    if-eqz v6, :cond_a

    .line 1468
    const/16 v14, 0x53

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1469
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1475
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v14, :cond_8

    .line 1476
    iget v14, v3, Landroid/graphics/Rect;->right:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v14, v15

    .line 1477
    .local v4, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v9, v14, v15

    .line 1478
    .local v9, "right":I
    if-le v9, v4, :cond_6

    .line 1479
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v15, v9, v4

    sub-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1482
    :cond_6
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v15, v3, Landroid/graphics/Rect;->left:I

    if-ge v14, v15, :cond_7

    .line 1483
    iget v14, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1484
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1487
    :cond_7
    if-eqz v6, :cond_b

    .line 1488
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int v14, v14, p4

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    sub-int v7, v14, v15

    .line 1489
    .local v7, "popupTop":I
    if-gez v7, :cond_8

    .line 1490
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v14, v7

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1497
    .end local v4    # "displayFrameWidth":I
    .end local v7    # "popupTop":I
    .end local v9    # "right":I
    :cond_8
    :goto_2
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v15, 0x10000000

    or-int/2addr v14, v15

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1499
    return v6

    .line 1465
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1471
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    add-int/2addr v14, v1

    add-int v14, v14, p4

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1493
    .restart local v4    # "displayFrameWidth":I
    .restart local v9    # "right":I
    :cond_b
    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v15, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p2

    iput v14, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private getRelativeAnchorBounds()Landroid/graphics/Rect;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1636
    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    .line 1637
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1638
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move-object v2, v6

    .line 1648
    :goto_1
    return-object v2

    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "decor":Landroid/view/View;
    :cond_1
    move-object v0, v6

    .line 1636
    goto :goto_0

    .line 1642
    .restart local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 1643
    .local v1, "anchorLocation":[I
    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v4

    .line 1646
    .local v4, "popupLocation":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v2, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1647
    .local v2, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v4, v7

    sub-int/2addr v5, v6

    aget v6, v1, v8

    aget v7, v4, v8

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 345
    if-eqz p1, :cond_1

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_1

    .line 346
    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 347
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 348
    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_1

    .line 349
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .line 351
    .local v1, "isEmpty":Z
    :goto_0
    if-nez v1, :cond_1

    .line 356
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :goto_1
    return-object v2

    .line 349
    .restart local v0    # "inflater":Landroid/transition/TransitionInflater;
    .restart local v2    # "transition":Landroid/transition/Transition;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 356
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1249
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1253
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1254
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1256
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1258
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1260
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_1

    .line 1261
    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1263
    :cond_1
    return-void
.end method

.method private isSetLayoutDirectionFromAnchor()Z
    .locals 3

    .prologue
    .line 1279
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1280
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1281
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v1}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutDirection()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1283
    const/4 v1, 0x1

    .line 1286
    .end local v0    # "anchor":Landroid/view/View;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, 0x1

    .line 1157
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_1

    .line 1158
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1164
    :cond_1
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v2, :cond_2

    .line 1165
    iget-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v2}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1170
    :cond_2
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 1171
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    .line 1172
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    :goto_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1180
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v3, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v2, v3}, Landroid/view/View;->setElevation(F)V

    .line 1184
    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getZ()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1185
    .local v0, "surfaceInset":I
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 1186
    iput-boolean v1, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1188
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :goto_1
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1190
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1191
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1192
    return-void

    .line 1174
    .end local v0    # "surfaceInset":I
    :cond_3
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    goto :goto_0

    .line 1188
    .restart local v0    # "surfaceInset":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1939
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1941
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1943
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1944
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1945
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1948
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1949
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1950
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 1951
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1266
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1267
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1268
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1269
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1272
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1928
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1929
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-nez v1, :cond_1

    move-object v0, v4

    .line 1930
    .local v0, "anchor":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_0

    .line 1931
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1932
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1935
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1936
    return-void

    .line 1929
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v0, v3

    goto :goto_0
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 17
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 1876
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1880
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1881
    .local v14, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_7

    :cond_2
    const/4 v13, 0x1

    .line 1882
    .local v13, "needsUpdate":Z
    :goto_1
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_3

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v4, :cond_8

    .line 1883
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1890
    :cond_4
    :goto_2
    if-eqz p5, :cond_5

    .line 1891
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_9

    .line 1892
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1896
    :goto_3
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_a

    .line 1897
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1903
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1905
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1906
    .local v15, "x":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v16, v0

    .line 1907
    .local v16, "y":I
    if-eqz p2, :cond_b

    .line 1908
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1914
    :goto_5
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v15, v4, :cond_6

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_c

    :cond_6
    const/4 v12, 0x1

    :goto_6
    move-object/from16 v7, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v7 .. v12}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1881
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "needsUpdate":Z
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    .line 1884
    .restart local v13    # "needsUpdate":Z
    :cond_8
    if-eqz v13, :cond_4

    .line 1886
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1887
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 1894
    :cond_9
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1899
    :cond_a
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1910
    .restart local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1914
    :cond_c
    const/4 v12, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 1114
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 1115
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 1117
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1122
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1128
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 8

    .prologue
    .line 1581
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    if-eqz v7, :cond_1

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1586
    .local v3, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 1589
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1590
    .local v1, "contentParent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v0, v1

    .line 1591
    check-cast v0, Landroid/view/ViewGroup;

    .line 1597
    .local v0, "contentHolder":Landroid/view/ViewGroup;
    :goto_1
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1599
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1600
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    .line 1602
    iget-object v5, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 1603
    .local v5, "exitTransition":Landroid/transition/Transition;
    if-eqz v5, :cond_3

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1605
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1606
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1607
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1608
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v3, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1610
    invoke-direct {p0}, Landroid/widget/PopupWindow;->getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1611
    .local v4, "epicenter":Landroid/graphics/Rect;
    new-instance v7, Landroid/widget/PopupWindow$2;

    invoke-direct {v7, p0, v4}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v7}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1617
    new-instance v7, Landroid/widget/PopupWindow$3;

    invoke-direct {v7, p0, v3, v0, v2}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    .line 1628
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    :goto_2
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1630
    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v7, :cond_0

    .line 1631
    iget-object v7, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v7}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 1593
    .end local v0    # "contentHolder":Landroid/view/ViewGroup;
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "contentHolder":Landroid/view/ViewGroup;
    goto :goto_1

    .line 1624
    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_3
    invoke-direct {p0, v3, v0, v2}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_2
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1513
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1528
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1549
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1550
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1552
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1553
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1555
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1556
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 1557
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1558
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1560
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1561
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1564
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1565
    .local v6, "returnedHeight":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1566
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1567
    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1570
    :cond_1
    return v6
.end method

.method public getOverlapAnchor()Z
    .locals 1

    .prologue
    .line 968
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 926
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 853
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    .prologue
    .line 798
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 660
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 742
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 743
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 745
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 743
    goto :goto_0

    .line 745
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 629
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 731
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 732
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 478
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 479
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 814
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    .line 816
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 379
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    .line 391
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 394
    .local v4, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 398
    .local v0, "aboveAnchorStateIndex":I
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 399
    .local v2, "count":I
    const/4 v1, -0x1

    .line 400
    .local v1, "belowAnchorStateIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 401
    if-eq v3, v0, :cond_2

    .line 402
    move v1, v3

    .line 409
    :cond_0
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    .line 410
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 417
    .end local v0    # "aboveAnchorStateIndex":I
    .end local v1    # "belowAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_1
    :goto_1
    return-void

    .line 400
    .restart local v0    # "aboveAnchorStateIndex":I
    .restart local v1    # "belowAnchorStateIndex":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 413
    :cond_3
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 414
    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 720
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 721
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 722
    return-void

    .line 721
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 710
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 711
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 504
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 510
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 511
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 514
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 522
    :cond_3
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    if-nez v0, :cond_0

    .line 526
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setElevation(F)V
    .locals 0
    .param p1, "elevation"    # F

    .prologue
    .line 436
    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    .line 437
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 337
    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    .line 338
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 341
    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    .line 342
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 569
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 916
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 917
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 461
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 594
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 595
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 785
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 786
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 831
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 832
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1680
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1681
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 682
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 956
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    .line 957
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 608
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 609
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 762
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 763
    return-void

    .line 762
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 537
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 538
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 862
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 863
    return-void

    .line 862
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 648
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 649
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 940
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 941
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 891
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 892
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 893
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 844
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 845
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1048
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1049
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 1069
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 1070
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 1093
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1099
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1101
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1102
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1104
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1105
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1107
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v6

    .line 1108
    .local v6, "aboveAnchor":Z
    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1110
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1016
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1018
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1019
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 1021
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1022
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1025
    if-eqz p2, :cond_2

    .line 1026
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1029
    :cond_2
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1030
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1032
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 995
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 996
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1698
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1702
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1705
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1707
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1708
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1709
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1710
    const/4 v3, 0x1

    .line 1713
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1714
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1715
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1716
    const/4 v3, 0x1

    .line 1719
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->isSetLayoutDirectionFromAnchor()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1720
    const/4 v3, 0x1

    .line 1723
    :cond_4
    if-eqz v3, :cond_0

    .line 1724
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1725
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1739
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1741
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1742
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1757
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1758
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1776
    if-ltz p3, :cond_0

    .line 1777
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1778
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1781
    :cond_0
    if-ltz p4, :cond_1

    .line 1782
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1783
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1786
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1837
    :cond_2
    :goto_0
    return-void

    .line 1790
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v6}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1793
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1795
    .local v5, "update":Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_b

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1796
    .local v1, "finalWidth":I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1797
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1798
    const/4 v5, 0x1

    .line 1801
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1802
    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1803
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1804
    const/4 v5, 0x1

    .line 1807
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1808
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1809
    const/4 v5, 0x1

    .line 1812
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1813
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1814
    const/4 v5, 0x1

    .line 1817
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1818
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1819
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1820
    const/4 v5, 0x1

    .line 1823
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1824
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1825
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1826
    const/4 v5, 0x1

    .line 1829
    :cond_9
    invoke-direct {p0}, Landroid/widget/PopupWindow;->isSetLayoutDirectionFromAnchor()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1830
    const/4 v5, 0x1

    .line 1833
    :cond_a
    if-eqz v5, :cond_2

    .line 1834
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1835
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1795
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_b
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1801
    .restart local v1    # "finalWidth":I
    :cond_c
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1850
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1851
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1870
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1871
    return-void
.end method
