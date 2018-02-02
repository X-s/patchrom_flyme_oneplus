.class Lcom/oneplus/widget/ImageViewer$3;
.super Ljava/lang/Object;
.source "ImageViewer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/widget/ImageViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/ImageViewer;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/ImageViewer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/ImageViewer;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/oneplus/widget/ImageViewer$3;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 379
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$3;->this$0:Lcom/oneplus/widget/ImageViewer;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/widget/ImageViewer;->onGestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFZ)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$3;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ImageViewer;->onLongPress(Landroid/view/MotionEvent;)V

    .line 371
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 367
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$3;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/widget/ImageViewer;->onGestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oneplus/widget/ImageViewer$3;->this$0:Lcom/oneplus/widget/ImageViewer;

    invoke-virtual {v0, p1}, Lcom/oneplus/widget/ImageViewer;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
