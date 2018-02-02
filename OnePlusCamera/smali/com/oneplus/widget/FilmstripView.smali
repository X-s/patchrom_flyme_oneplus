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

.field private static final INTERVAL_UPDATE_ITEMS_LAYOUT:J = 0xfL

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
    .line 423
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 107
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 424
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 425
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 107
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 437
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 438
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 434
    return-void
.end method

.method private calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .param p2, "calculateTarget"    # Z

    .prologue
    .line 482
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

    .line 489
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 490
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 492
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 493
    .local v1, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 494
    move-object v0, v1

    goto :goto_0

    .line 496
    .end local v1    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 497
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 498
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 499
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 487
    return-void
.end method

.method private fastLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 547
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 548
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 550
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 551
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 545
    :cond_0
    return-void
.end method

.method private findFirstVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    return-object v0
.end method

.method private findItemInfo(FF)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    .line 581
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 583
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 584
    .local v0, "halfMargin":F
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 585
    .local v1, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v1, :cond_1

    .line 587
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

    .line 588
    return-object v1

    .line 589
    :cond_0
    iget-object v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 592
    .end local v0    # "halfMargin":F
    .end local v1    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    return-object v4
.end method

.method private findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 566
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

    .line 570
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 571
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_2

    .line 573
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    .line 574
    :cond_0
    return-object v0

    .line 575
    :cond_1
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 577
    :cond_2
    return-object v2
.end method

.method private findLastVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    return-object v0
.end method

.method private findNextNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 2
    .param p1, "current"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 606
    if-eqz p1, :cond_1

    .line 608
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 609
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 610
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 611
    :cond_0
    return-object v0

    .line 613
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    return-object v1
.end method

.method private findPreviousNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 2
    .param p1, "current"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 636
    if-eqz p1, :cond_1

    .line 638
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 639
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 640
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 641
    :cond_0
    return-object v0

    .line 643
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    return-object v1
.end method

.method private fly(FJ)V
    .locals 12
    .param p1, "velocity"    # F
    .param p2, "lastTime"    # J

    .prologue
    .line 446
    iget-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v6, :cond_0

    .line 447
    return-void

    .line 450
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 451
    .local v0, "currentTime":J
    sub-long v6, v0, p2

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v2, v6, v7

    .line 452
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

    .line 453
    .local v4, "offset":I
    int-to-float v6, v4

    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 460
    :cond_1
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_4

    .line 461
    const/4 v6, 0x0

    const/high16 v7, -0x3a060000    # -8000.0f

    mul-float/2addr v7, v2

    add-float/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 466
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v5

    .line 467
    .local v5, "position":I
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v3

    .line 468
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

    .line 470
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 471
    if-ltz v5, :cond_3

    .line 472
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 443
    :cond_3
    :goto_2
    return-void

    .line 463
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

    .line 467
    .restart local v5    # "position":I
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "itemCount":I
    goto :goto_1

    .line 468
    :cond_6
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_7

    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_2

    .line 475
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

    .line 666
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v6, v6

    div-float v1, v6, v8

    .line 667
    .local v1, "centerX":F
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v4, v6

    .line 668
    .local v4, "minDiffX":F
    const/4 v0, 0x0

    .line 669
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 670
    .end local v0    # "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v3, :cond_2

    .line 672
    iget v6, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v7, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v8

    add-float v5, v6, v7

    .line 673
    .local v5, "x":F
    sub-float v6, v1, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 674
    .local v2, "diffX":F
    if-eqz v0, :cond_0

    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    .line 676
    :cond_0
    move-object v0, v3

    .line 677
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    move v4, v2

    .line 679
    .end local v0    # "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 681
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

    .line 714
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 712
    :goto_0
    return-void

    .line 717
    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->fastLayout()V

    goto :goto_0

    .line 722
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 723
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

    .line 728
    .end local v0    # "params":[Ljava/lang/Object;
    :sswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v3, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    .line 733
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v1, :cond_1

    .line 734
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 736
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    goto :goto_0

    .line 738
    :cond_2
    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    goto :goto_0

    .line 714
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

    .line 755
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 756
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_0

    .line 758
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 759
    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 760
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    .line 761
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 768
    :goto_0
    iput p1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 769
    return-object v0

    .line 765
    :cond_0
    new-instance v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {v0, p0, v1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;-><init>(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 766
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
    .line 1096
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 1094
    return-void
.end method

.method private onGestureDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1104
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1107
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(FF)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1109
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 1110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 1101
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

    .line 1118
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v2, :cond_0

    .line 1119
    return-void

    .line 1122
    :cond_0
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    packed-switch v2, :pswitch_data_0

    .line 1115
    :cond_1
    :goto_0
    return-void

    .line 1126
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 1127
    .local v0, "itemCount":I
    :cond_2
    if-lez v0, :cond_1

    .line 1129
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    if-ltz v2, :cond_3

    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 1130
    .local v1, "position":I
    :goto_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1

    .line 1132
    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    const/4 v2, -0x1

    :goto_2
    add-int/2addr v1, v2

    .line 1133
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 1134
    invoke-direct {p0, v1, v3}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    .line 1129
    .end local v1    # "position":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    .restart local v1    # "position":I
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1132
    goto :goto_2

    .line 1141
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_1

    .line 1143
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v2, :cond_5

    .line 1144
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v2, :cond_5

    .line 1145
    cmpl-float v2, p3, v5

    if-lez v2, :cond_5

    .line 1146
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v2, v3, :cond_1

    .line 1150
    :cond_5
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v2, :cond_6

    .line 1151
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 1152
    cmpg-float v2, p3, v5

    if-gez v2, :cond_6

    .line 1153
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v2, v3, :cond_1

    .line 1157
    :cond_6
    invoke-direct {p0, p3}, Lcom/oneplus/widget/FilmstripView;->startFly(F)V

    goto :goto_0

    .line 1122
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

    .line 1168
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v0, :cond_0

    .line 1169
    return-void

    .line 1172
    :cond_0
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1173
    return-void

    .line 1176
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1178
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1179
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 1183
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1184
    return-void

    .line 1181
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    goto :goto_0

    .line 1187
    :cond_4
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1188
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 1190
    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1191
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v0, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v0, :cond_6

    .line 1197
    :cond_5
    :goto_1
    neg-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1165
    return-void

    .line 1193
    :cond_6
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v2, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1194
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    goto :goto_1
.end method

.method private onGestureUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1205
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1206
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1207
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1210
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1213
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1214
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0
.end method

.method private onItemAdded(II)V
    .locals 16
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v13, :cond_0

    .line 786
    return-void

    .line 787
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v13}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v4

    .line 788
    .local v4, "count":I
    if-ltz p1, :cond_1

    move/from16 v0, p1

    if-lt v0, v4, :cond_2

    .line 789
    :cond_1
    return-void

    .line 788
    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_1

    .line 796
    const/4 v5, 0x0

    .line 797
    .local v5, "firstItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v7, 0x0

    .line 798
    .local v7, "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 799
    .local v6, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    sub-int v13, p2, p1

    add-int/lit8 v10, v13, 0x1

    .line 800
    .end local v5    # "firstItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .local v10, "positionShift":I
    :goto_0
    if-eqz v6, :cond_5

    .line 802
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p1

    if-lt v13, v0, :cond_3

    .line 803
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/2addr v13, v10

    iput v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 804
    :cond_3
    if-nez v5, :cond_4

    .line 805
    move-object v5, v6

    .line 806
    :cond_4
    move-object v7, v6

    .line 807
    .local v7, "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 811
    .end local v7    # "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_5
    const/4 v3, 0x0

    .line 812
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v2, 0x1

    .line 813
    .local v2, "addAfterAnchor":Z
    if-eqz v5, :cond_8

    iget v13, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p2

    if-le v13, v0, :cond_8

    .line 815
    move-object v3, v5

    .line 816
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v2, 0x0

    .line 839
    .end local v3    # "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_6
    :goto_1
    if-nez v3, :cond_c

    .line 841
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 842
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 843
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

    .line 844
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 845
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 846
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 847
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 848
    :cond_7
    return-void

    .line 818
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_8
    if-eqz v7, :cond_9

    iget v13, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p1

    if-ge v13, v0, :cond_9

    .line 819
    move-object v3, v7

    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    goto :goto_1

    .line 820
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_9
    if-eqz v5, :cond_6

    .line 822
    iget-object v6, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 823
    :goto_2
    if-eqz v6, :cond_6

    .line 825
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v14, p1, -0x1

    if-ne v13, v14, :cond_a

    .line 827
    move-object v3, v6

    .line 828
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    goto :goto_1

    .line 830
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_a
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v14, p2, 0x1

    if-ne v13, v14, :cond_b

    .line 832
    move-object v3, v6

    .line 833
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v2, 0x0

    .line 834
    goto :goto_1

    .line 836
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 852
    .end local v3    # "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
    if-eqz v2, :cond_e

    .line 854
    move-object v11, v3

    .line 855
    .local v11, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v13, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v14, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v14, v14

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v14, v14

    add-float v12, v13, v14

    .line 856
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

    .line 858
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 859
    invoke-virtual {v6, v11}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 860
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 861
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

    .line 862
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v13, v11, :cond_d

    .line 863
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 864
    :cond_d
    move-object v11, v6

    .line 865
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    add-float/2addr v12, v13

    .line 856
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 870
    .end local v9    # "position":I
    .end local v11    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v12    # "right":F
    :cond_e
    move-object v8, v3

    .line 871
    .local v8, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v13, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v14, v14

    sub-float v12, v13, v14

    .line 872
    .restart local v12    # "right":F
    move/from16 v9, p2

    .restart local v9    # "position":I
    :goto_4
    move/from16 v0, p1

    if-lt v9, v0, :cond_10

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_10

    .line 874
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 875
    invoke-virtual {v6, v8}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 876
    iget-object v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 877
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

    .line 878
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v13, v8, :cond_f

    .line 879
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 880
    :cond_f
    move-object v8, v6

    .line 881
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    sub-float/2addr v12, v13

    .line 872
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 884
    .end local v8    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_11

    .line 885
    iget v13, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 782
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

    .line 893
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v8, :cond_0

    .line 894
    return-void

    .line 895
    :cond_0
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 896
    .local v1, "count":I
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    .line 897
    :cond_1
    return-void

    .line 896
    :cond_2
    if-lt p2, p1, :cond_1

    .line 903
    if-nez v1, :cond_3

    .line 905
    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 906
    return-void

    .line 910
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->findFirstVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v3

    .line 911
    .local v3, "firstItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->findLastVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 912
    .local v6, "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v0, -0x1

    .line 913
    .local v0, "anchorPosition":I
    if-eqz v3, :cond_7

    iget v8, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-le v8, p2, :cond_7

    .line 914
    iget v0, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 935
    :cond_4
    :goto_0
    if-gez v0, :cond_5

    .line 937
    add-int/lit8 v8, v1, -0x1

    if-ge p2, v8, :cond_b

    .line 938
    add-int/lit8 v0, p2, 0x1

    .line 944
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 945
    .local v5, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    sub-int v8, p2, p1

    add-int/lit8 v7, v8, 0x1

    .line 946
    .local v7, "positionShift":I
    :goto_2
    if-eqz v5, :cond_f

    .line 948
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-le v8, p2, :cond_c

    .line 949
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    sub-int/2addr v8, v7

    iput v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 963
    :cond_6
    :goto_3
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 915
    .end local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "positionShift":I
    :cond_7
    if-eqz v6, :cond_8

    iget v8, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ge v8, p1, :cond_8

    .line 916
    iget v0, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_0

    .line 917
    :cond_8
    if-eqz v3, :cond_4

    .line 919
    iget-object v5, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 920
    .restart local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_4
    if-eqz v5, :cond_4

    .line 922
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, p1, -0x1

    if-ne v8, v9, :cond_9

    .line 924
    iget v0, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_0

    .line 927
    :cond_9
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, p2, 0x1

    if-ne v8, v9, :cond_a

    .line 929
    iget v0, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_0

    .line 932
    :cond_a
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_4

    .line 939
    .end local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    if-lez p1, :cond_5

    .line 940
    add-int/lit8 v0, p1, -0x1

    goto :goto_1

    .line 950
    .restart local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v7    # "positionShift":I
    :cond_c
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-lt v8, p1, :cond_6

    .line 952
    iput-boolean v11, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    .line 953
    move-object v2, v5

    .line 954
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

    .line 967
    .end local v2    # "finalItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_f
    const/4 v4, 0x0

    .line 968
    .local v4, "hasNormalItems":Z
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v8, :cond_10

    .line 970
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 971
    :goto_6
    if-eqz v5, :cond_10

    .line 973
    iget-boolean v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v8, :cond_12

    .line 975
    const/4 v4, 0x1

    .line 981
    :cond_10
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v8, :cond_13

    if-eqz v4, :cond_13

    .line 890
    :cond_11
    :goto_7
    return-void

    .line 978
    :cond_12
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_6

    .line 983
    :cond_13
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v5

    .line 984
    if-nez v5, :cond_14

    .line 985
    invoke-direct {p0, v11}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    goto :goto_7

    .line 986
    :cond_14
    iget-boolean v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v8, :cond_1a

    .line 988
    if-ge p1, v1, :cond_17

    .line 992
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v8, :cond_16

    .line 997
    :cond_15
    :goto_8
    invoke-direct {p0, p1, v11}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_7

    .line 994
    :cond_16
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v11, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 995
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    goto :goto_8

    .line 999
    :cond_17
    if-lez p1, :cond_11

    .line 1003
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v8, :cond_19

    .line 1008
    :cond_18
    :goto_9
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0, v8, v11}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_7

    .line 1005
    :cond_19
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v11, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1006
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    goto :goto_9

    .line 1016
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

    .line 1026
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v1, :cond_0

    .line 1027
    return-void

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 1029
    .local v0, "itemCount":I
    if-gtz v0, :cond_1

    .line 1031
    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1032
    return-void

    .line 1035
    :cond_1
    sget-object v1, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onItemRemovingAnimationCompleted() - Item : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    neg-int v1, v1

    iput v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1039
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne p1, v1, :cond_2

    .line 1041
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findPreviousNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1042
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v1, :cond_2

    .line 1043
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findNextNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1045
    :cond_2
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1023
    return-void
.end method

.method private onItemSizeChanged(I)V
    .locals 8
    .param p1, "fixedPosition"    # I

    .prologue
    .line 1052
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1053
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_8

    .line 1056
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1057
    .local v3, "oldTargetWidth":I
    iget-boolean v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_0

    .line 1058
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1059
    :cond_0
    iget v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1060
    .local v1, "diff":I
    if-eqz v1, :cond_1

    .line 1064
    :cond_1
    iget-object v4, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1065
    .local v4, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v4, :cond_4

    .line 1067
    iget v3, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1068
    iget-boolean v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_2

    .line 1069
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1070
    :cond_2
    iget v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1071
    if-eqz v1, :cond_3

    .line 1073
    :cond_3
    iget-object v4, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 1075
    :cond_4
    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1076
    .local v2, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    if-eqz v2, :cond_7

    .line 1078
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1079
    iget-boolean v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_5

    .line 1080
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1081
    :cond_5
    iget v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1082
    if-eqz v1, :cond_6

    .line 1084
    :cond_6
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_1

    .line 1088
    :cond_7
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 1050
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
    .line 1273
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1274
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1275
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1276
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1277
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->prepareItemView(ILandroid/view/ViewGroup;)V

    .line 1278
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1279
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1280
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 1283
    :goto_0
    return-object v0

    .line 1282
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

    .line 1296
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 1297
    .local v1, "itemCount":I
    :goto_0
    if-gez p1, :cond_0

    .line 1298
    const/4 p1, 0x0

    .line 1299
    :cond_0
    if-lt p1, v1, :cond_1

    .line 1300
    add-int/lit8 p1, v1, -0x1

    .line 1303
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1306
    if-lez v1, :cond_2

    if-gez p1, :cond_4

    .line 1308
    :cond_2
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1309
    return-void

    .line 1296
    .end local v1    # "itemCount":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "itemCount":I
    goto :goto_0

    .line 1313
    :cond_4
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1314
    .local v0, "centerItem":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0, v8}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1315
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1316
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1319
    add-int/lit8 v4, p1, -0x1

    .line 1320
    .local v4, "position":I
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1322
    .local v3, "left":F
    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    if-ltz v4, :cond_5

    .line 1324
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1325
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v6, v6

    sub-float v6, v3, v6

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1326
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1327
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1328
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1329
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 1331
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_5
    add-int/lit8 v4, p1, 0x1

    .line 1332
    iget v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v7, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 1333
    .local v5, "right":F
    :goto_2
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_6

    if-ge v4, v1, :cond_6

    .line 1335
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1336
    .restart local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v6, v6

    add-float/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1337
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v6}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1338
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1339
    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v7, v7

    add-float v5, v6, v7

    .line 1340
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1344
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_6
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1345
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v6, :cond_7

    .line 1347
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v6, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1348
    iget-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v6, v6, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v6, :cond_7

    .line 1350
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v8, v6, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1351
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    .line 1293
    :cond_7
    return-void
.end method

.method private refreshItems(Z)V
    .locals 1
    .param p1, "keepCurrentItem"    # Z

    .prologue
    .line 1290
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1291
    .local v0, "centerPosition":I
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1288
    return-void
.end method

.method private releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 3
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 1362
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1363
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 1364
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v2, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    .line 1369
    :goto_0
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1370
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->releaseItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1358
    return-void

    .line 1367
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
    .line 1377
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1378
    invoke-virtual {p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 1379
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {p1, v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1380
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1375
    return-void
.end method

.method private reportCurrentPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1387
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    if-eq v1, p1, :cond_0

    .line 1389
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 1390
    .local v0, "prevPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 1391
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v1, v0, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onCurrentItemChanged(II)V

    .line 1385
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

    .line 1417
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v2

    .line 1418
    .local v2, "itemCount":I
    :goto_0
    if-gtz v2, :cond_1

    .line 1419
    return v11

    .end local v2    # "itemCount":I
    :cond_0
    move v2, v7

    .line 1417
    goto :goto_0

    .line 1420
    .restart local v2    # "itemCount":I
    :cond_1
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v8, :cond_2

    .line 1421
    return v11

    .line 1424
    :cond_2
    const/4 v1, 0x0

    .line 1425
    .local v1, "isFirstOverScroll":Z
    const/4 v5, 0x0

    .line 1426
    .local v5, "overScrollAtFirstItem":Z
    cmpl-float v8, p1, v11

    if-lez v8, :cond_7

    .line 1428
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v8, :cond_4

    .line 1467
    :cond_3
    :goto_1
    cmpl-float v7, p1, v11

    if-eqz v7, :cond_b

    .line 1469
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1470
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_2
    if-eqz v3, :cond_a

    .line 1472
    invoke-virtual {v3, p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(F)V

    .line 1473
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 1430
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_4
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v4

    .line 1431
    .local v4, "leftBound":I
    int-to-float v8, v4

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    add-float/2addr v9, p1

    sub-float v0, v8, v9

    .line 1432
    .local v0, "diff":F
    cmpg-float v8, v0, v11

    if-gez v8, :cond_6

    .line 1434
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_5

    .line 1436
    iput-boolean v12, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1437
    const/4 v1, 0x1

    .line 1438
    const/4 v5, 0x1

    .line 1440
    :cond_5
    add-float/2addr p1, v0

    goto :goto_1

    .line 1443
    :cond_6
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_1

    .line 1448
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

    .line 1450
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v6, v8, v9

    .line 1451
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

    .line 1452
    .restart local v0    # "diff":F
    cmpl-float v8, v0, v11

    if-lez v8, :cond_9

    .line 1454
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_8

    .line 1456
    iput-boolean v12, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1457
    const/4 v1, 0x1

    .line 1459
    :cond_8
    add-float/2addr p1, v0

    goto :goto_1

    .line 1462
    :cond_9
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_1

    .line 1475
    .end local v0    # "diff":F
    .end local v6    # "rightBound":I
    .restart local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_a
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v7, v12}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1479
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    if-eqz v1, :cond_c

    .line 1481
    sget-object v7, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "scrollBy() - Over-scroll"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_c

    .line 1483
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, v5}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onOverScroll(Z)V

    .line 1487
    :cond_c
    return p1
.end method

.method private scrollToItem(IZ)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "restart"    # Z

    .prologue
    .line 1495
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2712

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1498
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1501
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v9, :cond_0

    .line 1502
    return-void

    .line 1505
    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v8

    .line 1509
    .local v8, "targetItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v8, :cond_2

    .line 1511
    iput-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1512
    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v9

    int-to-float v9, v9

    iget v10, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float v7, v9, v10

    .line 1521
    .local v7, "scrollOffset":F
    :goto_0
    if-eqz p2, :cond_3

    .line 1523
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollToItemStartTime:J

    .line 1524
    const-wide/16 v2, 0x0

    .line 1530
    .local v2, "duration":J
    :goto_1
    if-eqz v8, :cond_5

    .line 1532
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    const-wide/16 v10, 0x258

    cmp-long v9, v2, v10

    if-gez v9, :cond_4

    .line 1545
    const/high16 v5, 0x40d00000    # 6.5f

    .line 1547
    .local v5, "offsetBase":F
    div-float v1, v7, v5

    .line 1548
    .local v1, "offset":F
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1549
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2712

    const/4 v12, 0x0

    invoke-static {v10, v11, p1, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0xf

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1492
    .end local v1    # "offset":F
    .end local v5    # "offsetBase":F
    :cond_1
    :goto_2
    return-void

    .line 1516
    .end local v2    # "duration":J
    .end local v7    # "scrollOffset":F
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "scrollOffset":F
    goto :goto_0

    .line 1527
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollToItemStartTime:J

    sub-long v2, v10, v12

    .restart local v2    # "duration":J
    goto :goto_1

    .line 1553
    :cond_4
    invoke-direct {p0, v7}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1554
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v9, :cond_1

    .line 1556
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v9, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1557
    iget-boolean v9, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v9, v9, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v9, :cond_1

    .line 1559
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1560
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_2

    .line 1567
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1568
    .local v0, "currentItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_a

    const-wide/16 v10, 0x258

    cmp-long v9, v2, v10

    if-gez v9, :cond_a

    .line 1570
    iget v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    sub-int v6, p1, v9

    .line 1571
    .local v6, "positionDiff":I
    iget-boolean v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_6

    .line 1572
    iget v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-gt v9, p1, :cond_7

    const/4 v9, 0x1

    :goto_3
    add-int/2addr v6, v9

    .line 1573
    :cond_6
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_8

    .line 1575
    iget v9, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    div-int/lit8 v10, v6, 0x2

    add-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1576
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2712

    const/4 v12, 0x0

    invoke-static {v10, v11, p1, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0xf

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1572
    :cond_7
    const/4 v9, -0x1

    goto :goto_3

    .line 1580
    :cond_8
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v10, v9, 0x2

    if-ltz v6, :cond_9

    const/4 v9, -0x1

    :goto_4
    mul-int v4, v10, v9

    .line 1581
    .local v4, "offset":I
    int-to-float v9, v4

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1582
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2712

    const/4 v12, 0x0

    invoke-static {v10, v11, p1, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0xf

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 1580
    .end local v4    # "offset":I
    :cond_9
    const/4 v9, 0x1

    goto :goto_4

    .line 1586
    .end local v6    # "positionDiff":I
    :cond_a
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto/16 :goto_2
.end method

.method private setupHandler()V
    .locals 1

    .prologue
    .line 1709
    new-instance v0, Lcom/oneplus/widget/FilmstripView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$3;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    .line 1707
    return-void
.end method

.method private startFly(F)V
    .locals 7
    .param p1, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    .line 1723
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1724
    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1725
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

    .line 1721
    return-void
.end method

.method private stopAutoScroll()V
    .locals 2

    .prologue
    .line 1732
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1733
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1730
    return-void
.end method

.method private stopFly()V
    .locals 2

    .prologue
    .line 1740
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-eqz v0, :cond_0

    .line 1742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1743
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1738
    :cond_0
    return-void
.end method

.method private updateItemsLayout(IZ)V
    .locals 2
    .param p1, "anchorPosition"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1757
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1758
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1765
    .local v0, "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1753
    return-void

    .line 1761
    .end local v0    # "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1762
    .restart local v0    # "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-nez v0, :cond_1

    .line 1763
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V
    .locals 14
    .param p1, "anchorItemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .param p2, "animation"    # Z

    .prologue
    .line 1770
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 1771
    .local v1, "itemCount":I
    :goto_0
    if-gtz v1, :cond_1

    .line 1772
    return-void

    .line 1770
    .end local v1    # "itemCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1775
    .restart local v1    # "itemCount":I
    :cond_1
    if-nez p1, :cond_2

    .line 1776
    iget-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1779
    :cond_2
    const/4 v4, 0x0

    .line 1780
    .local v4, "needNextUpdate":Z
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1781
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    if-eqz v2, :cond_8

    .line 1783
    iget-object v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1784
    .local v5, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    if-eq v9, v10, :cond_4

    .line 1787
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int v0, v9, v10

    .line 1788
    .local v0, "diff":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_5

    if-eqz p2, :cond_5

    .line 1802
    div-int/lit8 v0, v0, 0x3

    .line 1803
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v9, v0

    iput v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1804
    const/4 v4, 0x1

    .line 1806
    :cond_3
    :goto_2
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1807
    if-ne v2, p1, :cond_4

    .line 1808
    div-int/lit8 v9, v0, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(F)V

    .line 1810
    .end local v0    # "diff":I
    :cond_4
    move-object v2, v5

    goto :goto_1

    .line 1790
    .restart local v0    # "diff":I
    :cond_5
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1791
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    neg-int v10, v10

    if-gt v9, v10, :cond_3

    iget-boolean v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_3

    .line 1793
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v2, :cond_6

    .line 1794
    iget-object v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1795
    :cond_6
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v2, :cond_7

    .line 1796
    iget-object v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1797
    :cond_7
    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    goto :goto_2

    .line 1814
    .end local v0    # "diff":I
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_8
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v9, :cond_a

    .line 1816
    :cond_9
    sget-object v9, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateItemsLayout() - No active items"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    return-void

    .line 1821
    :cond_a
    if-eqz p1, :cond_c

    .line 1823
    iget-object v7, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1824
    .local v7, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v3, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1825
    .local v3, "left":F
    :goto_3
    if-eqz v7, :cond_b

    .line 1827
    iget v9, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v3, v9

    .line 1828
    invoke-virtual {v7, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1829
    iget-object v7, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_3

    .line 1831
    :cond_b
    iget-object v5, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1832
    .restart local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v9, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    add-float v3, v9, v10

    .line 1833
    :goto_4
    if-eqz v5, :cond_c

    .line 1835
    invoke-virtual {v5, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1836
    iget v9, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v3, v9

    .line 1837
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_4

    .line 1842
    .end local v3    # "left":F
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v6, v9, -0x1

    .line 1843
    .local v6, "position":I
    :goto_5
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    if-ltz v6, :cond_d

    .line 1845
    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1846
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1847
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1848
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1849
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 1851
    :cond_d
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v6, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 1852
    :goto_6
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 1853
    .local v8, "right":F
    :goto_7
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_f

    if-ge v6, v1, :cond_f

    .line 1855
    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1856
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

    .line 1857
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1858
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1859
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 1860
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1851
    .end local v8    # "right":F
    :cond_e
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v6, v9, 0x1

    goto :goto_6

    .line 1864
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

    .line 1866
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v7, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1867
    .restart local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1868
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_10

    .line 1869
    iput-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1870
    :cond_10
    iput-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_8

    .line 1872
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

    .line 1874
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v5, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1875
    .restart local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1876
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_12

    .line 1877
    iput-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1878
    :cond_12
    iput-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_9

    .line 1882
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_13
    if-eqz v4, :cond_14

    .line 1884
    if-nez p1, :cond_15

    .line 1886
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1887
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    const-wide/16 v12, 0xf

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1897
    :cond_14
    :goto_a
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1767
    return-void

    .line 1891
    :cond_15
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1892
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2710

    invoke-static {v10, v11, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0xf

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a
.end method

.method private updateItemsLayout(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 1751
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 1749
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 509
    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 512
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-nez v1, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 515
    iput-boolean v3, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 518
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .line 519
    .local v0, "isFirstScrolling":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 527
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v1, :cond_5

    .line 529
    if-eqz v0, :cond_2

    .line 531
    sget-object v1, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchTouchEvent() - Dispatch ACTION_CANCEL to child"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 533
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 538
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 540
    :cond_3
    return v3

    .line 518
    .end local v0    # "isFirstScrolling":Z
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "isFirstScrolling":Z
    goto :goto_0

    .line 524
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 537
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    .line 520
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

    .line 624
    if-nez p1, :cond_0

    .line 625
    return v1

    .line 626
    :cond_0
    instance-of v2, p1, Landroid/view/ViewParent;

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    .line 627
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    if-eqz v2, :cond_4

    .line 629
    :cond_1
    instance-of v2, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->itemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :cond_2
    return v1

    .line 626
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 628
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

    .line 653
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 654
    .local v0, "itemCount":I
    :cond_0
    if-gtz v0, :cond_1

    .line 655
    return v3

    .line 656
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    .line 657
    .local v1, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v1, :cond_2

    .line 658
    iget v2, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 659
    :cond_2
    return v3
.end method

.method public getFirstVisibltItem()I
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 692
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 693
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 694
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
    .line 704
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 705
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    .line 706
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 707
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
    .line 748
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 777
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

    .line 1223
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1224
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 1226
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1227
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 1221
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1237
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1241
    .local v1, "measuredWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1242
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1245
    .local v0, "measuredHeight":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/widget/FilmstripView;->setMeasuredDimension(II)V

    .line 1234
    return-void

    .line 1240
    .end local v0    # "measuredHeight":I
    .end local v1    # "measuredWidth":I
    :cond_0
    const/16 v1, 0x7fff

    .restart local v1    # "measuredWidth":I
    goto :goto_0

    .line 1244
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
    .line 1254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1257
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1260
    .local v0, "centerPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    .line 1261
    iput p2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    .line 1264
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1251
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x271a

    .line 1401
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1409
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1399
    return-void

    .line 1403
    :cond_2
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1404
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1405
    :cond_3
    return-void
.end method

.method public setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/oneplus/widget/FilmstripView$Adapter;

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eq v0, p1, :cond_1

    .line 1599
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1600
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->detach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1601
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1602
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1603
    if-eqz p1, :cond_1

    .line 1605
    invoke-virtual {p1, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->attach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1606
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 1595
    :cond_1
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "smoothly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1619
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1620
    if-eqz p2, :cond_1

    .line 1621
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1625
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_2

    .line 1627
    invoke-direct {p0, v0, v4}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float v1, v2, v3

    .line 1628
    .local v1, "offset":F
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1629
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v2, :cond_0

    .line 1631
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1632
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v2, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v2, :cond_0

    .line 1634
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v4, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1635
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 1640
    .end local v1    # "offset":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto :goto_0
.end method

.method public setItemMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 1651
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 1652
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    .line 1649
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1660
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1658
    return-void
.end method

.method public setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 1668
    return-void
.end method

.method public setScrollMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1685
    packed-switch p1, :pswitch_data_0

    .line 1701
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

    .line 1689
    :pswitch_0
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1683
    :cond_0
    :goto_0
    return-void

    .line 1693
    :pswitch_1
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1694
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1695
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1696
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1697
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    goto :goto_0

    .line 1685
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
