.class public Lcom/oppo/tribune/ui/wheelview/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;,
        Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;
    }
.end annotation


# static fields
.field private static final ADDITIONAL_ITEMS_SPACE:I = 0xa

.field private static final ADDITIONAL_ITEM_HEIGHT:I = 0x1e

.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEMS_TEXT_COLOR:I = -0x494243

.field private static final ITEM_OFFSET:I = 0x0

.field private static final LABEL_OFFSET:I = 0x8

.field private static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final PADDING:I = 0xa

.field private static final SCROLLING_DURATION:I = 0x190

.field private static final TEXT_SIZE:I = 0x23

.field private static final VALUE_TEXT_COLOR:I = -0xc7c7c7


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

.field private animationHandler:Landroid/os/Handler;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemHeightSetInXml:I

.field private itemsLayout:Landroid/text/StaticLayout;

.field private itemsPaint:Landroid/text/TextPaint;

.field private itemsWidth:I

.field private label:Ljava/lang/String;

.field private labelLayout:Landroid/text/StaticLayout;

.field private labelWidth:I

.field private lastScrollY:I

.field private mAdditionalItemHeight:I

.field private scroller:Landroid/widget/Scroller;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private textSize:I

.field private valueLayout:Landroid/text/StaticLayout;

.field private valuePaint:Landroid/text/TextPaint;

.field private visibleItems:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    const/16 v0, 0x1e

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    .line 83
    iput-object v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    .line 85
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    .line 88
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    .line 90
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    .line 93
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    .line 96
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeight:I

    .line 98
    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    .line 105
    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    .line 130
    iput-boolean v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->changingListeners:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    .line 813
    new-instance v0, Lcom/oppo/tribune/ui/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$1;-><init>(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 847
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->MESSAGE_SCROLL:I

    .line 849
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->MESSAGE_JUSTIFY:I

    .line 871
    new-instance v0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$2;-><init>(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;

    .line 149
    invoke-direct {p0, p1, v3}, Lcom/oppo/tribune/ui/wheelview/WheelView;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/16 v0, 0x1e

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    .line 85
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    .line 88
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    .line 90
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    .line 93
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    .line 96
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeight:I

    .line 98
    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    .line 105
    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    .line 130
    iput-boolean v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->changingListeners:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    .line 813
    new-instance v0, Lcom/oppo/tribune/ui/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$1;-><init>(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 847
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->MESSAGE_SCROLL:I

    .line 849
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->MESSAGE_JUSTIFY:I

    .line 871
    new-instance v0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$2;-><init>(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/16 v0, 0x1e

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    .line 85
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    .line 88
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    .line 90
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    .line 93
    const/4 v0, 0x5

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    .line 96
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeight:I

    .line 98
    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    .line 105
    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    .line 130
    iput-boolean v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->changingListeners:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    .line 813
    new-instance v0, Lcom/oppo/tribune/ui/wheelview/WheelView$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$1;-><init>(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 847
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->MESSAGE_SCROLL:I

    .line 849
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->MESSAGE_JUSTIFY:I

    .line 871
    new-instance v0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$2;-><init>(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/ui/wheelview/WheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oppo/tribune/ui/wheelview/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/tribune/ui/wheelview/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->justify()V

    return-void
.end method

.method static synthetic access$200(Lcom/oppo/tribune/ui/wheelview/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->clearMessages()V

    return-void
.end method

.method static synthetic access$300(Lcom/oppo/tribune/ui/wheelview/WheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->startScrolling()V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/tribune/ui/wheelview/WheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/tribune/ui/wheelview/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/tribune/ui/wheelview/WheelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/tribune/ui/wheelview/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/tribune/ui/wheelview/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oppo/tribune/ui/wheelview/WheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/tribune/ui/wheelview/WheelView;)Lcom/oppo/tribune/ui/wheelview/WheelAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/ui/wheelview/WheelView;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    return-object v0
.end method

.method private buildText(Z)Ljava/lang/String;
    .locals 5
    .param p1, "useCurrentValue"    # Z

    .prologue
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v2, "itemsText":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 478
    .local v0, "addItems":I
    iget v4, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    sub-int v1, v4, v0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    add-int/2addr v4, v0

    if-gt v1, v4, :cond_3

    .line 479
    if-nez p1, :cond_0

    iget v4, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    if-eq v1, v4, :cond_1

    .line 480
    :cond_0
    invoke-direct {p0, v1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getTextItem(I)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    add-int/2addr v4, v0

    if-ge v1, v4, :cond_2

    .line 486
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private calculateLayoutWidth(II)I
    .locals 12
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v10, 0x0

    .line 549
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->initResourcesIfNecessary()V

    .line 551
    move v5, p1

    .line 553
    .local v5, "width":I
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getMaxTextLength()I

    move-result v0

    .line 554
    .local v0, "maxLength":I
    if-lez v0, :cond_5

    .line 555
    const-string v8, "0"

    iget-object v9, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-static {v8, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 557
    .local v6, "textWidth":D
    int-to-double v8, v0

    mul-double/2addr v8, v6

    double-to-int v8, v8

    iput v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    .line 561
    .end local v6    # "textWidth":D
    :goto_0
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    add-int/lit8 v8, v8, 0xa

    iput v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    .line 563
    iput v10, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    .line 564
    iget-object v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 565
    iget-object v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    iget-object v9, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-static {v8, v9}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    .line 569
    :cond_0
    const/4 v4, 0x0

    .line 570
    .local v4, "recalculate":Z
    const/high16 v8, 0x40000000    # 2.0f

    if-ne p2, v8, :cond_6

    .line 571
    move v5, p1

    .line 572
    const/4 v4, 0x1

    .line 588
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    .line 590
    add-int/lit8 v8, v5, -0x8

    add-int/lit8 v1, v8, -0x14

    .line 591
    .local v1, "pureWidth":I
    if-gtz v1, :cond_2

    .line 592
    iput v10, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    iput v10, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    .line 594
    :cond_2
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    if-lez v8, :cond_8

    .line 595
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    int-to-double v8, v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    iget v11, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    add-int/2addr v10, v11

    int-to-double v10, v10

    div-double v2, v8, v10

    .line 597
    .local v2, "newWidthItems":D
    double-to-int v8, v2

    iput v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    .line 598
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    sub-int v8, v1, v8

    iput v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    .line 604
    .end local v1    # "pureWidth":I
    .end local v2    # "newWidthItems":D
    :cond_3
    :goto_2
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    if-lez v8, :cond_4

    .line 605
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    iget v9, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    invoke-direct {p0, v8, v9}, Lcom/oppo/tribune/ui/wheelview/WheelView;->createLayouts(II)V

    .line 608
    :cond_4
    return v5

    .line 559
    .end local v4    # "recalculate":Z
    :cond_5
    iput v10, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    goto :goto_0

    .line 574
    .restart local v4    # "recalculate":Z
    :cond_6
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    iget v9, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v5, v8, 0x14

    .line 575
    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    if-lez v8, :cond_7

    .line 576
    add-int/lit8 v5, v5, 0x8

    .line 580
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 582
    const/high16 v8, -0x80000000

    if-ne p2, v8, :cond_1

    if-ge p1, v5, :cond_1

    .line 583
    move v5, p1

    .line 584
    const/4 v4, 0x1

    goto :goto_1

    .line 600
    .restart local v1    # "pureWidth":I
    :cond_8
    add-int/lit8 v8, v1, 0x8

    iput v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    goto :goto_2
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 867
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 868
    return-void
.end method

.method private createLayouts(II)V
    .locals 9
    .param p1, "widthItems"    # I
    .param p2, "widthLabel"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 620
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_6

    .line 621
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    invoke-direct {p0, v1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->buildText(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-lez p2, :cond_5

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    int-to-float v6, v3

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 630
    :goto_1
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p1, :cond_9

    .line 632
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getAdapter()Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getAdapter()Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    move-result-object v0

    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    invoke-interface {v0, v1}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v8

    .line 634
    .local v8, "text":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/text/StaticLayout;

    if-eqz v8, :cond_7

    move-object v1, v8

    :goto_2
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-lez p2, :cond_8

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_3
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    int-to-float v6, v3

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 645
    .end local v8    # "text":Ljava/lang/String;
    :goto_4
    if-lez p2, :cond_4

    .line 646
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    if-le v0, p2, :cond_b

    .line 647
    :cond_3
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    int-to-float v6, v3

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 654
    :cond_4
    :goto_5
    return-void

    .line 621
    :cond_5
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 627
    :cond_6
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_1

    .line 634
    .restart local v8    # "text":Ljava/lang/String;
    :cond_7
    const-string v1, ""

    goto :goto_2

    :cond_8
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_3

    .line 639
    .end local v8    # "text":Ljava/lang/String;
    :cond_9
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_a

    .line 640
    iput-object v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    goto :goto_4

    .line 642
    :cond_a
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_4

    .line 651
    :cond_b
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->increaseWidthTo(I)V

    goto :goto_5
.end method

.method private doScroll(I)V
    .locals 6
    .param p1, "delta"    # I

    .prologue
    const/4 v5, 0x0

    .line 773
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    .line 775
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getItemHeight()I

    move-result v4

    div-int v0, v3, v4

    .line 776
    .local v0, "count":I
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    sub-int v2, v3, v0

    .line 777
    .local v2, "pos":I
    iget-boolean v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 779
    :goto_0
    if-gez v2, :cond_0

    .line 780
    iget-object v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 782
    :cond_0
    iget-object v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    rem-int/2addr v2, v3

    .line 798
    :cond_1
    :goto_1
    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    .line 799
    .local v1, "offset":I
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    if-eq v2, v3, :cond_6

    .line 800
    invoke-virtual {p0, v2, v5}, Lcom/oppo/tribune/ui/wheelview/WheelView;->setCurrentItem(IZ)V

    .line 806
    :goto_2
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    sub-int v3, v1, v3

    iput v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    .line 807
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 808
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getHeight()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    .line 810
    :cond_2
    return-void

    .line 783
    .end local v1    # "offset":I
    :cond_3
    iget-boolean v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    if-eqz v3, :cond_5

    .line 785
    if-gez v2, :cond_4

    .line 786
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    .line 787
    const/4 v2, 0x0

    goto :goto_1

    .line 788
    :cond_4
    iget-object v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 789
    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    iget-object v4, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v4}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x1

    .line 790
    iget-object v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 794
    :cond_5
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 795
    iget-object v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v3}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 802
    .restart local v1    # "offset":I
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidate()V

    goto :goto_2
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 740
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 742
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    .line 743
    .local v0, "top":I
    const/4 v1, 0x0

    neg-int v2, v0

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 745
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    const v2, -0x494243

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 746
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 747
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 749
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 750
    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 710
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    const v2, -0xc7c7c7

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 711
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getDrawableState()[I

    move-result-object v2

    iput-object v2, v1, Landroid/text/TextPaint;->drawableState:[I

    .line 713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 714
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/text/StaticLayout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 717
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 718
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 719
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 720
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 721
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    .line 726
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 727
    const/4 v1, 0x0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 728
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 729
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 731
    :cond_1
    return-void
.end method

.method private getDesiredHeight(Landroid/text/Layout;)I
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getItemHeight()I

    move-result v1

    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    add-int v0, v1, v2

    .line 439
    .local v0, "desired":I
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 441
    goto :goto_0
.end method

.method private getItemHeight()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 529
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    .line 530
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeight:I

    .line 536
    :goto_0
    return v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 532
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeight:I

    .line 533
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeight:I

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method private getMaxTextLength()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getAdapter()Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    move-result-object v0

    .line 500
    .local v0, "adapter":Lcom/oppo/tribune/ui/wheelview/WheelAdapter;
    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v6

    .line 504
    :cond_1
    invoke-interface {v0}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getMaximumLength()I

    move-result v1

    .line 505
    .local v1, "adapterLength":I
    if-lez v1, :cond_2

    move v6, v1

    .line 506
    goto :goto_0

    .line 509
    :cond_2
    const/4 v4, 0x0

    .line 510
    .local v4, "maxText":Ljava/lang/String;
    iget v7, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    div-int/lit8 v2, v7, 0x2

    .line 511
    .local v2, "addItems":I
    iget v7, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    sub-int/2addr v7, v2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .local v3, "i":I
    :goto_1
    iget v7, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    iget v8, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    add-int/2addr v7, v8

    invoke-interface {v0}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 513
    invoke-interface {v0, v3}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v5

    .line 514
    .local v5, "text":Ljava/lang/String;
    if-eqz v5, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 516
    :cond_3
    move-object v4, v5

    .line 512
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 520
    .end local v5    # "text":Ljava/lang/String;
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0
.end method

.method private getTextItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v2}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-object v1

    .line 455
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v2}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v0

    .line 456
    .local v0, "count":I
    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    if-eqz v2, :cond_0

    .line 459
    :cond_3
    :goto_1
    if-gez p1, :cond_4

    .line 460
    add-int/2addr p1, v0

    goto :goto_1

    .line 464
    :cond_4
    rem-int/2addr p1, v0

    .line 465
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v1, p1}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initData(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x23

    const/4 v3, 0x0

    .line 153
    if-eqz p2, :cond_0

    .line 154
    sget-object v2, Lcom/oneplus/tuner/R$styleable;->WheelView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    .line 158
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    .line 160
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    if-gez v2, :cond_1

    :goto_0
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    .line 164
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    .line 165
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 167
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;

    .line 168
    return-void

    .line 162
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    goto :goto_0
.end method

.method private initResourcesIfNecessary()V
    .locals 6

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    .line 399
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_0

    .line 400
    new-instance v2, Landroid/text/TextPaint;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    .line 403
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 404
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    if-lez v2, :cond_0

    .line 405
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 406
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v3, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 407
    .local v1, "txtRealHeifht":I
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    if-le v2, v1, :cond_0

    .line 408
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    .line 413
    .end local v0    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v1    # "txtRealHeifht":I
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    .line 414
    new-instance v2, Landroid/text/TextPaint;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    .line 417
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->textSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 418
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valuePaint:Landroid/text/TextPaint;

    const/4 v3, 0x0

    const v4, -0x3f3f40

    invoke-virtual {v2, v5, v3, v5, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 421
    :cond_1
    return-void
.end method

.method private invalidateLayouts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    .line 391
    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->valueLayout:Landroid/text/StaticLayout;

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    .line 393
    return-void
.end method

.method private justify()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 902
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    if-nez v0, :cond_0

    .line 924
    :goto_0
    return-void

    .line 906
    :cond_0
    iput v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I

    .line 907
    iget v4, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    .line 908
    .local v4, "offset":I
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getItemHeight()I

    move-result v6

    .line 909
    .local v6, "itemHeight":I
    if-lez v4, :cond_4

    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v2}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    move v7, v8

    .line 911
    .local v7, "needToIncrease":Z
    :goto_1
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    if-nez v0, :cond_1

    if-eqz v7, :cond_2

    :cond_1
    int-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v6

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 913
    if-gez v4, :cond_6

    .line 914
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v4, v0

    .line 918
    :cond_2
    :goto_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v8, :cond_7

    .line 919
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;

    const/16 v5, 0x190

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 920
    invoke-direct {p0, v8}, Lcom/oppo/tribune/ui/wheelview/WheelView;->setNextMessage(I)V

    goto :goto_0

    .end local v7    # "needToIncrease":Z
    :cond_3
    move v7, v1

    .line 909
    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    if-lez v0, :cond_5

    move v7, v8

    goto :goto_1

    :cond_5
    move v7, v1

    goto :goto_1

    .line 916
    .restart local v7    # "needToIncrease":Z
    :cond_6
    add-int/lit8 v0, v6, 0x1

    sub-int/2addr v4, v0

    goto :goto_2

    .line 922
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->finishScrolling()V

    goto :goto_0
.end method

.method private setNextMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->clearMessages()V

    .line 859
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 860
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 931
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    .line 932
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->notifyScrollingListenersAboutStart()V

    .line 934
    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    return-void
.end method

.method public addScrollingListener(Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method finishScrolling()V
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isScrollingPerformed:Z

    .line 944
    :cond_0
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidateLayouts()V

    .line 945
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidate()V

    .line 946
    return-void
.end method

.method public getAdapter()Lcom/oppo/tribune/ui/wheelview/WheelAdapter;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 263
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;

    .line 264
    .local v1, "listener":Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;->onChanged(Lcom/oppo/tribune/ui/wheelview/WheelView;II)V

    goto :goto_0

    .line 266
    .end local v1    # "listener":Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 3

    .prologue
    .line 301
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;

    .line 302
    .local v1, "listener":Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;->onScrollingFinished(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    goto :goto_0

    .line 304
    .end local v1    # "listener":Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;

    .line 293
    .local v1, "listener":Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;
    invoke-interface {v1, p0}, Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;->onScrollingStarted(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    goto :goto_0

    .line 295
    .end local v1    # "listener":Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 681
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 683
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    .line 684
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    if-nez v0, :cond_2

    .line 685
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->calculateLayoutWidth(II)I

    .line 691
    :cond_0
    :goto_0
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    if-lez v0, :cond_1

    .line 692
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 694
    const/high16 v0, 0x41200000    # 10.0f

    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->mAdditionalItemHeight:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 696
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 697
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->drawValue(Landroid/graphics/Canvas;)V

    .line 698
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 701
    :cond_1
    return-void

    .line 687
    :cond_2
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsWidth:I

    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelWidth:I

    invoke-direct {p0, v0, v1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->createLayouts(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 658
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 659
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 660
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 661
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 663
    .local v2, "heightSize":I
    invoke-direct {p0, v5, v4}, Lcom/oppo/tribune/ui/wheelview/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 666
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_1

    .line 667
    move v0, v2

    .line 676
    .local v0, "height":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->setMeasuredDimension(II)V

    .line 677
    return-void

    .line 669
    .end local v0    # "height":I
    :cond_1
    iget-object v6, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemsLayout:Landroid/text/StaticLayout;

    invoke-direct {p0, v6}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getDesiredHeight(Landroid/text/Layout;)I

    move-result v0

    .line 671
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_0

    .line 672
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 754
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getAdapter()Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    move-result-object v0

    .line 755
    .local v0, "adapter":Lcom/oppo/tribune/ui/wheelview/WheelAdapter;
    if-nez v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return v2

    .line 759
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 761
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->justify()V

    goto :goto_0
.end method

.method public removeChangingListener(Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelChangedListener;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    return-void
.end method

.method public removeScrollingListener(Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oppo/tribune/ui/wheelview/WheelView$OnWheelScrollListener;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public scroll(II)V
    .locals 7
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 957
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 959
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scrollingOffset:I

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I

    .line 960
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getItemHeight()I

    move-result v0

    mul-int v6, p1, v0

    .line 962
    .local v6, "offset":I
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I

    sub-int v4, v6, v3

    move v3, v1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 963
    invoke-direct {p0, v1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->setNextMessage(I)V

    .line 965
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->startScrolling()V

    .line 966
    return-void
.end method

.method public setAdapter(Lcom/oppo/tribune/ui/wheelview/WheelAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    .line 176
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidateLayouts()V

    .line 177
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidate()V

    .line 178
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->setCurrentItem(IZ)V

    .line 361
    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 324
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v1}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v1}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v1

    if-lt p1, v1, :cond_4

    .line 328
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    if-eqz v1, :cond_0

    .line 329
    :goto_1
    if-gez p1, :cond_3

    .line 330
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v1}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_1

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->adapter:Lcom/oppo/tribune/ui/wheelview/WheelAdapter;

    invoke-interface {v1}, Lcom/oppo/tribune/ui/wheelview/WheelAdapter;->getItemsCount()I

    move-result v1

    rem-int/2addr p1, v1

    .line 337
    :cond_4
    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    if-eq p1, v1, :cond_0

    .line 338
    if-eqz p2, :cond_5

    .line 339
    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    sub-int v1, p1, v1

    const/16 v2, 0x190

    invoke-virtual {p0, v1, v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroll(II)V

    goto :goto_0

    .line 341
    :cond_5
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidateLayouts()V

    .line 343
    iget v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    .line 344
    .local v0, "old":I
    iput p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    .line 346
    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->currentItem:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->notifyChangingListeners(II)V

    .line 348
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidate()V

    goto :goto_0
.end method

.method public setCyclic(Z)V
    .locals 0
    .param p1, "isCyclic"    # Z

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->isCyclic:Z

    .line 382
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidate()V

    .line 383
    invoke-direct {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidateLayouts()V

    .line 384
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 188
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;

    .line 189
    return-void
.end method

.method public setItemHeight(I)V
    .locals 0
    .param p1, "itemHeight"    # I

    .prologue
    .line 1001
    iput p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    .line 1002
    return-void
.end method

.method public setItemHeightByRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->itemHeightSetInXml:I

    .line 1006
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    iput-object p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->label:Ljava/lang/String;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->labelLayout:Landroid/text/StaticLayout;

    .line 230
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidate()V

    .line 232
    :cond_1
    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView;->visibleItems:I

    .line 208
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->invalidate()V

    .line 209
    return-void
.end method
