.class public Lcom/oneplus/widget/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/FilmstripView$1;,
        Lcom/oneplus/widget/FilmstripView$Adapter;,
        Lcom/oneplus/widget/FilmstripView$ItemContainerView;,
        Lcom/oneplus/widget/FilmstripView$ItemInfo;,
        Lcom/oneplus/widget/FilmstripView$ScrollListener;
    }
.end annotation


# static fields
.field private static final DURATION_ITEM_ADD_ANIMATION:J = 0x1f4L

.field private static final DURATION_ITEM_REMOVE_ANIMATION:J = 0x12cL

.field private static final DURATION_ITEM_REMOVE_ANIMATION_FAST:J = 0x64L

.field private static final DURATION_SCROLL_TO_ITEM:J = 0x258L

.field private static final FLY_ACCELERATION:F = -8000.0f

.field private static final INTERVAL_UPDATE_ITEMS_LAYOUT:J = 0x0L

.field private static final MIN_SCROLL_TO_ITEM_OFFSET:F = 5.0f

.field private static final MSG_FAST_LAYOUT:I = 0x271a

.field private static final MSG_FLY:I = 0x2711

.field private static final MSG_SCROLL_TO_ITEM:I = 0x2712

.field private static final MSG_UPDATE_ITEMS_LAYOUT:I = 0x2710

.field private static final PRINT_TRACE_LOGS:Z = false

.field public static final SCROLL_MODE_DISABLED:I = -0x1

.field public static final SCROLL_MODE_MULTIPLE_ITEMS:I = 0x1

.field public static final SCROLL_MODE_SINGLE_ITEM:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_MOVE_TO_NEIGHBOR_ITEM:I = 0x1f4


# instance fields
.field private m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field private m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field private m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

.field private m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field private m_FastLayoutCounter:I

.field private m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

.field private final m_GestureDetector:Landroid/view/GestureDetector;

.field private final m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private m_Handler:Landroid/os/Handler;

.field private m_HasMultiPointers:Z

.field private m_Height:I

.field private m_IsFlying:Z

.field private m_IsOverScrolled:Z

.field private m_IsScrollLeftRight:Ljava/lang/Boolean;

.field private m_IsScrolling:Z

.field private m_ItemMargin:I

.field private m_LastPosition:I

.field private m_OnTouchListener:Landroid/view/View$OnTouchListener;

.field private m_ReportedCurrentPosition:I

.field private m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

.field private m_ScrollMode:I

.field private m_ScrollToItemStartTime:J

.field private m_TotalScrollDistanceX:F

.field private m_Width:I


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/widget/FilmstripView;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->onDataSetChanged()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/widget/FilmstripView;II)V
    .locals 0
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/FilmstripView;->onItemAdded(II)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/oneplus/widget/FilmstripView;II)V
    .locals 0
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/FilmstripView;->onItemRemoved(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 0
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onItemRemovingAnimationCompleted(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/oneplus/widget/FilmstripView;I)V
    .locals 0
    .param p1, "fixedPosition"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onItemSizeChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 108
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 425
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 426
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 422
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 437
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 108
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 438
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 439
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 435
    return-void
.end method

.method private calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .param p2, "calculateTarget"    # Z

    .prologue
    .line 483
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v1, v0, 0x2

    if-eqz p2, :cond_0

    iget v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    :goto_0
    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    return v0

    :cond_0
    iget v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    goto :goto_0
.end method

.method private clearItems()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 491
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 493
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 494
    .local v1, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 495
    move-object v0, v1

    goto :goto_0

    .line 497
    .end local v1    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 498
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 499
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 500
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 488
    return-void
.end method

.method private fastLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 548
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 549
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 551
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 552
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 546
    :cond_0
    return-void
.end method

.method private findFirstVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    return-object v0
.end method

.method private findItemInfo(FF)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 582
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 584
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 585
    .local v0, "halfMargin":F
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 586
    .local v1, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v1, :cond_1

    .line 588
    iget v2, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v3, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 589
    return-object v1

    .line 590
    :cond_0
    iget-object v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 593
    .end local v0    # "halfMargin":F
    .end local v1    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    return-object v4
.end method

.method private findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(IZ)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method private findItemInfo(IZ)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I
    .param p2, "includeRemovingItem"    # Z

    .prologue
    const/4 v2, 0x0

    .line 571
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 572
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 574
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 575
    :cond_0
    return-object v0

    .line 576
    :cond_1
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 578
    :cond_2
    return-object v2
.end method

.method private findLastVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    return-object v0
.end method

.method private findNextNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 2
    .param p1, "current"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 607
    if-eqz p1, :cond_1

    .line 609
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 610
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 611
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 612
    :cond_0
    return-object v0

    .line 614
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    return-object v1
.end method

.method private findPreviousNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 2
    .param p1, "current"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 637
    if-eqz p1, :cond_1

    .line 639
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 640
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 641
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 642
    :cond_0
    return-object v0

    .line 644
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    return-object v1
.end method

.method private fly(FJ)V
    .locals 12
    .param p1, "velocity"    # F
    .param p2, "lastTime"    # J

    .prologue
    .line 447
    iget-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v6, :cond_0

    .line 448
    return-void

    .line 451
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 452
    .local v0, "currentTime":J
    sub-long v6, v0, p2

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v2, v6, v7

    .line 453
    .local v2, "durationSeconds":F
    mul-float v6, p1, v2

    const/high16 v7, -0x3a060000    # -8000.0f

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 454
    .local v4, "offset":I
    int-to-float v6, v4

    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 461
    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_4

    .line 462
    const/4 v6, 0x0

    const/high16 v7, -0x3a060000    # -8000.0f

    mul-float/2addr v7, v2

    add-float/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 467
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v5

    .line 468
    .local v5, "position":I
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v3

    .line 469
    .local v3, "itemCount":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-lez v6, :cond_2

    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_6

    if-gtz v5, :cond_6

    .line 471
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 472
    if-ltz v5, :cond_3

    .line 473
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 444
    :cond_3
    :goto_2
    return-void

    .line 464
    .end local v3    # "itemCount":I
    .end local v5    # "position":I
    :cond_4
    const/4 v6, 0x0

    const/high16 v7, -0x3a060000    # -8000.0f

    mul-float/2addr v7, v2

    sub-float v7, p1, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 468
    .restart local v5    # "position":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "itemCount":I
    goto :goto_1

    .line 469
    :cond_6
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_7

    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_2

    .line 476
    :cond_7
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/16 v9, 0x2711

    invoke-static {v7, v9, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2
.end method

.method private getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 667
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v6, v6

    div-float v1, v6, v8

    .line 668
    .local v1, "centerX":F
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v4, v6

    .line 669
    .local v4, "minDiffX":F
    const/4 v0, 0x0

    .line 670
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 671
    .end local v0    # "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v3, :cond_2

    .line 673
    iget v6, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v7, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    add-float v5, v6, v7

    .line 674
    .local v5, "x":F
    sub-float v6, v1, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 675
    .local v2, "diffX":F
    if-eqz v0, :cond_0

    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    .line 677
    :cond_0
    move-object v0, v3

    .line 678
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    move v4, v2

    .line 680
    .end local v0    # "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 682
    .end local v2    # "diffX":F
    .end local v5    # "x":F
    :cond_2
    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 715
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 713
    :goto_0
    return-void

    .line 718
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->fastLayout()V

    goto :goto_0

    .line 723
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 724
    .local v0, "params":[Ljava/lang/Object;
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/widget/FilmstripView;->fly(FJ)V

    goto :goto_0

    .line 729
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v3, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    .line 734
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v1, :cond_1

    .line 735
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    goto :goto_0

    .line 736
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 737
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    goto :goto_0

    .line 739
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    goto :goto_0

    .line 715
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_3
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x271a -> :sswitch_0
    .end sparse-switch
.end method

.method private obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 756
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 757
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_0

    .line 759
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 760
    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 761
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    .line 762
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 769
    :goto_0
    iput p1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 770
    return-object v0

    .line 766
    :cond_0
    new-instance v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {v0, p0, v1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;-><init>(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 767
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    new-instance v1, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;-><init>(Landroid/content/Context;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    iput-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    goto :goto_0
.end method

.method private onDataSetChanged()V
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 1095
    return-void
.end method

.method private onGestureDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1108
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(FF)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1110
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 1111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 1102
    return-void
.end method

.method private onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1119
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v2, :cond_0

    .line 1120
    return-void

    .line 1123
    :cond_0
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    packed-switch v2, :pswitch_data_0

    .line 1116
    :cond_1
    :goto_0
    return-void

    .line 1127
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 1128
    .local v0, "itemCount":I
    :cond_2
    if-lez v0, :cond_1

    .line 1130
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    if-ltz v2, :cond_3

    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 1131
    .local v1, "position":I
    :goto_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    .line 1133
    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    const/4 v2, -0x1

    :goto_2
    add-int/2addr v1, v2

    .line 1134
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 1135
    invoke-direct {p0, v1, v3}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    .line 1130
    .end local v1    # "position":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    .restart local v1    # "position":I
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1133
    goto :goto_2

    .line 1142
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_1

    .line 1144
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v2, :cond_5

    .line 1145
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v2, :cond_5

    .line 1146
    cmpl-float v2, p3, v5

    if-lez v2, :cond_5

    .line 1147
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v2, v3, :cond_1

    .line 1151
    :cond_5
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v2, :cond_6

    .line 1152
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 1153
    cmpg-float v2, p3, v5

    if-gez v2, :cond_6

    .line 1154
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v2, v3, :cond_1

    .line 1158
    :cond_6
    invoke-direct {p0, p3}, Lcom/oneplus/widget/FilmstripView;->startFly(F)V

    goto :goto_0

    .line 1123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v2, 0x1

    .line 1169
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v0, :cond_0

    .line 1170
    return-void

    .line 1173
    :cond_0
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1174
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1179
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1180
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 1184
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1185
    return-void

    .line 1182
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    goto :goto_0

    .line 1188
    :cond_4
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1189
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 1191
    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1192
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v0, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v0, :cond_6

    .line 1198
    :cond_5
    :goto_1
    neg-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1166
    return-void

    .line 1194
    :cond_6
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v2, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1195
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    goto :goto_1
.end method

.method private onGestureUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1206
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1207
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1211
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1214
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1215
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0
.end method

.method private onItemAdded(II)V
    .locals 16
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v13, :cond_0

    .line 787
    return-void

    .line 788
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v13}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v4

    .line 789
    .local v4, "count":I
    if-ltz p1, :cond_1

    move/from16 v0, p1

    if-lt v0, v4, :cond_2

    .line 790
    :cond_1
    return-void

    .line 789
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_1

    .line 797
    const/4 v5, 0x0

    .line 798
    .local v5, "firstItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v7, 0x0

    .line 799
    .local v7, "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 800
    .local v6, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    sub-int v13, p2, p1

    add-int/lit8 v10, v13, 0x1

    .line 801
    .end local v5    # "firstItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .local v10, "positionShift":I
    :goto_0
    if-eqz v6, :cond_5

    .line 803
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p1

    if-lt v13, v0, :cond_3

    .line 804
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/2addr v13, v10

    iput v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 805
    :cond_3
    if-nez v5, :cond_4

    .line 806
    move-object v5, v6

    .line 807
    :cond_4
    move-object v7, v6

    .line 808
    .local v7, "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 812
    .end local v7    # "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_5
    const/4 v3, 0x0

    .line 813
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v2, 0x1

    .line 814
    .local v2, "addAfterAnchor":Z
    if-eqz v5, :cond_8

    iget v13, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p2

    if-le v13, v0, :cond_8

    .line 816
    move-object v3, v5

    .line 817
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v2, 0x0

    .line 840
    .end local v3    # "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_6
    :goto_1
    if-nez v3, :cond_c

    .line 842
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 843
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 844
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v13}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0x1f4

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 845
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 846
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 847
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 848
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 849
    :cond_7
    return-void

    .line 819
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_8
    if-eqz v7, :cond_9

    iget v13, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p1

    if-ge v13, v0, :cond_9

    .line 820
    move-object v3, v7

    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    goto :goto_1

    .line 821
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_9
    if-eqz v5, :cond_6

    .line 823
    iget-object v6, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 824
    :goto_2
    if-eqz v6, :cond_6

    .line 826
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v14, p1, -0x1

    if-ne v13, v14, :cond_a

    .line 828
    move-object v3, v6

    .line 829
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    goto :goto_1

    .line 831
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_a
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v14, p2, 0x1

    if-ne v13, v14, :cond_b

    .line 833
    move-object v3, v6

    .line 834
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v2, 0x0

    .line 835
    goto :goto_1

    .line 837
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 853
    .end local v3    # "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
    if-eqz v2, :cond_e

    .line 855
    move-object v11, v3

    .line 856
    .local v11, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v13, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v14, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v14, v14

    add-float v12, v13, v14

    .line 857
    .local v12, "right":F
    move/from16 v9, p1

    .local v9, "position":I
    :goto_3
    move/from16 v0, p2

    if-gt v9, v0, :cond_10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v13, v13

    cmpg-float v13, v12, v13

    if-gez v13, :cond_10

    .line 859
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 860
    invoke-virtual {v6, v11}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 861
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 862
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v13}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0x1f4

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v13, v11, :cond_d

    .line 864
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 865
    :cond_d
    move-object v11, v6

    .line 866
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 857
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 871
    .end local v9    # "position":I
    .end local v11    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v12    # "right":F
    :cond_e
    move-object v8, v3

    .line 872
    .local v8, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v13, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v14, v14

    sub-float v12, v13, v14

    .line 873
    .restart local v12    # "right":F
    move/from16 v9, p2

    .restart local v9    # "position":I
    :goto_4
    move/from16 v0, p1

    if-lt v9, v0, :cond_10

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_10

    .line 875
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 876
    invoke-virtual {v6, v8}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 877
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 878
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v13}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0x1f4

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v13, v8, :cond_f

    .line 880
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 881
    :cond_f
    move-object v8, v6

    .line 882
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    sub-float/2addr v12, v13

    .line 873
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 885
    .end local v8    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_11

    .line 886
    iget v13, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 783
    :cond_11
    return-void
.end method

.method private onItemRemoved(II)V
    .locals 12
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 894
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v8, :cond_0

    .line 895
    return-void

    .line 896
    :cond_0
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 897
    .local v1, "count":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 898
    :cond_1
    return-void

    .line 897
    :cond_2
    if-lt p2, p1, :cond_1

    .line 904
    if-nez v1, :cond_3

    .line 906
    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 907
    return-void

    .line 911
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->findFirstVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v3

    .line 912
    .local v3, "firstItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->findLastVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 913
    .local v6, "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v0, -0x1

    .line 914
    .local v0, "anchorPosition":I
    if-eqz v3, :cond_7

    iget v8, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-le v8, p2, :cond_7

    .line 915
    iget v0, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 936
    :cond_4
    :goto_0
    if-gez v0, :cond_5

    .line 938
    add-int/lit8 v8, v1, -0x1

    if-ge p2, v8, :cond_b

    .line 939
    add-int/lit8 v0, p2, 0x1

    .line 945
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 946
    .local v5, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    sub-int v8, p2, p1

    add-int/lit8 v7, v8, 0x1

    .line 947
    .local v7, "positionShift":I
    :goto_2
    if-eqz v5, :cond_f

    .line 949
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-le v8, p2, :cond_c

    .line 950
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    sub-int/2addr v8, v7

    iput v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 964
    :cond_6
    :goto_3
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 916
    .end local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "positionShift":I
    :cond_7
    if-eqz v6, :cond_8

    iget v8, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ge v8, p1, :cond_8

    .line 917
    iget v0, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_0

    .line 918
    :cond_8
    if-eqz v3, :cond_4

    .line 920
    iget-object v5, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 921
    .restart local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_4
    if-eqz v5, :cond_4

    .line 923
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, p1, -0x1

    if-ne v8, v9, :cond_9

    .line 925
    iget v0, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_0

    .line 928
    :cond_9
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, p2, 0x1

    if-ne v8, v9, :cond_a

    .line 930
    iget v0, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_0

    .line 933
    :cond_a
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_4

    .line 940
    .end local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    if-lez p1, :cond_5

    .line 941
    add-int/lit8 v0, p1, -0x1

    goto :goto_1

    .line 951
    .restart local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v7    # "positionShift":I
    :cond_c
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-lt v8, p1, :cond_6

    .line 953
    iput-boolean v11, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    .line 954
    move-object v2, v5

    .line 955
    .local v2, "finalItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v8, :cond_d

    iget-object v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v8, :cond_e

    :cond_d
    const-wide/16 v8, 0x64

    :goto_5
    invoke-virtual {v10, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/oneplus/widget/FilmstripView$2;

    invoke-direct {v9, p0, v2}, Lcom/oneplus/widget/FilmstripView$2;-><init>(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_e
    const-wide/16 v8, 0x12c

    goto :goto_5

    .line 968
    .end local v2    # "finalItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_f
    const/4 v4, 0x0

    .line 969
    .local v4, "hasNormalItems":Z
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v8, :cond_10

    .line 971
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 972
    :goto_6
    if-eqz v5, :cond_10

    .line 974
    iget-boolean v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v8, :cond_12

    .line 976
    const/4 v4, 0x1

    .line 982
    :cond_10
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v8, :cond_13

    if-eqz v4, :cond_13

    .line 891
    :cond_11
    :goto_7
    return-void

    .line 979
    :cond_12
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_6

    .line 984
    :cond_13
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v5

    .line 985
    if-nez v5, :cond_14

    .line 986
    invoke-direct {p0, v11}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    goto :goto_7

    .line 987
    :cond_14
    iget-boolean v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v8, :cond_1a

    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ne v8, p1, :cond_1a

    .line 989
    if-ge p1, v1, :cond_17

    .line 993
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v8, :cond_16

    .line 998
    :cond_15
    :goto_8
    invoke-direct {p0, p1, v11}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_7

    .line 995
    :cond_16
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v11, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 996
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    goto :goto_8

    .line 1000
    :cond_17
    if-lez p1, :cond_11

    .line 1004
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v8, :cond_19

    .line 1009
    :cond_18
    :goto_9
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0, v8, v11}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_7

    .line 1006
    :cond_19
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v11, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1007
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    goto :goto_9

    .line 1017
    :cond_1a
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    invoke-direct {p0, v8}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    goto :goto_7
.end method

.method private onItemRemovingAnimationCompleted(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 3
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    const/4 v2, 0x0

    .line 1027
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v1, :cond_0

    .line 1028
    return-void

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 1030
    .local v0, "itemCount":I
    if-gtz v0, :cond_1

    .line 1032
    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1033
    return-void

    .line 1036
    :cond_1
    sget-object v1, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onItemRemovingAnimationCompleted() - Item : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1039
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    neg-int v1, v1

    iput v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1040
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne p1, v1, :cond_2

    .line 1042
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findPreviousNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1043
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v1, :cond_2

    .line 1044
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findNextNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1046
    :cond_2
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1024
    return-void
.end method

.method private onItemSizeChanged(I)V
    .locals 8
    .param p1, "fixedPosition"    # I

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1054
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_8

    .line 1057
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1058
    .local v3, "oldTargetWidth":I
    iget-boolean v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_0

    .line 1059
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1060
    :cond_0
    iget v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1061
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 1065
    :cond_1
    iget-object v4, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1066
    .local v4, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v4, :cond_4

    .line 1068
    iget v3, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1069
    iget-boolean v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_2

    .line 1070
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1071
    :cond_2
    iget v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1072
    if-eqz v1, :cond_3

    .line 1074
    :cond_3
    iget-object v4, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 1076
    :cond_4
    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1077
    .local v2, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 1079
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1080
    iget-boolean v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_5

    .line 1081
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1082
    :cond_5
    iget v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1083
    if-eqz v1, :cond_6

    .line 1085
    :cond_6
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_1

    .line 1089
    :cond_7
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 1051
    .end local v1    # "diff":I
    .end local v2    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v3    # "oldTargetWidth":I
    .end local v4    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_8
    return-void
.end method

.method private prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1274
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1275
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1276
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1277
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1278
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->prepareItemView(ILandroid/view/ViewGroup;)V

    .line 1279
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1280
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 1284
    :goto_0
    return-object v0

    .line 1283
    :cond_0
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {p0, v1}, Lcom/oneplus/widget/FilmstripView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private refreshItems(I)V
    .locals 9
    .param p1, "centerPosition"    # I

    .prologue
    const/4 v8, 0x0

    .line 1297
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 1298
    .local v1, "itemCount":I
    :goto_0
    if-gez p1, :cond_0

    .line 1299
    const/4 p1, 0x0

    .line 1300
    :cond_0
    if-lt p1, v1, :cond_1

    .line 1301
    add-int/lit8 p1, v1, -0x1

    .line 1304
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1307
    if-lez v1, :cond_2

    if-gez p1, :cond_4

    .line 1309
    :cond_2
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1310
    return-void

    .line 1297
    .end local v1    # "itemCount":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "itemCount":I
    goto :goto_0

    .line 1314
    :cond_4
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1315
    .local v0, "centerItem":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0, v8}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1316
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1317
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1320
    add-int/lit8 v4, p1, -0x1

    .line 1321
    .local v4, "position":I
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1323
    .local v3, "left":F
    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    if-ltz v4, :cond_5

    .line 1325
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1326
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1327
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1328
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1329
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1330
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1332
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_5
    add-int/lit8 v4, p1, 0x1

    .line 1333
    iget v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v7, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 1334
    .local v5, "right":F
    :goto_2
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    if-ge v4, v1, :cond_6

    .line 1336
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1337
    .restart local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1338
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1339
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1340
    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 1341
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1345
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1346
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v6, :cond_7

    .line 1348
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v6, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1349
    iget-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v6, v6, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v6, :cond_7

    .line 1351
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v8, v6, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1352
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    .line 1294
    :cond_7
    return-void
.end method

.method private refreshItems(Z)V
    .locals 1
    .param p1, "keepCurrentItem"    # Z

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1292
    .local v0, "centerPosition":I
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1289
    return-void
.end method

.method private releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 3
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 1363
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1364
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 1365
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v2, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    .line 1370
    :goto_0
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1371
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->releaseItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1359
    return-void

    .line 1368
    :cond_0
    sget-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseItem() - No adapter to release item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 1378
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1379
    invoke-virtual {p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 1380
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {p1, v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1381
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1376
    return-void
.end method

.method private reportCurrentPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1388
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    if-eq v1, p1, :cond_0

    .line 1390
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 1391
    .local v0, "prevPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 1392
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v1, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v1, v0, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onCurrentItemChanged(II)V

    .line 1386
    .end local v0    # "prevPosition":I
    :cond_0
    return-void
.end method

.method private scrollBy(F)F
    .locals 13
    .param p1, "offset"    # F

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 1418
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v2

    .line 1419
    .local v2, "itemCount":I
    :goto_0
    if-gtz v2, :cond_1

    .line 1420
    return v11

    .end local v2    # "itemCount":I
    :cond_0
    move v2, v7

    .line 1418
    goto :goto_0

    .line 1421
    .restart local v2    # "itemCount":I
    :cond_1
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v8, :cond_2

    .line 1422
    return v11

    .line 1425
    :cond_2
    const/4 v1, 0x0

    .line 1426
    .local v1, "isFirstOverScroll":Z
    const/4 v5, 0x0

    .line 1427
    .local v5, "overScrollAtFirstItem":Z
    cmpl-float v8, p1, v11

    if-lez v8, :cond_7

    .line 1429
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v8, :cond_4

    .line 1468
    :cond_3
    :goto_1
    cmpl-float v7, p1, v11

    if-eqz v7, :cond_b

    .line 1470
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1471
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_2
    if-eqz v3, :cond_a

    .line 1473
    invoke-virtual {v3, p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(F)V

    .line 1474
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 1431
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_4
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v4

    .line 1432
    .local v4, "leftBound":I
    int-to-float v8, v4

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    add-float/2addr v9, p1

    sub-float v0, v8, v9

    .line 1433
    .local v0, "diff":F
    cmpg-float v8, v0, v11

    if-gez v8, :cond_6

    .line 1435
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_5

    .line 1437
    iput-boolean v12, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1438
    const/4 v1, 0x1

    .line 1439
    const/4 v5, 0x1

    .line 1441
    :cond_5
    add-float/2addr p1, v0

    goto :goto_1

    .line 1444
    :cond_6
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_1

    .line 1449
    .end local v0    # "diff":F
    .end local v4    # "leftBound":I
    :cond_7
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, v2, -0x1

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v8, :cond_3

    .line 1451
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v6, v8, v9

    .line 1452
    .local v6, "rightBound":I
    int-to-float v8, v6

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    add-float/2addr v9, p1

    sub-float v0, v8, v9

    .line 1453
    .restart local v0    # "diff":F
    cmpl-float v8, v0, v11

    if-lez v8, :cond_9

    .line 1455
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_8

    .line 1457
    iput-boolean v12, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1458
    const/4 v1, 0x1

    .line 1460
    :cond_8
    add-float/2addr p1, v0

    goto :goto_1

    .line 1463
    :cond_9
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_1

    .line 1476
    .end local v0    # "diff":F
    .end local v6    # "rightBound":I
    .restart local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_a
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v7, v12}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1480
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    if-eqz v1, :cond_c

    .line 1482
    sget-object v7, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "scrollBy() - Over-scroll"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_c

    .line 1484
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, v5}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onOverScroll(Z)V

    .line 1488
    :cond_c
    return p1
.end method

.method private scrollToItem(IZ)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "restart"    # Z

    .prologue
    .line 1496
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2712

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1499
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1502
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v9, :cond_0

    .line 1503
    return-void

    .line 1506
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v8

    .line 1510
    .local v8, "targetItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v8, :cond_3

    .line 1512
    iput-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1513
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v9

    int-to-float v9, v9

    iget v10, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float v7, v9, v10

    .line 1522
    .local v7, "scrollOffset":F
    :goto_0
    if-eqz p2, :cond_4

    .line 1524
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollToItemStartTime:J

    .line 1525
    const-wide/16 v2, 0x0

    .line 1531
    .local v2, "duration":J
    :goto_1
    if-eqz v8, :cond_7

    .line 1533
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    const-wide/16 v10, 0x258

    cmp-long v9, v2, v10

    if-gez v9, :cond_6

    .line 1546
    const/high16 v5, 0x40d00000    # 6.5f

    .line 1548
    .local v5, "offsetBase":F
    div-float v1, v7, v5

    .line 1549
    .local v1, "offset":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40a00000    # 5.0f

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_1

    .line 1551
    const/4 v9, 0x0

    cmpl-float v9, v1, v9

    if-lez v9, :cond_5

    .line 1552
    const/high16 v9, 0x40a00000    # 5.0f

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1556
    :cond_1
    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1557
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2712

    const/4 v12, 0x0

    invoke-static {v10, v11, p1, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1493
    .end local v1    # "offset":F
    .end local v5    # "offsetBase":F
    :cond_2
    :goto_3
    return-void

    .line 1517
    .end local v2    # "duration":J
    .end local v7    # "scrollOffset":F
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "scrollOffset":F
    goto :goto_0

    .line 1528
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollToItemStartTime:J

    sub-long v2, v10, v12

    .restart local v2    # "duration":J
    goto :goto_1

    .line 1554
    .restart local v1    # "offset":F
    .restart local v5    # "offsetBase":F
    :cond_5
    const/high16 v9, -0x3f600000    # -5.0f

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    .line 1561
    .end local v1    # "offset":F
    .end local v5    # "offsetBase":F
    :cond_6
    invoke-direct {p0, v7}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1562
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v9, :cond_2

    .line 1564
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v9, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1565
    iget-boolean v9, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v9, v9, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v9, :cond_2

    .line 1567
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1568
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_3

    .line 1575
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1576
    .local v0, "currentItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_c

    const-wide/16 v10, 0x258

    cmp-long v9, v2, v10

    if-gez v9, :cond_c

    .line 1578
    iget v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    sub-int v6, p1, v9

    .line 1579
    .local v6, "positionDiff":I
    iget-boolean v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_8

    .line 1580
    iget v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-gt v9, p1, :cond_9

    const/4 v9, 0x1

    :goto_4
    add-int/2addr v6, v9

    .line 1581
    :cond_8
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_a

    .line 1583
    iget v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    div-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1584
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2712

    const/4 v12, 0x0

    invoke-static {v10, v11, p1, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3

    .line 1580
    :cond_9
    const/4 v9, -0x1

    goto :goto_4

    .line 1588
    :cond_a
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v10, v9, 0x2

    if-ltz v6, :cond_b

    const/4 v9, -0x1

    :goto_5
    mul-int v4, v10, v9

    .line 1589
    .local v4, "offset":I
    int-to-float v9, v4

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1590
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2712

    const/4 v12, 0x0

    invoke-static {v10, v11, p1, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 1588
    .end local v4    # "offset":I
    :cond_b
    const/4 v9, 0x1

    goto :goto_5

    .line 1594
    .end local v6    # "positionDiff":I
    :cond_c
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto/16 :goto_3
.end method

.method private setupHandler()V
    .locals 1

    .prologue
    .line 1717
    new-instance v0, Lcom/oneplus/widget/FilmstripView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$3;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    .line 1715
    return-void
.end method

.method private startFly(F)V
    .locals 7
    .param p1, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    .line 1731
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1732
    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1733
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x2711

    invoke-static {v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1729
    return-void
.end method

.method private stopAutoScroll()V
    .locals 2

    .prologue
    .line 1740
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1741
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1738
    return-void
.end method

.method private stopFly()V
    .locals 2

    .prologue
    .line 1748
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-eqz v0, :cond_0

    .line 1750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1751
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1746
    :cond_0
    return-void
.end method

.method private updateItemsLayout(IZ)V
    .locals 2
    .param p1, "anchorPosition"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1765
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1766
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1773
    .local v0, "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1761
    return-void

    .line 1769
    .end local v0    # "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1770
    .restart local v0    # "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-nez v0, :cond_1

    .line 1771
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V
    .locals 14
    .param p1, "anchorItemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .param p2, "animation"    # Z

    .prologue
    .line 1778
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 1779
    .local v1, "itemCount":I
    :goto_0
    if-gtz v1, :cond_1

    .line 1780
    return-void

    .line 1778
    .end local v1    # "itemCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1783
    .restart local v1    # "itemCount":I
    :cond_1
    if-nez p1, :cond_2

    .line 1784
    iget-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1787
    :cond_2
    const/4 v4, 0x0

    .line 1788
    .local v4, "needNextUpdate":Z
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1789
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    if-eqz v2, :cond_8

    .line 1791
    iget-object v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1792
    .local v5, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    if-eq v9, v10, :cond_4

    .line 1795
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int v0, v9, v10

    .line 1796
    .local v0, "diff":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_5

    if-eqz p2, :cond_5

    .line 1810
    div-int/lit8 v0, v0, 0x3

    .line 1811
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v9, v0

    iput v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1812
    const/4 v4, 0x1

    .line 1814
    :cond_3
    :goto_2
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1815
    if-ne v2, p1, :cond_4

    .line 1816
    div-int/lit8 v9, v0, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(F)V

    .line 1818
    .end local v0    # "diff":I
    :cond_4
    move-object v2, v5

    goto :goto_1

    .line 1798
    .restart local v0    # "diff":I
    :cond_5
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1799
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    neg-int v10, v10

    if-gt v9, v10, :cond_3

    iget-boolean v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_3

    .line 1801
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v2, :cond_6

    .line 1802
    iget-object v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1803
    :cond_6
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v2, :cond_7

    .line 1804
    iget-object v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1805
    :cond_7
    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    goto :goto_2

    .line 1822
    .end local v0    # "diff":I
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_8
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v9, :cond_a

    .line 1824
    :cond_9
    sget-object v9, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateItemsLayout() - No active items"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    return-void

    .line 1829
    :cond_a
    if-eqz p1, :cond_c

    .line 1831
    iget-object v7, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1832
    .local v7, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v3, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1833
    .local v3, "left":F
    :goto_3
    if-eqz v7, :cond_b

    .line 1835
    iget v9, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v3, v9

    .line 1836
    invoke-virtual {v7, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1837
    iget-object v7, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_3

    .line 1839
    :cond_b
    iget-object v5, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1840
    .restart local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v9, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    add-float v3, v9, v10

    .line 1841
    :goto_4
    if-eqz v5, :cond_c

    .line 1843
    invoke-virtual {v5, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1844
    iget v9, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v3, v9

    .line 1845
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_4

    .line 1850
    .end local v3    # "left":F
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v6, v9, -0x1

    .line 1851
    .local v6, "position":I
    :goto_5
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    if-ltz v6, :cond_d

    .line 1853
    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1854
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1855
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1856
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1857
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 1859
    :cond_d
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v6, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 1860
    :goto_6
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 1861
    .local v8, "right":F
    :goto_7
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_f

    if-ge v6, v1, :cond_f

    .line 1863
    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1864
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1865
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1866
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1867
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 1868
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1859
    .end local v8    # "right":F
    :cond_e
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v6, v9, 0x1

    goto :goto_6

    .line 1872
    .restart local v8    # "right":F
    :cond_f
    :goto_8
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_11

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v9, v10, :cond_11

    .line 1874
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v7, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1875
    .restart local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1876
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_10

    .line 1877
    iput-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1878
    :cond_10
    iput-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_8

    .line 1880
    .end local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_11
    :goto_9
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_13

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v9, v10, :cond_13

    .line 1882
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v5, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1883
    .restart local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1884
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_12

    .line 1885
    iput-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1886
    :cond_12
    iput-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_9

    .line 1890
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_13
    if-eqz v4, :cond_14

    .line 1892
    if-nez p1, :cond_15

    .line 1894
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1895
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1905
    :cond_14
    :goto_a
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1775
    return-void

    .line 1899
    :cond_15
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1900
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2710

    invoke-static {v10, v11, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a
.end method

.method private updateItemsLayout(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 1759
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 1757
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 509
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 510
    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 511
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 513
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-nez v1, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 516
    iput-boolean v3, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 519
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 520
    .local v0, "isFirstScrolling":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 528
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v1, :cond_5

    .line 530
    if-eqz v0, :cond_2

    .line 532
    sget-object v1, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchTouchEvent() - Dispatch ACTION_CANCEL to child"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 534
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 539
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_3

    .line 540
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 541
    :cond_3
    return v3

    .line 519
    .end local v0    # "isFirstScrolling":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "isFirstScrolling":Z
    goto :goto_0

    .line 525
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 538
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findPositionOfView(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 625
    if-nez p1, :cond_0

    .line 626
    return v1

    .line 627
    :cond_0
    instance-of v2, p1, Landroid/view/ViewParent;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 628
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    if-eqz v2, :cond_4

    .line 630
    :cond_1
    instance-of v2, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->itemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :cond_2
    return v1

    .line 627
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 629
    :cond_4
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentItem()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 654
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 655
    .local v0, "itemCount":I
    :cond_0
    if-gtz v0, :cond_1

    .line 656
    return v3

    .line 657
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    .line 658
    .local v1, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v1, :cond_2

    .line 659
    iget v2, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 660
    :cond_2
    return v3
.end method

.method public getFirstVisibltItem()I
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 693
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 694
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 695
    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getLastVisibltItem()I
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 706
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 707
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 708
    :cond_0
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_1
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x1

    .line 1224
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1225
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 1227
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1228
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 1222
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1242
    .local v1, "measuredWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1243
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1246
    .local v0, "measuredHeight":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/widget/FilmstripView;->setMeasuredDimension(II)V

    .line 1235
    return-void

    .line 1241
    .end local v0    # "measuredHeight":I
    .end local v1    # "measuredWidth":I
    :cond_0
    const/16 v1, 0x7fff

    .restart local v1    # "measuredWidth":I
    goto :goto_0

    .line 1245
    :cond_1
    const/16 v0, 0x7fff

    .restart local v0    # "measuredHeight":I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1258
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1261
    .local v0, "centerPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    .line 1262
    iput p2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    .line 1265
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1252
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x271a

    .line 1402
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1410
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1400
    return-void

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1405
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1406
    :cond_3
    return-void
.end method

.method public setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/oneplus/widget/FilmstripView$Adapter;

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eq v0, p1, :cond_1

    .line 1607
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->detach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1609
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1610
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1611
    if-eqz p1, :cond_1

    .line 1613
    invoke-virtual {p1, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->attach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1614
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 1603
    :cond_1
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "smoothly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1627
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1628
    if-eqz p2, :cond_1

    .line 1629
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1633
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_2

    .line 1635
    invoke-direct {p0, v0, v4}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float v1, v2, v3

    .line 1636
    .local v1, "offset":F
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1637
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v2, :cond_0

    .line 1639
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1640
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v2, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v2, :cond_0

    .line 1642
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v4, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1643
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 1648
    .end local v1    # "offset":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto :goto_0
.end method

.method public setItemMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 1659
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 1660
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    .line 1657
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1666
    return-void
.end method

.method public setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 1676
    return-void
.end method

.method public setScrollMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1693
    packed-switch p1, :pswitch_data_0

    .line 1709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown scroll mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1697
    :pswitch_0
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1691
    :cond_0
    :goto_0
    return-void

    .line 1701
    :pswitch_1
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1702
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1703
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1704
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1705
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    goto :goto_0

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
