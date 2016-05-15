.class public Lcom/android/internal/policy/impl/UcPowerOffView;
.super Landroid/widget/RelativeLayout;
.source "UcPowerOffView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;
    }
.end annotation


# static fields
.field private static final DURATION_DOWN:I = 0x320

.field private static final DURATION_UP:I = 0x12c

.field private static final DURATION_UP_ONLY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "UcPowerOffView"


# instance fields
.field private mCallBack:Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;

.field private mCloseFlag:Z

.field private mContext:Landroid/content/Context;

.field private mCurryY:I

.field private mDelY:I

.field private mImgView:Landroid/widget/ImageView;

.field private mLastDownY:I

.field private mLayoutHight:I

.field private mPowerView:Landroid/widget/ImageView;

.field private mScreenHeigh:I

.field private mScreenWidth:I

.field private mScrollUp:Z

.field private mScrollUpHight:I

.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScreenWidth:I

    .line 50
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScreenHeigh:I

    .line 51
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mLastDownY:I

    .line 54
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mLayoutHight:I

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCloseFlag:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUp:Z

    .line 60
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUpHight:I

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCallBack:Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;

    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mContext:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->setupView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScreenWidth:I

    .line 50
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScreenHeigh:I

    .line 51
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mLastDownY:I

    .line 54
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mLayoutHight:I

    .line 56
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCloseFlag:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUp:Z

    .line 60
    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUpHight:I

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCallBack:Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;

    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->setupView()V

    .line 76
    return-void
.end method

.method private computeScrollEx(III)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "hight"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-le v0, p3, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCallBack:Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCallBack:Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;->onScrollCallBack(II)V

    .line 183
    :cond_1
    return-void
.end method

.method private setupView()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 83
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 85
    .local v1, "polator":Landroid/view/animation/Interpolator;
    new-instance v3, Landroid/widget/Scroller;

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    .line 88
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    move-object v2, v3

    check-cast v2, Landroid/view/WindowManager;

    .line 90
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 92
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScreenHeigh:I

    .line 93
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScreenWidth:I

    .line 96
    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UcPowerOffView;->setBackgroundColor(I)V

    .line 97
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    .line 98
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 101
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    const v4, 0x1080797

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UcPowerOffView;->addView(Landroid/view/View;)V

    .line 104
    iput v5, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mLayoutHight:I

    .line 105
    iput v5, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUpHight:I

    .line 106
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUp:Z

    .line 107
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 192
    .local v0, "dx":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 193
    .local v1, "dy":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/impl/UcPowerOffView;->scrollTo(II)V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->postInvalidate()V

    .line 197
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUp:Z

    if-eqz v2, :cond_1

    .line 198
    iget v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUpHight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/UcPowerOffView;->computeScrollEx(III)V

    .line 201
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUp:Z

    .line 214
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mLayoutHight:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/UcPowerOffView;->computeScrollEx(III)V

    goto :goto_0

    .line 207
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCloseFlag:Z

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public scrollToUp(III)V
    .locals 2
    .param p1, "dy"    # I
    .param p2, "heigh"    # I
    .param p3, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 150
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUp:Z

    .line 151
    iput p2, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScrollUpHight:I

    .line 152
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->getScrollY()I

    move-result v0

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->startBounceAnim(III)V

    .line 160
    :goto_0
    return-void

    .line 154
    :cond_0
    if-ne p3, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->getScrollY()I

    move-result v0

    const/16 v1, 0x15e

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->startBounceAnim(III)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->getScrollY()I

    move-result v0

    const/16 v1, 0x320

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->startBounceAnim(III)V

    goto :goto_0
.end method

.method public setBgImage(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public setBgImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setLayoutHight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mLayoutHight:I

    .line 111
    return-void
.end method

.method public setMoveParams(I)V
    .locals 1
    .param p1, "dy"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/impl/UcPowerOffView;->scrollTo(II)V

    .line 134
    return-void
.end method

.method public setScrollCallBack(Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCallBack:Lcom/android/internal/policy/impl/UcPowerOffView$OnScrollCallBack;

    .line 221
    :cond_0
    return-void
.end method

.method public setUpParams(III)V
    .locals 3
    .param p1, "dy"    # I
    .param p2, "heigh"    # I
    .param p3, "offset"    # I

    .prologue
    .line 138
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScreenHeigh:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p3

    if-le v0, v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    const/16 v2, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/policy/impl/UcPowerOffView;->startBounceAnim(III)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mCloseFlag:Z

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->getScrollY()I

    move-result v0

    const/16 v1, 0x320

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->startBounceAnim(III)V

    goto :goto_0
.end method

.method public startBounceAnim(III)V
    .locals 6
    .param p1, "startY"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/UcPowerOffView;->mScroller:Landroid/widget/Scroller;

    move v2, p1

    move v3, v1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->invalidate()V

    .line 130
    return-void
.end method

.method public startUp(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "heigh"    # I

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UcPowerOffView;->getScrollY()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/internal/policy/impl/UcPowerOffView;->startBounceAnim(III)V

    .line 165
    return-void
.end method
