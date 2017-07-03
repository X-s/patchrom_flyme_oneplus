.class public Lcom/oneplus/gallery/widget/ViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPager.java"


# instance fields
.field private m_IsPositionLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public lockPosition()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/widget/ViewPager;->m_IsPositionLocked:Z

    .line 33
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/oneplus/gallery/widget/ViewPager;->m_IsPositionLocked:Z

    if-eqz v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/oneplus/gallery/widget/ViewPager;->m_IsPositionLocked:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public unlockPosition()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/widget/ViewPager;->m_IsPositionLocked:Z

    .line 60
    return-void
.end method
