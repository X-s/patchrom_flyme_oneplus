.class Lcom/oneplus/widget/FilmstripView$1;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/FilmstripView;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/FilmstripView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/widget/FilmstripView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oneplus/widget/FilmstripView$1;->this$0:Lcom/oneplus/widget/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$1;->this$0:Lcom/oneplus/widget/FilmstripView;

    invoke-static {v0, p1}, Lcom/oneplus/widget/FilmstripView;->-wrap2(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;)V

    .line 98
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
    .line 90
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$1;->this$0:Lcom/oneplus/widget/FilmstripView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->-wrap3(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/widget/FilmstripView$1;->this$0:Lcom/oneplus/widget/FilmstripView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/widget/FilmstripView;->-wrap4(Lcom/oneplus/widget/FilmstripView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
