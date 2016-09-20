.class public Lcom/oneplus/widget/FilmstripView;
.super Landroid/view/ViewGroup;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/widget/FilmstripView$ItemInfo;,
        Lcom/oneplus/widget/FilmstripView$ScrollListener;,
        Lcom/oneplus/widget/FilmstripView$Adapter;
    }
.end annotation


# static fields
.field private static final FLY_ACCELERATION:F = -8000.0f

.field private static final INTERVAL_UPDATE_ITEMS_LAYOUT:J = 0xfL

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

.field private m_TotalScrollDistanceX:F

.field private m_Width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/oneplus/widget/FilmstripView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 312
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 313
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 324
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/oneplus/widget/FilmstripView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$1;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    const/16 v0, 0x32

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 325
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->setupHandler()V

    .line 326
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Landroid/view/MotionEvent;
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->onDataSetChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->onItemSizeChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/widget/FilmstripView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/widget/FilmstripView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I
    .locals 2
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .param p2, "calculateTarget"    # Z

    .prologue
    .line 369
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

    .line 376
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 377
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 379
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 380
    .local v1, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 381
    move-object v0, v1

    .line 382
    goto :goto_0

    .line 383
    .end local v1    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 384
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 385
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 386
    return-void
.end method

.method private findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 434
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 436
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-ne v1, p1, :cond_0

    .line 440
    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    return-object v0

    .line 438
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_0
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 440
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private fly(FJ)V
    .locals 12
    .param p1, "velocity"    # F
    .param p2, "lastTime"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, -0x3a060000    # -8000.0f

    .line 334
    iget-boolean v5, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v5, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 339
    .local v0, "currentTime":J
    sub-long v6, v0, p2

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v2, v5, v6

    .line 340
    .local v2, "durationSeconds":F
    mul-float v5, p1, v2

    mul-float v6, v8, v2

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 341
    .local v3, "offset":I
    invoke-direct {p0, v3}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 348
    :cond_2
    cmpl-float v5, p1, v9

    if-lez v5, :cond_3

    .line 349
    mul-float v5, v8, v2

    add-float/2addr v5, p1

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 354
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3a83126f    # 0.001f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 355
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v7, 0x2711

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 351
    :cond_3
    mul-float v5, v8, v2

    sub-float v5, p1, v5

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    .line 358
    :cond_4
    iput-boolean v10, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 359
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v4

    .line 360
    .local v4, "position":I
    if-ltz v4, :cond_0

    .line 361
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    goto :goto_0
.end method

.method private getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 5

    .prologue
    .line 458
    iget v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    div-int/lit8 v1, v3, 0x2

    .line 459
    .local v1, "halfMargin":I
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 460
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v3, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v0, v3, 0x2

    .line 461
    .local v0, "center":I
    :goto_0
    if-eqz v2, :cond_1

    .line 463
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    sub-int/2addr v3, v1

    if-gt v3, v0, :cond_0

    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v4, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    if-lt v3, v0, :cond_0

    move-object v3, v2

    .line 470
    :goto_1
    return-object v3

    .line 465
    :cond_0
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 468
    :goto_2
    if-eqz v2, :cond_2

    .line 469
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 470
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 497
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 514
    :goto_0
    return-void

    .line 501
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 502
    .local v0, "params":[Ljava/lang/Object;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v2, v4, v5}, Lcom/oneplus/widget/FilmstripView;->fly(FJ)V

    goto :goto_0

    .line 507
    .end local v0    # "params":[Ljava/lang/Object;
    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    goto :goto_0

    .line 511
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 528
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_0

    .line 530
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iput-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 531
    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 538
    :goto_0
    iput p1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    .line 539
    return-object v0

    .line 535
    :cond_0
    new-instance v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .end local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;-><init>(Lcom/oneplus/widget/FilmstripView$1;)V

    .line 536
    .restart local v0    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private onDataSetChanged()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 596
    return-void
.end method

.method private onGestureDown(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 607
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 608
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 609
    return-void
.end method

.method private onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 616
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v2, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 624
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v0

    .line 625
    .local v0, "itemCount":I
    :goto_1
    if-lez v0, :cond_0

    .line 627
    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    if-ltz v2, :cond_3

    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_LastPosition:I

    .line 628
    .local v1, "position":I
    :goto_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 630
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    const/4 v2, -0x1

    :goto_3
    add-int/2addr v1, v2

    .line 631
    if-ltz v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 632
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    goto :goto_0

    .line 624
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 627
    .restart local v0    # "itemCount":I
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v1

    goto :goto_2

    .line 630
    .restart local v1    # "position":I
    :cond_4
    const/4 v2, 0x1

    goto :goto_3

    .line 638
    .end local v0    # "itemCount":I
    .end local v1    # "position":I
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/oneplus/widget/FilmstripView;->startFly(F)V

    goto :goto_0

    .line 620
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

    .line 648
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-eqz v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 658
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 659
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    .line 663
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrollLeftRight:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    .line 668
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_TotalScrollDistanceX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 670
    iput-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 671
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v0, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-nez v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v2, v0, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 674
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v0}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStarted()V

    .line 677
    :cond_3
    neg-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    goto :goto_0

    .line 661
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

    .line 685
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 686
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 689
    iget-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 692
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 693
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    .line 695
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private onItemSizeChanged()V
    .locals 8

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 555
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_5

    .line 558
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 559
    .local v3, "oldTargetWidth":I
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 560
    iget v5, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 561
    .local v1, "diff":I
    if-eqz v1, :cond_0

    .line 565
    :cond_0
    iget-object v4, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 566
    .local v4, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v4, :cond_2

    .line 568
    iget v3, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 569
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 570
    iget v5, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 571
    if-eqz v1, :cond_1

    .line 573
    :cond_1
    iget-object v4, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 575
    :cond_2
    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 576
    .local v2, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_1
    if-eqz v2, :cond_4

    .line 578
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 579
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v6, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v5

    iput v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 580
    iget v5, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    sub-int v1, v5, v3

    .line 581
    if-eqz v1, :cond_3

    .line 583
    :cond_3
    iget-object v2, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_1

    .line 587
    :cond_4
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    .line 589
    .end local v1    # "diff":I
    .end local v2    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v3    # "oldTargetWidth":I
    .end local v4    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_5
    return-void
.end method

.method private prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 735
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->obtainItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 736
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->getItemWidth(II)I

    move-result v1

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    .line 737
    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 738
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget-object v2, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->prepareItemView(ILandroid/view/ViewGroup;)V

    .line 739
    iget-object v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/oneplus/widget/FilmstripView;->addView(Landroid/view/View;)V

    .line 740
    return-object v0
.end method

.method private refreshItems(I)V
    .locals 9
    .param p1, "centerPosition"    # I

    .prologue
    const/4 v6, 0x0

    .line 753
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v7}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v1

    .line 754
    .local v1, "itemCount":I
    :goto_0
    if-gez p1, :cond_0

    .line 755
    const/4 p1, 0x0

    .line 756
    :cond_0
    if-lt p1, v1, :cond_1

    .line 757
    add-int/lit8 p1, v1, -0x1

    .line 760
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 763
    if-lez v1, :cond_2

    if-gez p1, :cond_5

    .line 765
    :cond_2
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 811
    :cond_3
    :goto_1
    return-void

    .end local v1    # "itemCount":I
    :cond_4
    move v1, v6

    .line 753
    goto :goto_0

    .line 770
    .restart local v1    # "itemCount":I
    :cond_5
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 771
    .local v0, "centerItem":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    invoke-direct {p0, v0, v6}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 772
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 773
    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 776
    add-int/lit8 v4, p1, -0x1

    .line 777
    .local v4, "position":I
    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 779
    .local v3, "left":I
    :goto_2
    if-lez v3, :cond_6

    if-ltz v4, :cond_6

    .line 781
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 782
    .local v2, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int v7, v3, v7

    iget v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 783
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 784
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 785
    iget v3, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 786
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 788
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_6
    add-int/lit8 v4, p1, 0x1

    .line 789
    iget v7, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    add-int v5, v7, v8

    .line 790
    .local v5, "right":I
    :goto_3
    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    if-ge v5, v7, :cond_7

    if-ge v4, v1, :cond_7

    .line 792
    invoke-direct {p0, v4}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v2

    .line 793
    .restart local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v7, v5

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 794
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v2, v7}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 795
    iput-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 796
    iget v7, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v8, v2, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    add-int v5, v7, v8

    .line 797
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 801
    .end local v2    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    .line 802
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_3

    .line 804
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 805
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v7, v7, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v7, :cond_3

    .line 807
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v6, v7, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 808
    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v6}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_1
.end method

.method private refreshItems(Z)V
    .locals 1
    .param p1, "keepCurrentItem"    # Z

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 748
    .local v0, "centerPosition":I
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 749
    return-void
.end method

.method private releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 3
    .param p1, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    iget v1, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    iget-object v2, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/widget/FilmstripView$Adapter;->releaseItemView(ILandroid/view/ViewGroup;)V

    .line 823
    :goto_0
    iget-object v0, p1, Lcom/oneplus/widget/FilmstripView$ItemInfo;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/oneplus/widget/FilmstripView;->removeView(Landroid/view/View;)V

    .line 824
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->releaseItemInfo(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 825
    return-void

    .line 822
    :cond_0
    sget-object v0, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseItem() - No adapter to release item "

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
    .line 831
    invoke-virtual {p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->remove()V

    .line 832
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {p1, v0}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 833
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_FreeItemInfos:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 834
    return-void
.end method

.method private reportCurrentPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 840
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    if-eq v1, p1, :cond_0

    .line 842
    iget v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 843
    .local v0, "prevPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ReportedCurrentPosition:I

    .line 844
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v1, v0, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onCurrentItemChanged(II)V

    .line 847
    .end local v0    # "prevPosition":I
    :cond_0
    return-void
.end method

.method private scrollBy(I)I
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 854
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v8}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v2

    .line 855
    .local v2, "itemCount":I
    :goto_0
    if-gtz v2, :cond_2

    .line 924
    :cond_0
    :goto_1
    return v7

    .end local v2    # "itemCount":I
    :cond_1
    move v2, v7

    .line 854
    goto :goto_0

    .line 857
    .restart local v2    # "itemCount":I
    :cond_2
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v8, :cond_0

    .line 861
    const/4 v1, 0x0

    .line 862
    .local v1, "isFirstOverScroll":Z
    const/4 v5, 0x0

    .line 863
    .local v5, "overScrollAtFirstItem":Z
    if-lez p1, :cond_6

    .line 865
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    if-nez v8, :cond_4

    .line 867
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v4

    .line 868
    .local v4, "leftBound":I
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    add-int/2addr v8, p1

    sub-int v0, v4, v8

    .line 869
    .local v0, "diff":I
    if-gez v0, :cond_5

    .line 871
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_3

    .line 873
    iput-boolean v10, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 874
    const/4 v1, 0x1

    .line 875
    const/4 v5, 0x1

    .line 877
    :cond_3
    add-int/2addr p1, v0

    .line 904
    .end local v0    # "diff":I
    .end local v4    # "leftBound":I
    :cond_4
    :goto_2
    if-eqz p1, :cond_a

    .line 906
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 907
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_3
    if-eqz v3, :cond_9

    .line 909
    invoke-virtual {v3, p1}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(I)V

    .line 910
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_3

    .line 880
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .restart local v0    # "diff":I
    .restart local v4    # "leftBound":I
    :cond_5
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_2

    .line 885
    .end local v0    # "diff":I
    .end local v4    # "leftBound":I
    :cond_6
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v9, v2, -0x1

    if-ne v8, v9, :cond_4

    .line 887
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v8, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v8

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v6, v8, v9

    .line 888
    .local v6, "rightBound":I
    iget-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v9, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v9, v9, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v8, v9

    add-int/2addr v8, p1

    sub-int v0, v6, v8

    .line 889
    .restart local v0    # "diff":I
    if-lez v0, :cond_8

    .line 891
    iget-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    if-nez v7, :cond_7

    .line 893
    iput-boolean v10, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    .line 894
    const/4 v1, 0x1

    .line 896
    :cond_7
    add-int/2addr p1, v0

    goto :goto_2

    .line 899
    :cond_8
    iput-boolean v7, p0, Lcom/oneplus/widget/FilmstripView;->m_IsOverScrolled:Z

    goto :goto_2

    .line 912
    .end local v0    # "diff":I
    .end local v6    # "rightBound":I
    .restart local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_9
    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->updateItemsLayout(Z)V

    .line 916
    .end local v3    # "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_a
    if-eqz v1, :cond_b

    .line 918
    sget-object v7, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v8, "scrollBy() - Over-scroll"

    invoke-static {v7, v8}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v7, :cond_b

    .line 920
    iget-object v7, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v7, v5}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onOverScroll(Z)V

    :cond_b
    move v7, p1

    .line 924
    goto :goto_1
.end method

.method private scrollToItem(I)V
    .locals 12
    .param p1, "position"    # I

    .prologue
    const-wide/16 v10, 0xf

    const/16 v8, 0x2712

    const/4 v7, 0x0

    .line 932
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 938
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-nez v5, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v4

    .line 946
    .local v4, "targetItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v4, :cond_2

    .line 948
    invoke-direct {p0, v4, v7}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v5

    iget v6, v4, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    sub-int v3, v5, v6

    .line 956
    .local v3, "scrollOffset":I
    :goto_1
    if-eqz v4, :cond_4

    .line 958
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_3

    .line 960
    div-int/lit8 v1, v3, 0x5

    .line 961
    .local v1, "offset":I
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 962
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v6, v8, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 952
    .end local v1    # "offset":I
    .end local v3    # "scrollOffset":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "scrollOffset":I
    goto :goto_1

    .line 966
    :cond_3
    invoke-direct {p0, v3}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 967
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v5, :cond_0

    .line 969
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v5, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 970
    iget-boolean v5, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v5, v5, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v5, :cond_0

    .line 972
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v7, v5, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 973
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v5}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 980
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 981
    .local v0, "currentPosition":I
    sub-int v2, p1, v0

    .line 982
    .local v2, "positionDiff":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_5

    .line 984
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    invoke-direct {p0, v5}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 985
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v6, v8, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 989
    :cond_5
    iget v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    div-int/lit8 v6, v5, 0x2

    if-ltz v2, :cond_6

    const/4 v5, -0x1

    :goto_2
    mul-int v1, v6, v5

    .line 990
    .restart local v1    # "offset":I
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 991
    iget-object v5, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    invoke-static {v6, v8, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 989
    .end local v1    # "offset":I
    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private setupHandler()V
    .locals 1

    .prologue
    .line 1104
    new-instance v0, Lcom/oneplus/widget/FilmstripView$2;

    invoke-direct {v0, p0}, Lcom/oneplus/widget/FilmstripView$2;-><init>(Lcom/oneplus/widget/FilmstripView;)V

    iput-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    .line 1112
    return-void
.end method

.method private startFly(F)V
    .locals 7
    .param p1, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    .line 1118
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1119
    iput-boolean v6, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1120
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

    .line 1121
    return-void
.end method

.method private stopAutoScroll()V
    .locals 2

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopFly()V

    .line 1128
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    return-void
.end method

.method private stopFly()V
    .locals 2

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    if-eqz v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsFlying:Z

    .line 1138
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1140
    :cond_0
    return-void
.end method

.method private updateItemsLayout(Z)V
    .locals 14
    .param p1, "animation"    # Z

    .prologue
    .line 1147
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v10}, Lcom/oneplus/widget/FilmstripView$Adapter;->getCount()I

    move-result v2

    .line 1148
    .local v2, "itemCount":I
    :goto_0
    if-gtz v2, :cond_1

    .line 1245
    :goto_1
    return-void

    .line 1147
    .end local v2    # "itemCount":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1152
    .restart local v2    # "itemCount":I
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1155
    .local v0, "centerItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-nez v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1159
    :cond_2
    const/4 v5, 0x0

    .line 1160
    .local v5, "needNextUpdate":Z
    iget-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1161
    .local v3, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_2
    if-eqz v3, :cond_6

    .line 1163
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    if-eq v10, v11, :cond_4

    .line 1166
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int v1, v10, v11

    .line 1167
    .local v1, "diff":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x5

    if-le v10, v11, :cond_3

    if-nez p1, :cond_5

    .line 1168
    :cond_3
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->targetWidth:I

    iput v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1175
    :goto_3
    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v3, v10, v11, v12, v13}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 1176
    if-ne v3, v0, :cond_4

    .line 1177
    div-int/lit8 v10, v1, 0x2

    neg-int v10, v10

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveBy(I)V

    .line 1179
    .end local v1    # "diff":I
    :cond_4
    iget-object v3, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_2

    .line 1171
    .restart local v1    # "diff":I
    :cond_5
    div-int/lit8 v1, v1, 0x3

    .line 1172
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v1

    iput v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    .line 1173
    const/4 v5, 0x1

    goto :goto_3

    .line 1183
    .end local v1    # "diff":I
    :cond_6
    if-eqz v0, :cond_8

    .line 1185
    iget-object v8, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1186
    .local v8, "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v4, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    .line 1187
    .local v4, "left":I
    :goto_4
    if-eqz v8, :cond_7

    .line 1189
    iget v10, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v10, v11

    sub-int/2addr v4, v10

    .line 1190
    invoke-virtual {v8, v4}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1191
    iget-object v8, v8, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_4

    .line 1193
    :cond_7
    iget-object v6, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1194
    .local v6, "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget v10, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int v4, v10, v11

    .line 1195
    :goto_5
    if-eqz v6, :cond_8

    .line 1197
    invoke-virtual {v6, v4}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1198
    iget v10, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 1199
    iget-object v6, v6, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_5

    .line 1204
    .end local v4    # "left":I
    .end local v6    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    .end local v8    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_8
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v7, v10, -0x1

    .line 1205
    .local v7, "position":I
    :goto_6
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    if-le v10, v11, :cond_9

    if-ltz v7, :cond_9

    .line 1207
    invoke-direct {p0, v7}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v3

    .line 1208
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v10, v11

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1209
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addBefore(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1210
    iput-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1211
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 1213
    :cond_9
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    add-int/lit8 v7, v10, 0x1

    .line 1214
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v11, v11, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v9, v10, v11

    .line 1215
    .local v9, "right":I
    :goto_7
    iget v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    sub-int/2addr v10, v11

    if-ge v9, v10, :cond_a

    if-ge v7, v2, :cond_a

    .line 1217
    invoke-direct {p0, v7}, Lcom/oneplus/widget/FilmstripView;->prepareItem(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v3

    .line 1218
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v11, v11, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ItemMargin:I

    add-int/2addr v10, v11

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->moveTo(I)V

    .line 1219
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-virtual {v3, v10}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->addAfter(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1220
    iput-object v3, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1221
    iget v10, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, v3, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int v9, v10, v11

    .line 1222
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1226
    :cond_a
    :goto_8
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget v11, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    if-lt v10, v11, :cond_b

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v10, v11, :cond_b

    .line 1228
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v8, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->previous:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1229
    .restart local v8    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1230
    iput-object v8, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_8

    .line 1232
    .end local v8    # "prevItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_b
    :goto_9
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v10, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v11, v11, Lcom/oneplus/widget/FilmstripView$ItemInfo;->width:I

    add-int/2addr v10, v11

    if-gtz v10, :cond_c

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v11, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eq v10, v11, :cond_c

    .line 1234
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget-object v6, v10, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 1235
    .restart local v6    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->releaseItem(Lcom/oneplus/widget/FilmstripView$ItemInfo;)V

    .line 1236
    iput-object v6, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_9

    .line 1240
    .end local v6    # "nextItemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :cond_c
    if-eqz v5, :cond_d

    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2710

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_d

    .line 1241
    iget-object v10, p0, Lcom/oneplus/widget/FilmstripView;->m_Handler:Landroid/os/Handler;

    const/16 v11, 0x2710

    const-wide/16 v12, 0xf

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1244
    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/oneplus/widget/FilmstripView;->reportCurrentPosition(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 394
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 395
    iput-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 396
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 398
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    if-nez v2, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    .line 401
    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_HasMultiPointers:Z

    .line 404
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 405
    .local v0, "isFirstScrolling":Z
    :cond_2
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_GestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 413
    :goto_0
    :pswitch_0
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-eqz v2, :cond_5

    .line 415
    if-eqz v0, :cond_3

    .line 417
    sget-object v2, Lcom/oneplus/widget/FilmstripView;->TAG:Ljava/lang/String;

    const-string v3, "dispatchTouchEvent() - Dispatch ACTION_CANCEL to child"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 419
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 424
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_4

    .line 425
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 426
    :cond_4
    return v1

    .line 410
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->onGestureUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 423
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 406
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItemInfo()Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 451
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFirstVisibltItem()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getLastVisibltItem()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoTail:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    iget v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->position:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 547
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

    .line 702
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_ActiveItemInfoHead:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 703
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 705
    iget v1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    iget v2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/oneplus/widget/FilmstripView$ItemInfo;->layout(IIZZ)V

    .line 706
    iget-object v0, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->next:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    goto :goto_0

    .line 708
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 719
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 722
    .local v0, "centerPosition":I
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Width:I

    .line 723
    iput p2, p0, Lcom/oneplus/widget/FilmstripView;->m_Height:I

    .line 726
    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    .line 727
    return-void
.end method

.method public setAdapter(Lcom/oneplus/widget/FilmstripView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/oneplus/widget/FilmstripView$Adapter;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eq v0, p1, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->detach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1007
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->clearItems()V

    .line 1008
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_Adapter:Lcom/oneplus/widget/FilmstripView$Adapter;

    .line 1009
    if-eqz p1, :cond_1

    .line 1011
    invoke-virtual {p1, p0}, Lcom/oneplus/widget/FilmstripView$Adapter;->attach(Lcom/oneplus/widget/FilmstripView;)V

    .line 1012
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/widget/FilmstripView;->refreshItems(Z)V

    .line 1015
    :cond_1
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "smoothly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1025
    invoke-direct {p0}, Lcom/oneplus/widget/FilmstripView;->stopAutoScroll()V

    .line 1026
    if-eqz p2, :cond_1

    .line 1027
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->scrollToItem(I)V

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->findItemInfo(I)Lcom/oneplus/widget/FilmstripView$ItemInfo;

    move-result-object v0

    .line 1031
    .local v0, "itemInfo":Lcom/oneplus/widget/FilmstripView$ItemInfo;
    if-eqz v0, :cond_2

    .line 1033
    invoke-direct {p0, v0, v4}, Lcom/oneplus/widget/FilmstripView;->calculateItemDefaultLeft(Lcom/oneplus/widget/FilmstripView$ItemInfo;Z)I

    move-result v2

    iget v3, v0, Lcom/oneplus/widget/FilmstripView$ItemInfo;->left:I

    sub-int v1, v2, v3

    .line 1034
    .local v1, "offset":I
    invoke-direct {p0, v1}, Lcom/oneplus/widget/FilmstripView;->scrollBy(I)I

    .line 1035
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    if-eqz v2, :cond_0

    .line 1037
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2, p1}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onItemSelected(I)V

    .line 1038
    iget-boolean v2, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iget-boolean v2, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    if-eqz v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    iput-boolean v4, v2, Lcom/oneplus/widget/FilmstripView$ScrollListener;->isScrollStartedCalled:Z

    .line 1041
    iget-object v2, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    invoke-virtual {v2}, Lcom/oneplus/widget/FilmstripView$ScrollListener;->onScrollStopped()V

    goto :goto_0

    .line 1046
    .end local v1    # "offset":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/widget/FilmstripView;->refreshItems(I)V

    goto :goto_0
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_OnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1056
    return-void
.end method

.method public setScrollListener(Lcom/oneplus/widget/FilmstripView$ScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollListener:Lcom/oneplus/widget/FilmstripView$ScrollListener;

    .line 1066
    return-void
.end method

.method public setScrollMode(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 1080
    packed-switch p1, :pswitch_data_0

    .line 1096
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown scroll mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    :pswitch_0
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1088
    :pswitch_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/widget/FilmstripView;->m_IsScrolling:Z

    .line 1089
    iput p1, p0, Lcom/oneplus/widget/FilmstripView;->m_ScrollMode:I

    .line 1090
    invoke-virtual {p0}, Lcom/oneplus/widget/FilmstripView;->getCurrentItem()I

    move-result v0

    .line 1091
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 1092
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/widget/FilmstripView;->setCurrentItem(IZ)V

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
