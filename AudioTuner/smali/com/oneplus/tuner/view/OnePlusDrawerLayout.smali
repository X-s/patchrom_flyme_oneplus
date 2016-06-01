.class public Lcom/oneplus/tuner/view/OnePlusDrawerLayout;
.super Landroid/support/v4/widget/DrawerLayout;
.source "OnePlusDrawerLayout.java"


# instance fields
.field private mIsDisallowIntercept:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->mIsDisallowIntercept:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->mIsDisallowIntercept:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->mIsDisallowIntercept:Z

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->mIsDisallowIntercept:Z

    if-eqz v2, :cond_0

    .line 37
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 39
    .local v1, "handled":Z
    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 47
    .end local v1    # "handled":Z
    :goto_0
    return v1

    .line 43
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 47
    iget-boolean v1, p0, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->mIsDisallowIntercept:Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/oneplus/tuner/view/OnePlusDrawerLayout;->mIsDisallowIntercept:Z

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 31
    return-void
.end method
