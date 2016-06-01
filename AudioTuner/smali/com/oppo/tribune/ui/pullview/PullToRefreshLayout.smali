.class public Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;
.super Landroid/widget/FrameLayout;
.source "PullToRefreshLayout.java"

# interfaces
.implements Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;


# static fields
.field private static final SCROLL_DURATION_DEFAULT:I = 0x190

.field private static final STATE_DEFAULT:I = 0x4

.field private static final STATE_PULL_TO_REFRESH:I = 0x0

.field private static final STATE_REFRESHING:I = 0x3

.field private static final STATE_RELEASE_TO_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_PATTERN:Ljava/lang/String; = "MM-dd HH:mm:ss"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mDownY:F

.field private mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

.field private mHeaderViewHeight:I

.field private mHeaderViewTop:I

.field private mIsPullRefreshEnable:Z

.field private mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

.field private mRefreshTime:Ljava/lang/String;

.field private mScaledTouchSlop:D

.field private mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

.field private volatile mState:I

.field private mTouchEventX:D

.field private mTouchEventY:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mDownY:F

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mIsPullRefreshEnable:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->initMembers(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mDownY:F

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mIsPullRefreshEnable:Z

    .line 62
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->initMembers(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 255
    const-string v2, ""

    .line 257
    .local v2, "time":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 259
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 261
    return-object v2
.end method

.method private initMembers(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mRefreshTime:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-direct {v0, p1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    .line 69
    new-instance v0, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    invoke-direct {v0, p1, p0}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    .line 71
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    invoke-virtual {v0, p0}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->setScrollListener(Lcom/oppo/tribune/ui/pullview/ScrollRunnable$ScrollListener;)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setClipChildren(Z)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->setDrawingCacheEnabled(Z)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    .line 77
    iget v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    .line 79
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScaledTouchSlop:D

    .line 81
    return-void
.end method

.method private isRefreshReady()Z
    .locals 2

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "isRefreshReady":Z
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    invoke-interface {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshListener;->isRefreshReady()Z

    move-result v0

    .line 334
    :cond_0
    return v0
.end method

.method private scrollToClose()V
    .locals 4

    .prologue
    .line 306
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v0

    .line 307
    .local v0, "headerViewBottom":I
    if-lez v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    const/4 v2, 0x0

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v0, v3}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->startScrollDistance(III)V

    .line 311
    :cond_0
    return-void
.end method

.method private scrollToClose(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 315
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v0

    .line 316
    .local v0, "headerViewBottom":I
    if-lez v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->startScrollDistance(III)V

    .line 319
    :cond_0
    return-void
.end method

.method private scrollToRefresh()V
    .locals 4

    .prologue
    .line 322
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v0

    .line 323
    .local v0, "headerViewTop":I
    if-lez v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    const/4 v2, 0x0

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v0, v3}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->startScrollDistance(III)V

    .line 327
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isStateDefault()Z
    .locals 2

    .prologue
    .line 346
    iget v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ismIsPullRefreshEnable()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mIsPullRefreshEnable:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mContentView:Landroid/view/View;

    .line 250
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->addView(Landroid/view/View;)V

    .line 251
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 156
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_0
    return v8

    .line 102
    :pswitch_1
    iget-object v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    invoke-virtual {v8}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->isScrolling()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 103
    iget-object v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScrollRunable:Lcom/oppo/tribune/ui/pullview/ScrollRunnable;

    invoke-virtual {v8}, Lcom/oppo/tribune/ui/pullview/ScrollRunnable;->stopScroll()V

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-double v8, v8

    iput-wide v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventY:D

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-double v8, v8

    iput-wide v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventX:D

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mDownY:F

    .line 110
    iget-object v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v8}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v8

    if-gtz v8, :cond_1

    .line 111
    const/4 v8, 0x0

    goto :goto_0

    .line 113
    :cond_1
    iget v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 114
    const/4 v8, 0x0

    goto :goto_0

    .line 116
    :cond_2
    const/4 v8, 0x1

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-double v4, v8

    .line 123
    .local v4, "touchEventX":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-double v6, v8

    .line 125
    .local v6, "touchEventY":D
    iget-wide v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventY:D

    sub-double v2, v6, v8

    .line 126
    .local v2, "moveDistanceY":D
    iget-wide v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventX:D

    sub-double v0, v4, v8

    .line 128
    .local v0, "moveDistanceX":D
    iput-wide v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventX:D

    .line 129
    iput-wide v6, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventY:D

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 132
    const/4 v8, 0x0

    goto :goto_0

    .line 135
    :cond_3
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->isRefreshReady()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-wide v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mScaledTouchSlop:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    cmpl-double v8, v2, v8

    if-lez v8, :cond_4

    .line 136
    const/4 v8, 0x1

    goto :goto_0

    .line 139
    :cond_4
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v2, v8

    if-gtz v8, :cond_6

    iget-object v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v8}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v8

    const/16 v9, 0xa

    if-gt v8, v9, :cond_6

    iget v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 141
    const-wide/16 v8, 0x0

    cmpg-double v8, v2, v8

    if-gez v8, :cond_5

    .line 142
    const/16 v8, 0x64

    invoke-direct {p0, v8}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->scrollToClose(I)V

    .line 144
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 147
    :cond_6
    iget-object v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v8}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v8

    if-gtz v8, :cond_7

    .line 148
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 150
    :cond_7
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 236
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 237
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getMeasuredWidth()I

    move-result v1

    .line 238
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getMeasuredHeight()I

    move-result v0

    .line 239
    .local v0, "height":I
    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget v3, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    iget v5, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v6, v3, v1, v4}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->layout(IIII)V

    .line 242
    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mContentView:Landroid/view/View;

    iget v3, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    iget v5, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {v2, v6, v3, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 244
    return-void
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 339
    const/4 v0, 0x4

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    .line 340
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mRefreshTime:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->scrollToClose()V

    .line 343
    :cond_0
    return-void
.end method

.method public onScroll(II)V
    .locals 2
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 267
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result p2

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->offsetTopAndBottom(I)V

    .line 271
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mContentView:Landroid/view/View;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 272
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v0}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    .line 273
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->invalidate()V

    .line 274
    return-void
.end method

.method public onScrollEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 279
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v0

    .line 280
    .local v0, "headerViewTop":I
    if-lez v0, :cond_3

    .line 281
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->offsetTopAndBottom(I)V

    .line 282
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mContentView:Landroid/view/View;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 283
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->invalidate()V

    .line 292
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v1

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    if-eq v1, v3, :cond_1

    .line 293
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mRefreshTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->onPullToRefresh(Ljava/lang/String;)V

    .line 296
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v1

    if-ltz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    invoke-interface {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshListener;->onRefresh()V

    .line 302
    :cond_2
    return-void

    .line 284
    :cond_3
    if-gez v0, :cond_0

    iget v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    neg-int v1, v1

    if-le v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    add-int/2addr v2, v0

    neg-int v2, v2

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->offsetTopAndBottom(I)V

    .line 287
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mContentView:Landroid/view/View;

    iget v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    add-int/2addr v2, v0

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 289
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->invalidate()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x3

    .line 163
    iget-boolean v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mIsPullRefreshEnable:Z

    if-nez v4, :cond_0

    .line 230
    :goto_0
    return v2

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 229
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v2, v3

    .line 230
    goto :goto_0

    .line 171
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mDownY:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-double v4, v4

    iget-wide v6, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventY:D

    sub-double/2addr v4, v6

    double-to-int v1, v4

    .line 176
    .local v1, "moveDistance":I
    if-gez v1, :cond_2

    .line 177
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v4}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v4

    neg-int v4, v4

    if-le v1, v4, :cond_5

    .line 181
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v4, v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->offsetTopAndBottom(I)V

    .line 182
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 183
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v4}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v0

    .line 184
    .local v0, "headerViewTop":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->invalidate()V

    .line 186
    if-ltz v0, :cond_3

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    if-gez v4, :cond_3

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    if-eq v4, v8, :cond_3

    .line 188
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v4}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->startUpAnimation()V

    .line 189
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget-object v5, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mRefreshTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->onReleaseToRefresh(Ljava/lang/String;)V

    .line 190
    iput v3, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    .line 193
    :cond_3
    if-gez v0, :cond_4

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    if-ltz v4, :cond_4

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    if-eq v4, v8, :cond_4

    .line 195
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v4}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->startDownAnimation()V

    .line 196
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget-object v5, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mRefreshTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->onPullToRefresh(Ljava/lang/String;)V

    .line 197
    iput v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    .line 200
    :cond_4
    iput v0, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-double v4, v2

    iput-wide v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mTouchEventY:D

    goto :goto_1

    .line 177
    .end local v0    # "headerViewTop":I
    :cond_5
    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v4}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getBottom()I

    move-result v4

    neg-int v1, v4

    goto :goto_2

    .line 208
    .end local v1    # "moveDistance":I
    :pswitch_1
    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v2}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v2

    if-ltz v2, :cond_7

    .line 211
    iget v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    if-eq v2, v8, :cond_6

    .line 212
    iput v8, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    .line 213
    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget-object v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mRefreshTime:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->onRefresh(Ljava/lang/String;)V

    .line 215
    :cond_6
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->scrollToRefresh()V

    goto/16 :goto_1

    .line 219
    :cond_7
    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v2}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v2

    iget v4, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewHeight:I

    neg-int v4, v4

    if-le v2, v4, :cond_1

    iget v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    if-eq v2, v8, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->scrollToClose()V

    goto/16 :goto_1

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnPullRefresh()V
    .locals 3

    .prologue
    .line 350
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v0

    .line 351
    .local v0, "headerViewTop":I
    if-gez v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->offsetTopAndBottom(I)V

    .line 354
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mContentView:Landroid/view/View;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 355
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    invoke-virtual {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->getTop()I

    move-result v1

    iput v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderViewTop:I

    .line 357
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->invalidate()V

    .line 358
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mHeaderView:Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;

    iget-object v2, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mRefreshTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/ui/pullview/PullRefreshHeaderView;->onRefresh(Ljava/lang/String;)V

    .line 359
    const/4 v1, 0x3

    iput v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mState:I

    .line 360
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    invoke-interface {v1}, Lcom/oppo/tribune/ui/pullview/PullRefreshListener;->onRefresh()V

    .line 364
    :cond_0
    return-void
.end method

.method public setPullRefreshListener(Lcom/oppo/tribune/ui/pullview/PullRefreshListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mPullRefreshListener:Lcom/oppo/tribune/ui/pullview/PullRefreshListener;

    .line 85
    return-void
.end method

.method public setmIsPullRefreshEnable(Z)V
    .locals 0
    .param p1, "mIsPullRefreshEnable"    # Z

    .prologue
    .line 374
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/pullview/PullToRefreshLayout;->mIsPullRefreshEnable:Z

    .line 375
    return-void
.end method
