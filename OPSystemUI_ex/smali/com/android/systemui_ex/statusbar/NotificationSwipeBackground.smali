.class public Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;
.super Landroid/widget/RelativeLayout;
.source "NotificationSwipeBackground.java"


# instance fields
.field private mActualHeight:I

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClipTopAmount:I

.field private mSmallHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mClipBounds:Landroid/graphics/Rect;

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->reset()V

    .line 26
    return-void
.end method

.method private updateClipping()V
    .locals 5

    .prologue
    .line 45
    const-string v0, "ac_height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1111 noti swipe background "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mActualHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mActualHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->setClipBounds(Landroid/graphics/Rect;)V

    .line 48
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 30
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 31
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->updateClipping()V

    .line 32
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->removeAllViews()V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mSmallHeight:I

    .line 65
    iget v0, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mSmallHeight:I

    iput v0, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mActualHeight:I

    .line 66
    return-void
.end method

.method public setActualHeight(I)V
    .locals 0
    .param p1, "actualHeight"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->mActualHeight:I

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/NotificationSwipeBackground;->invalidate()V

    .line 42
    return-void
.end method
