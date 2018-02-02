.class public interface abstract Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GestureHandler"
.end annotation


# static fields
.field public static final DURATION_TOUCH_UP_THRESHOLD:J


# virtual methods
.method public abstract onDoubleTap(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onGestureEnd(Landroid/view/MotionEvent;)V
.end method

.method public abstract onGestureStart(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onSlideDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onSlideLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onSlideRight(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onSlideUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method
