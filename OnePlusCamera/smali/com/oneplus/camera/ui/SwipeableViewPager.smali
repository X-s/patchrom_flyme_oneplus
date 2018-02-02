.class public Lcom/oneplus/camera/ui/SwipeableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SwipeableViewPager.java"

# interfaces
.implements Lcom/oneplus/camera/ui/CameraPager;


# instance fields
.field private mSwipeable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/SwipeableViewPager;->mSwipeable:Z

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/ui/SwipeableViewPager;->mSwipeable:Z

    .line 15
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/oneplus/camera/ui/SwipeableViewPager;->mSwipeable:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwipeable(Z)V
    .locals 0
    .param p1, "swipeable"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/oneplus/camera/ui/SwipeableViewPager;->mSwipeable:Z

    .line 25
    return-void
.end method
