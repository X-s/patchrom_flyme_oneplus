.class public abstract Lcom/oneplus/widget/ImageViewer$GestureCallback;
.super Ljava/lang/Object;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GestureCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onScale(Lcom/oneplus/widget/ImageViewer;FFFF)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Lcom/oneplus/widget/ImageViewer;)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 276
    return-void
.end method

.method public onScroll(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "e1"    # Landroid/view/MotionEvent;
    .param p3, "e2"    # Landroid/view/MotionEvent;
    .param p4, "distanceX"    # F
    .param p5, "distanceY"    # F

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Lcom/oneplus/widget/ImageViewer;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "imageViewer"    # Lcom/oneplus/widget/ImageViewer;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method
