.class public abstract Lcom/oneplus/camera/ui/BaseGestureHandler;
.super Ljava/lang/Object;
.source "BaseGestureHandler.java"

# interfaces
.implements Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public onGestureEnd(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 22
    return-void
.end method

.method public onGestureStart(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onSlideDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onSlideLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onSlideRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public onSlideUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
