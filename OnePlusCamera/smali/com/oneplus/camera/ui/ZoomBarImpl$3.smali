.class Lcom/oneplus/camera/ui/ZoomBarImpl$3;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 298
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    return v4

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get0(Lcom/oneplus/camera/ui/ZoomBarImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLongClick() - m_ZoomValueContainer"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap5(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    .line 304
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    sget-object v1, Lcom/oneplus/camera/ui/ZoomBarImpl;->EVENT_ZOOM_VALUE_LONG_CLICK:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap4(Lcom/oneplus/camera/ui/ZoomBarImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get4(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get2(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get10(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/widget/Wheel;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v5}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get4(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v6}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get4(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/oneplus/widget/Wheel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 312
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$3;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, v9}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set2(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    .line 316
    :cond_1
    return v9
.end method
