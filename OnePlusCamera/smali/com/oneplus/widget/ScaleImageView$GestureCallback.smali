.class public abstract Lcom/oneplus/widget/ScaleImageView$GestureCallback;
.super Ljava/lang/Object;
.source "ScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GestureCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onGestureEnd(Lcom/oneplus/widget/ScaleImageView;)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;

    .prologue
    .line 96
    return-void
.end method

.method public onGestureStart(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    return-void
.end method

.method public onScale(Lcom/oneplus/widget/ScaleImageView;FFF)Z
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "factor"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Lcom/oneplus/widget/ScaleImageView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Lcom/oneplus/widget/ScaleImageView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method
