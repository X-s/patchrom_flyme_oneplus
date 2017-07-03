.class public Lcom/oneplus/widget/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    .line 52
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

    .line 426
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

    .line 439
    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .prologue
    .line 1159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .prologue
    .line 1109
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/widget/FilmstripView;I)V
    .locals 0

    .prologue
    .line 1044
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onItemSizeChanged(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->onDataSetChanged()V

    return-void
.end method

.method static synthetic access$5(Lcom/oneplus/widget/FilmstripView;II)V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/FilmstripView;->onItemAdded(II)V

    return-void
.end method

.method static synthetic access$6(Lcom/oneplus/widget/FilmstripView;II)V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0, p1, p2}, Lcom/oneplus/widget/FilmstripView;->onItemRemoved(II)V

    return-void
.end method

.method static synthetic access$7(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 0

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onItemRemovingAnimationCompleted(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    return-void
.end method

.method static synthetic access$8(Lcom/oneplus/widget/FilmstripView;Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 712
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->handleMessage(Landroid/os/Message;)V

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
    if-nez v0, :cond_0

    .line 496
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 497
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 498
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 499
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 500
    return-void

    .line 492
    :cond_0
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 493
    .local v1, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 494
    move-object v0, v1

    goto :goto_0
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
    if-nez v0, :cond_0

    .line 553
    return-void

    .line 550
    :cond_0
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 551
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0
.end method

.method private findFirstVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    return-object v0
.end method

.method private findItemInfo(FF)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 581
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

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
    if-nez v1, :cond_2

    .line 592
    .end local v0    # "halfMargin":F
    .end local v1    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    .line 587
    .restart local v0    # "halfMargin":F
    .restart local v1    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_2
    iget v2, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float/2addr v2, v0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    iget v2, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v3, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 589
    :cond_3
    iget-object v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0
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
    .locals 2
    .param p1, "position"    # I
    .param p2, "includeRemovingItem"    # Z

    .prologue
    .line 570
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 571
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 577
    const/4 v0, 0x0

    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    return-object v0

    .line 573
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ne v1, p1, :cond_2

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 575
    :cond_2
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0
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
    .line 606
    if-eqz p1, :cond_2

    .line 608
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 609
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v1, :cond_1

    .line 613
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    :goto_1
    return-object v0

    .line 610
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 613
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findPreviousNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 2
    .param p1, "current"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 636
    if-eqz p1, :cond_2

    .line 638
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 639
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v1, :cond_1

    .line 643
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    :goto_1
    return-object v0

    .line 640
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 643
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fly(FJ)V
    .locals 12
    .param p1, "velocity"    # F
    .param p2, "lastTime"    # J

    .prologue
    .line 446
    iget-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v6, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
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

    .line 460
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
    :goto_1
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
    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v6, v6, v7

    if-lez v6, :cond_3

    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_2

    if-lez v5, :cond_3

    :cond_2
    const/4 v6, 0x0

    cmpg-float v6, p1, v6

    if-gez v6, :cond_6

    add-int/lit8 v6, v3, -0x1

    if-lt v5, v6, :cond_6

    .line 470
    :cond_3
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 471
    if-ltz v5, :cond_0

    .line 472
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

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

    goto :goto_1

    .line 467
    .restart local v5    # "position":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 475
    .restart local v3    # "itemCount":I
    :cond_6
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v8, 0x2711

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
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
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-nez v3, :cond_0

    .line 681
    return-object v0

    .line 672
    :cond_0
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
    if-eqz v0, :cond_1

    cmpl-float v6, v4, v2

    if-lez v6, :cond_2

    .line 676
    :cond_1
    move-object v0, v3

    .line 677
    move v4, v2

    .line 679
    :cond_2
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0
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

    .line 742
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
    const/4 v1, 0x0

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
    .line 1090
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 1091
    return-void
.end method

.method private onGestureDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1101
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(FF)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1103
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 1104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 1105
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

    .line 1112
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v2, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1120
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 1121
    .local v0, "itemCount":I
    :goto_1
    if-lez v0, :cond_0

    .line 1123
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    if-ltz v2, :cond_3

    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 1124
    .local v1, "position":I
    :goto_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_0

    .line 1126
    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    const/4 v2, -0x1

    :goto_3
    add-int/2addr v1, v2

    .line 1127
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 1128
    invoke-direct {p0, v1, v3}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto :goto_0

    .line 1120
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1123
    .restart local v0    # "itemCount":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    goto :goto_2

    .restart local v1    # "position":I
    :cond_4
    move v2, v3

    .line 1126
    goto :goto_3

    .line 1135
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_0

    .line 1137
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v2, :cond_5

    .line 1138
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v2, :cond_5

    .line 1139
    cmpl-float v2, p3, v5

    if-lez v2, :cond_5

    .line 1140
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v2, v3, :cond_0

    .line 1144
    :cond_5
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v2, :cond_6

    .line 1145
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v3

    if-lt v2, v3, :cond_6

    .line 1146
    cmpg-float v2, p3, v5

    if-gez v2, :cond_6

    .line 1147
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v2, v3, :cond_0

    .line 1151
    :cond_6
    invoke-direct {p0, p3}, Lcom/oneplus/widget/FilmstripView;->startFly(F)V

    goto :goto_0

    .line 1116
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

    .line 1162
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1172
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 1173
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 1177
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 1182
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 1184
    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1185
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v0, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-nez v0, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v2, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1188
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    .line 1191
    :cond_3
    neg-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    goto :goto_0

    .line 1175
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private onGestureUp(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 1199
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1200
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1204
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1207
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1208
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 1210
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private onItemAdded(II)V
    .locals 16
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v13, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v13}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v4

    .line 788
    .local v4, "count":I
    if-ltz p1, :cond_0

    move/from16 v0, p1

    if-ge v0, v4, :cond_0

    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

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
    .local v10, "positionShift":I
    :goto_1
    if-nez v6, :cond_3

    .line 811
    const/4 v3, 0x0

    .line 812
    .local v3, "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v2, 0x1

    .line 813
    .local v2, "addAfterAnchor":Z
    if-eqz v5, :cond_6

    iget v13, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p2

    if-le v13, v0, :cond_6

    .line 815
    move-object v3, v5

    .line 816
    const/4 v2, 0x0

    .line 839
    :cond_2
    :goto_2
    if-nez v3, :cond_a

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

    if-nez v13, :cond_0

    .line 847
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    goto :goto_0

    .line 802
    .end local v2    # "addAfterAnchor":Z
    .end local v3    # "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_3
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p1

    if-lt v13, v0, :cond_4

    .line 803
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/2addr v13, v10

    iput v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 804
    :cond_4
    if-nez v5, :cond_5

    .line 805
    move-object v5, v6

    .line 806
    :cond_5
    move-object v7, v6

    .line 807
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_1

    .line 818
    .restart local v2    # "addAfterAnchor":Z
    .restart local v3    # "anchorInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_6
    if-eqz v7, :cond_7

    iget v13, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    move/from16 v0, p1

    if-ge v13, v0, :cond_7

    .line 819
    move-object v3, v7

    goto :goto_2

    .line 820
    :cond_7
    if-eqz v5, :cond_2

    .line 822
    iget-object v6, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 823
    :goto_3
    if-eqz v6, :cond_2

    .line 825
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v14, p1, -0x1

    if-ne v13, v14, :cond_8

    .line 827
    move-object v3, v6

    .line 828
    goto :goto_2

    .line 830
    :cond_8
    iget v13, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v14, p2, 0x1

    if-ne v13, v14, :cond_9

    .line 832
    move-object v3, v6

    .line 833
    const/4 v2, 0x0

    .line 834
    goto :goto_2

    .line 836
    :cond_9
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_3

    .line 852
    :cond_a
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
    :goto_4
    move/from16 v0, p2

    if-gt v9, v0, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v13, v13

    cmpg-float v13, v12, v13

    if-ltz v13, :cond_c

    .line 884
    .end local v11    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 885
    iget v13, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    goto/16 :goto_0

    .line 858
    .restart local v11    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
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

    goto :goto_4

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
    :goto_5
    move/from16 v0, p1

    if-lt v9, v0, :cond_b

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_b

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

    goto :goto_5
.end method

.method private onItemRemoved(II)V
    .locals 12
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    const/4 v11, 0x1

    .line 893
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v8, :cond_1

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 896
    .local v1, "count":I
    if-ltz p1, :cond_0

    if-gt p1, v1, :cond_0

    if-lt p2, p1, :cond_0

    .line 904
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->findFirstVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v3

    .line 905
    .local v3, "firstItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->findLastVisibleItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v6

    .line 906
    .local v6, "lastItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v0, -0x1

    .line 907
    .local v0, "anchorPosition":I
    if-eqz v3, :cond_6

    iget v8, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-le v8, p2, :cond_6

    .line 908
    iget v0, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 929
    :cond_2
    :goto_1
    if-gez v0, :cond_3

    .line 931
    add-int/lit8 v8, v1, -0x1

    if-ge p2, v8, :cond_a

    .line 932
    add-int/lit8 v0, p2, 0x1

    .line 938
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 939
    .local v5, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    sub-int v8, p2, p1

    add-int/lit8 v7, v8, 0x1

    .line 940
    .local v7, "positionShift":I
    :goto_3
    if-nez v5, :cond_b

    .line 961
    const/4 v4, 0x0

    .line 962
    .local v4, "hasNormalItems":Z
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v8, :cond_4

    .line 964
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 965
    :goto_4
    if-nez v5, :cond_10

    .line 975
    :cond_4
    :goto_5
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v8, :cond_5

    if-nez v4, :cond_0

    .line 977
    :cond_5
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v5

    .line 978
    if-nez v5, :cond_12

    .line 979
    invoke-direct {p0, v11}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    goto :goto_0

    .line 909
    .end local v4    # "hasNormalItems":Z
    .end local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "positionShift":I
    :cond_6
    if-eqz v6, :cond_7

    iget v8, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ge v8, p1, :cond_7

    .line 910
    iget v0, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_1

    .line 911
    :cond_7
    if-eqz v3, :cond_2

    .line 913
    iget-object v5, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 914
    .restart local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_6
    if-eqz v5, :cond_2

    .line 916
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, p1, -0x1

    if-ne v8, v9, :cond_8

    .line 918
    iget v0, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 919
    goto :goto_1

    .line 921
    :cond_8
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, p2, 0x1

    if-ne v8, v9, :cond_9

    .line 923
    iget v0, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 924
    goto :goto_1

    .line 926
    :cond_9
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_6

    .line 933
    .end local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_a
    if-lez p1, :cond_3

    .line 934
    add-int/lit8 v0, p1, -0x1

    goto :goto_2

    .line 942
    .restart local v5    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v7    # "positionShift":I
    :cond_b
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-le v8, p2, :cond_d

    .line 943
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    sub-int/2addr v8, v7

    iput v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 957
    :cond_c
    :goto_7
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_3

    .line 944
    :cond_d
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-lt v8, p1, :cond_c

    .line 946
    iput-boolean v11, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    .line 947
    move-object v2, v5

    .line 948
    .local v2, "finalItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    iget-object v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v8, :cond_e

    iget-object v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v8, :cond_f

    :cond_e
    const-wide/16 v8, 0x64

    :goto_8
    invoke-virtual {v10, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/oneplus/widget/FilmstripView$2;

    invoke-direct {v9, p0, v2}, Lcom/oneplus/widget/FilmstripView$2;-><init>(Lcom/oneplus/widget/FilmstripView;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    .line 955
    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_7

    .line 948
    :cond_f
    const-wide/16 v8, 0x12c

    goto :goto_8

    .line 967
    .end local v2    # "finalItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v4    # "hasNormalItems":Z
    :cond_10
    iget-boolean v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v8, :cond_11

    .line 969
    const/4 v4, 0x1

    .line 970
    goto :goto_5

    .line 972
    :cond_11
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_4

    .line 980
    :cond_12
    iget-boolean v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v8, :cond_16

    .line 982
    if-ge p1, v1, :cond_14

    .line 986
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-nez v8, :cond_13

    .line 988
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v11, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 989
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    .line 991
    :cond_13
    invoke-direct {p0, p1, v11}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto/16 :goto_0

    .line 993
    :cond_14
    if-lez p1, :cond_0

    .line 997
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v8, :cond_15

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-nez v8, :cond_15

    .line 999
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v11, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1000
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    .line 1002
    :cond_15
    add-int/lit8 v8, p1, -0x1

    invoke-direct {p0, v8, v11}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    goto/16 :goto_0

    .line 1010
    :cond_16
    iget v8, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    invoke-direct {p0, v8}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    goto/16 :goto_0
.end method

.method private onItemRemovingAnimationCompleted(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 3
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-nez v1, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 1023
    .local v0, "itemCount":I
    if-gtz v0, :cond_1

    .line 1025
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto :goto_0

    .line 1029
    :cond_1
    sget-object v1, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v2, "onItemRemovingAnimationCompleted() - Item : "

    invoke-static {v1, v2, p1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    neg-int v1, v1

    iput v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1033
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne p1, v1, :cond_2

    .line 1035
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findPreviousNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1036
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v1, :cond_2

    .line 1037
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findNextNormalItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1039
    :cond_2
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    goto :goto_0
.end method

.method private onItemSizeChanged(I)V
    .locals 8
    .param p1, "fixedPosition"    # I

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1047
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_1

    .line 1050
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1051
    .local v3, "oldTargetWidth":I
    iget-boolean v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_0

    .line 1052
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1053
    :cond_0
    iget v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1058
    .local v1, "diff":I
    iget-object v4, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1059
    .local v4, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-nez v4, :cond_2

    .line 1069
    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1070
    .local v2, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    if-nez v2, :cond_4

    .line 1082
    const/4 v5, 0x1

    invoke-direct {p0, p1, v5}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 1084
    .end local v1    # "diff":I
    .end local v2    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v3    # "oldTargetWidth":I
    .end local v4    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    return-void

    .line 1061
    .restart local v1    # "diff":I
    .restart local v3    # "oldTargetWidth":I
    .restart local v4    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_2
    iget v3, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1062
    iget-boolean v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_3

    .line 1063
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1064
    :cond_3
    iget v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1067
    iget-object v4, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 1072
    .restart local v2    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_4
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1073
    iget-boolean v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v5, :cond_5

    .line 1074
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1075
    :cond_5
    iget v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 1078
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_1
.end method

.method private prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1268
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 1269
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1270
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1271
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->prepareItemView(ILandroid/view/ViewGroup;)V

    .line 1272
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1273
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1274
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 1277
    :goto_0
    return-object v0

    .line 1276
    :cond_0
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {p0, v1}, Lcom/oneplus/widget/FilmstripView;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private refreshItems(I)V
    .locals 9
    .param p1, "centerPosition"    # I

    .prologue
    const/4 v6, 0x0

    .line 1290
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 1291
    .local v1, "itemCount":I
    :goto_0
    if-gez p1, :cond_0

    .line 1292
    const/4 p1, 0x0

    .line 1293
    :cond_0
    if-lt p1, v1, :cond_1

    .line 1294
    add-int/lit8 p1, v1, -0x1

    .line 1297
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1300
    if-lez v1, :cond_2

    if-gez p1, :cond_5

    .line 1302
    :cond_2
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1348
    :cond_3
    :goto_1
    return-void

    .end local v1    # "itemCount":I
    :cond_4
    move v1, v6

    .line 1290
    goto :goto_0

    .line 1307
    .restart local v1    # "itemCount":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1308
    .local v0, "centerItem":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0, v6}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1309
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1310
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1313
    add-int/lit8 v4, p1, -0x1

    .line 1314
    .local v4, "position":I
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1316
    .local v3, "left":F
    :goto_2
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_6

    if-gez v4, :cond_8

    .line 1325
    :cond_6
    add-int/lit8 v4, p1, 0x1

    .line 1326
    iget v7, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v8, v8

    add-float v5, v7, v8

    .line 1327
    .local v5, "right":F
    :goto_3
    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_7

    if-lt v4, v1, :cond_9

    .line 1338
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 1339
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_3

    .line 1341
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1342
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v7, v7, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v7, :cond_3

    .line 1344
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v6, v7, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1345
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_1

    .line 1318
    .end local v5    # "right":F
    :cond_8
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1319
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v7, v7

    sub-float v7, v3, v7

    iget v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1320
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1321
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1322
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1323
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1329
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v5    # "right":F
    :cond_9
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1330
    .restart local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v7, v7

    add-float/2addr v7, v5

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1331
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1332
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1333
    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v8, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    int-to-float v8, v8

    add-float v5, v7, v8

    .line 1334
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private refreshItems(Z)V
    .locals 1
    .param p1, "keepCurrentItem"    # Z

    .prologue
    .line 1284
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1285
    .local v0, "centerPosition":I
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1286
    return-void
.end method

.method private releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 3
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 1356
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1357
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->setAlpha(F)V

    .line 1358
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v2, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    .line 1363
    :goto_0
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    .line 1364
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->releaseItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1365
    return-void

    .line 1361
    :cond_0
    sget-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "releaseItem() - No adapter to release item "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 1371
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1372
    invoke-virtual {p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 1373
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {p1, v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1374
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1375
    return-void
.end method

.method private reportCurrentPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1381
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    if-eq v1, p1, :cond_0

    .line 1383
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 1384
    .local v0, "prevPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 1385
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v1, :cond_0

    .line 1386
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v1, v0, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onCurrentItemChanged(II)V

    .line 1388
    .end local v0    # "prevPosition":I
    :cond_0
    return-void
.end method

.method private scrollBy(F)F
    .locals 13
    .param p1, "offset"    # F

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1411
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v2

    .line 1412
    .local v2, "itemCount":I
    :goto_0
    if-gtz v2, :cond_2

    .line 1481
    :cond_0
    :goto_1
    return v7

    .end local v2    # "itemCount":I
    :cond_1
    move v2, v8

    .line 1411
    goto :goto_0

    .line 1414
    .restart local v2    # "itemCount":I
    :cond_2
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v9, :cond_0

    .line 1418
    const/4 v1, 0x0

    .line 1419
    .local v1, "isFirstOverScroll":Z
    const/4 v5, 0x0

    .line 1420
    .local v5, "overScrollAtFirstItem":Z
    cmpl-float v9, p1, v7

    if-lez v9, :cond_8

    .line 1422
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v9, :cond_4

    .line 1424
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9, v8}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v4

    .line 1425
    .local v4, "leftBound":I
    int-to-float v9, v4

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    add-float/2addr v10, p1

    sub-float v0, v9, v10

    .line 1426
    .local v0, "diff":F
    cmpg-float v9, v0, v7

    if-gez v9, :cond_7

    .line 1428
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v8, :cond_3

    .line 1430
    iput-boolean v12, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1431
    const/4 v1, 0x1

    .line 1432
    const/4 v5, 0x1

    .line 1434
    :cond_3
    add-float/2addr p1, v0

    .line 1461
    .end local v0    # "diff":F
    .end local v4    # "leftBound":I
    :cond_4
    :goto_2
    cmpl-float v7, p1, v7

    if-eqz v7, :cond_5

    .line 1463
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1464
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_3
    if-nez v3, :cond_b

    .line 1469
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v7, v12}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1473
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_5
    if-eqz v1, :cond_6

    .line 1475
    sget-object v7, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v8, "scrollBy() - Over-scroll"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_6

    .line 1477
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, v5}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onOverScroll(Z)V

    :cond_6
    move v7, p1

    .line 1481
    goto :goto_1

    .line 1437
    .restart local v0    # "diff":F
    .restart local v4    # "leftBound":I
    :cond_7
    iput-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_2

    .line 1442
    .end local v0    # "diff":F
    .end local v4    # "leftBound":I
    :cond_8
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v10, v2, -0x1

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-nez v9, :cond_4

    .line 1444
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9, v8}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v9

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v6, v9, v10

    .line 1445
    .local v6, "rightBound":I
    int-to-float v9, v6

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v11, v11, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    add-float/2addr v10, p1

    sub-float v0, v9, v10

    .line 1446
    .restart local v0    # "diff":F
    cmpl-float v9, v0, v7

    if-lez v9, :cond_a

    .line 1448
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v8, :cond_9

    .line 1450
    iput-boolean v12, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 1451
    const/4 v1, 0x1

    .line 1453
    :cond_9
    add-float/2addr p1, v0

    .line 1454
    goto :goto_2

    .line 1456
    :cond_a
    iput-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_2

    .line 1466
    .end local v0    # "diff":F
    .end local v6    # "rightBound":I
    .restart local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    invoke-virtual {v3, p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(F)V

    .line 1467
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_3
.end method

.method private scrollToItem(IZ)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "restart"    # Z

    .prologue
    .line 1489
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v9, 0x2712

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 1492
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1495
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v8, :cond_1

    .line 1582
    :cond_0
    :goto_0
    return-void

    .line 1499
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v7

    .line 1503
    .local v7, "targetItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v7, :cond_2

    .line 1505
    iput-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1506
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v8

    int-to-float v8, v8

    iget v9, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float v6, v8, v9

    .line 1515
    .local v6, "scrollOffset":F
    :goto_1
    if-eqz p2, :cond_3

    .line 1517
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollToItemStartTime:J

    .line 1518
    const-wide/16 v2, 0x0

    .line 1524
    .local v2, "duration":J
    :goto_2
    if-eqz v7, :cond_9

    .line 1526
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_8

    const-wide/16 v8, 0x258

    cmp-long v8, v2, v8

    if-gez v8, :cond_8

    .line 1528
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1530
    .local v4, "offsetBase":F
    const/high16 v8, 0x40a00000    # 5.0f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_4

    .line 1531
    const/high16 v4, 0x40400000    # 3.0f

    .line 1541
    :goto_3
    div-float v1, v6, v4

    .line 1542
    .local v1, "offset":F
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1543
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2712

    const/4 v11, 0x0

    invoke-static {v9, v10, p1, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xf

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1510
    .end local v1    # "offset":F
    .end local v2    # "duration":J
    .end local v4    # "offsetBase":F
    .end local v6    # "scrollOffset":F
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "scrollOffset":F
    goto :goto_1

    .line 1521
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollToItemStartTime:J

    sub-long v2, v8, v10

    .restart local v2    # "duration":J
    goto :goto_2

    .line 1532
    .restart local v4    # "offsetBase":F
    :cond_4
    float-to-double v8, v4

    const-wide/high16 v10, 0x400c000000000000L    # 3.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_5

    .line 1533
    const/high16 v4, 0x40800000    # 4.0f

    goto :goto_3

    .line 1534
    :cond_5
    float-to-double v8, v4

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_6

    .line 1535
    const/high16 v4, 0x40a00000    # 5.0f

    goto :goto_3

    .line 1536
    :cond_6
    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_7

    .line 1537
    const/high16 v4, 0x40c00000    # 6.0f

    goto :goto_3

    .line 1539
    :cond_7
    const/high16 v4, 0x40d00000    # 6.5f

    goto :goto_3

    .line 1547
    .end local v4    # "offsetBase":F
    :cond_8
    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1548
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v8, :cond_0

    .line 1550
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1551
    iget-boolean v8, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v8, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v8, :cond_0

    .line 1553
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1554
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto/16 :goto_0

    .line 1561
    :cond_9
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1562
    .local v0, "currentItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_e

    const-wide/16 v8, 0x258

    cmp-long v8, v2, v8

    if-gez v8, :cond_e

    .line 1564
    iget v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    sub-int v5, p1, v8

    .line 1565
    .local v5, "positionDiff":I
    iget-boolean v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v8, :cond_a

    .line 1566
    iget v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-gt v8, p1, :cond_b

    const/4 v8, 0x1

    :goto_4
    add-int/2addr v5, v8

    .line 1567
    :cond_a
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_c

    .line 1569
    iget v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    invoke-direct {p0, v8}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1570
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2712

    const/4 v11, 0x0

    invoke-static {v9, v10, p1, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xf

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1566
    :cond_b
    const/4 v8, -0x1

    goto :goto_4

    .line 1574
    :cond_c
    iget v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v9, v8, 0x2

    if-ltz v5, :cond_d

    const/4 v8, -0x1

    :goto_5
    mul-int v1, v9, v8

    .line 1575
    .local v1, "offset":I
    int-to-float v8, v1

    invoke-direct {p0, v8}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1576
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2712

    const/4 v11, 0x0

    invoke-static {v9, v10, p1, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xf

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1574
    .end local v1    # "offset":I
    :cond_d
    const/4 v8, 0x1

    goto :goto_5

    .line 1580
    .end local v5    # "positionDiff":I
    :cond_e
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto/16 :goto_0
.end method

.method private setupHandler()V
    .locals 1

    .prologue
    .line 1703
    new-instance v0, Lcom/oneplus/widget/FilmstripView$3;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$3;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    .line 1711
    return-void
.end method

.method private startFly(F)V
    .locals 7
    .param p1, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    .line 1717
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1718
    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1719
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2711

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1720
    return-void
.end method

.method private stopAutoScroll()V
    .locals 2

    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1727
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1728
    return-void
.end method

.method private stopFly()V
    .locals 2

    .prologue
    .line 1734
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-eqz v0, :cond_0

    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1737
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1739
    :cond_0
    return-void
.end method

.method private updateItemsLayout(IZ)V
    .locals 2
    .param p1, "anchorPosition"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1751
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v1}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 1752
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1759
    .local v0, "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V

    .line 1760
    return-void

    .line 1755
    .end local v0    # "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1756
    .restart local v0    # "anchorItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-nez v0, :cond_1

    .line 1757
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private updateItemsLayout(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)V
    .locals 14
    .param p1, "anchorItemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .param p2, "animation"    # Z

    .prologue
    .line 1764
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v9}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 1765
    .local v1, "itemCount":I
    :goto_0
    if-gtz v1, :cond_1

    .line 1892
    :goto_1
    return-void

    .line 1764
    .end local v1    # "itemCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1769
    .restart local v1    # "itemCount":I
    :cond_1
    if-nez p1, :cond_2

    .line 1770
    iget-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1773
    :cond_2
    const/4 v4, 0x0

    .line 1774
    .local v4, "needNextUpdate":Z
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1775
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_2
    if-nez v2, :cond_4

    .line 1808
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v9, :cond_b

    .line 1810
    :cond_3
    sget-object v9, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v10, "updateItemsLayout() - No active items"

    invoke-static {v9, v10}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1777
    :cond_4
    iget-object v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1778
    .local v5, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    if-eq v9, v10, :cond_9

    .line 1781
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int v0, v9, v10

    .line 1782
    .local v0, "diff":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_5

    if-nez p2, :cond_a

    .line 1784
    :cond_5
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1785
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    neg-int v10, v10

    if-gt v9, v10, :cond_8

    iget-boolean v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_8

    .line 1787
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v2, :cond_6

    .line 1788
    iget-object v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1789
    :cond_6
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v2, :cond_7

    .line 1790
    iget-object v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1791
    :cond_7
    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1800
    :cond_8
    :goto_3
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1801
    if-ne v2, p1, :cond_9

    .line 1802
    div-int/lit8 v9, v0, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(F)V

    .line 1804
    .end local v0    # "diff":I
    :cond_9
    move-object v2, v5

    goto :goto_2

    .line 1796
    .restart local v0    # "diff":I
    :cond_a
    div-int/lit8 v0, v0, 0x3

    .line 1797
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v9, v0

    iput v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1798
    const/4 v4, 0x1

    goto :goto_3

    .line 1815
    .end local v0    # "diff":I
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    if-eqz p1, :cond_c

    .line 1817
    iget-object v7, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1818
    .local v7, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v3, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    .line 1819
    .local v3, "left":F
    :goto_4
    if-nez v7, :cond_12

    .line 1825
    iget-object v5, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1826
    .restart local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v9, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    add-float v3, v9, v10

    .line 1827
    :goto_5
    if-nez v5, :cond_13

    .line 1836
    .end local v3    # "left":F
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v6, v9, -0x1

    .line 1837
    .local v6, "position":I
    :goto_6
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_d

    if-gez v6, :cond_14

    .line 1845
    :cond_d
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-boolean v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->isRemoving:Z

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v6, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 1846
    :goto_7
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 1847
    .local v8, "right":F
    :goto_8
    iget v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_e

    if-lt v6, v1, :cond_16

    .line 1858
    :cond_e
    :goto_9
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_f

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_17

    .line 1866
    :cond_f
    :goto_a
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_10

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_19

    .line 1876
    :cond_10
    if-eqz v4, :cond_11

    .line 1878
    if-nez p1, :cond_1b

    .line 1880
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1881
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    const-wide/16 v12, 0xf

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1891
    :cond_11
    :goto_b
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    goto/16 :goto_1

    .line 1821
    .end local v6    # "position":I
    .end local v8    # "right":F
    .restart local v3    # "left":F
    .restart local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_12
    iget v9, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v3, v9

    .line 1822
    invoke-virtual {v7, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1823
    iget-object v7, v7, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto/16 :goto_4

    .line 1829
    .restart local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_13
    invoke-virtual {v5, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1830
    iget v9, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    add-float/2addr v3, v9

    .line 1831
    iget-object v5, v5, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto/16 :goto_5

    .line 1839
    .end local v3    # "left":F
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v6    # "position":I
    :cond_14
    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1840
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(F)V

    .line 1841
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1842
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1843
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_6

    .line 1845
    :cond_15
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v6, v9, 0x1

    goto/16 :goto_7

    .line 1849
    .restart local v8    # "right":F
    :cond_16
    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 1850
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

    .line 1851
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v9}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1852
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1853
    iget v9, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    iget v10, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 1854
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 1860
    :cond_17
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v7, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1861
    .restart local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1862
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_18

    .line 1863
    iput-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1864
    :cond_18
    iput-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto/16 :goto_9

    .line 1868
    .end local v7    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_19
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v5, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1869
    .restart local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v9}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1870
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-ne v9, v10, :cond_1a

    .line 1871
    iput-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_AnchorItemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1872
    :cond_1a
    iput-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto/16 :goto_a

    .line 1885
    .end local v5    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_1b
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v10, 0x2710

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1886
    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2710

    invoke-static {v10, v11, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0xf

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b
.end method

.method private updateItemsLayout(Z)V
    .locals 1
    .param p1, "animation"    # Z

    .prologue
    .line 1745
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(IZ)V

    .line 1746
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 509
    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 512
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-nez v2, :cond_1

    .line 514
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 515
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 518
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v2, :cond_4

    .line 519
    .local v0, "isFirstScrolling":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 527
    :goto_1
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v2, :cond_5

    .line 529
    if-eqz v0, :cond_2

    .line 531
    sget-object v2, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v3, "dispatchTouchEvent() - Dispatch ACTION_CANCEL to child"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 533
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 538
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 539
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 540
    :cond_3
    return v1

    .end local v0    # "isFirstScrolling":Z
    :cond_4
    move v0, v1

    .line 518
    goto :goto_0

    .line 524
    .restart local v0    # "isFirstScrolling":Z
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
    if-nez p1, :cond_1

    .line 629
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 626
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p1, Landroid/view/ViewParent;

    if-eqz v2, :cond_3

    check-cast p1, Landroid/view/ViewParent;

    .end local p1    # "view":Landroid/view/View;
    move-object v0, p1

    .line 627
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    if-eqz v2, :cond_4

    .line 629
    :cond_2
    instance-of v2, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->itemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v1, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    goto :goto_0

    .line 626
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 628
    .end local p1    # "view":Landroid/view/View;
    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_4
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1
.end method

.method public getCurrentItem()I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 653
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v3}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 654
    .local v0, "itemCount":I
    :goto_0
    if-gtz v0, :cond_2

    .line 659
    :cond_0
    :goto_1
    return v2

    .line 653
    .end local v0    # "itemCount":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 656
    .restart local v0    # "itemCount":I
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v1

    .line 657
    .local v1, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v1, :cond_0

    .line 658
    iget v2, v1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
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

    if-nez v1, :cond_1

    .line 694
    :cond_0
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_1
    return v1

    .line 693
    :cond_1
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 694
    :cond_2
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

    if-nez v1, :cond_1

    .line 707
    :cond_0
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_1
    return v1

    .line 706
    :cond_1
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 707
    :cond_2
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

    .line 1217
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1218
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-nez v0, :cond_0

    .line 1223
    return-void

    .line 1220
    :cond_0
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1221
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1231
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1232
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1235
    .local v1, "measuredWidth":I
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1236
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1239
    .local v0, "measuredHeight":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/widget/FilmstripView;->setMeasuredDimension(II)V

    .line 1240
    return-void

    .line 1234
    .end local v0    # "measuredHeight":I
    .end local v1    # "measuredWidth":I
    :cond_0
    const/16 v1, 0x7fff

    .restart local v1    # "measuredWidth":I
    goto :goto_0

    .line 1238
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
    .line 1248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1251
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1254
    .local v0, "centerPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    .line 1255
    iput p2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    .line 1258
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 1259
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x271a

    .line 1395
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FastLayoutCounter:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1397
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1401
    :cond_1
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1402
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1403
    :cond_2
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method

.method public setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/oneplus/widget/FilmstripView$Adapter;

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eq v0, p1, :cond_1

    .line 1593
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->detach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1595
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1596
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1597
    if-eqz p1, :cond_1

    .line 1599
    invoke-virtual {p1, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->attach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1600
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

    .line 1613
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1614
    if-eqz p2, :cond_1

    .line 1615
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(IZ)V

    .line 1636
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1619
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_2

    .line 1621
    invoke-direct {p0, v0, v4}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:F

    sub-float v1, v2, v3

    .line 1622
    .local v1, "offset":F
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(F)F

    .line 1623
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v2, :cond_0

    .line 1625
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1626
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v2, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v2, :cond_0

    .line 1628
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v4, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1629
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 1634
    .end local v1    # "offset":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto :goto_0
.end method

.method public setItemMargin(I)V
    .locals 1
    .param p1, "margin"    # I

    .prologue
    .line 1645
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 1646
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    .line 1647
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1655
    return-void
.end method

.method public setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 1665
    return-void
.end method

.method public setScrollMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 1679
    packed-switch p1, :pswitch_data_0

    .line 1695
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown scroll mode : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1683
    :pswitch_0
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1697
    :cond_0
    :goto_0
    return-void

    .line 1687
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1688
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1689
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1690
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1691
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    goto :goto_0

    .line 1679
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
