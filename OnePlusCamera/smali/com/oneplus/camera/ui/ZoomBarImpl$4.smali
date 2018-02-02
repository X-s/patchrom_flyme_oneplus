.class Lcom/oneplus/camera/ui/ZoomBarImpl$4;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 319
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    .line 324
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap0(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    return v4

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, p2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set3(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 330
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 331
    .local v9, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 332
    .local v10, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 366
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get3(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 368
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get2(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get10(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/widget/Wheel;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/oneplus/widget/Wheel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 371
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, v12}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set2(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get10(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/widget/Wheel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/oneplus/widget/Wheel;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 374
    return v12

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get5(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    .line 336
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set0(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get1(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    return v4

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get3(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get5(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, v9, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 349
    .local v8, "diffX":F
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap5(Lcom/oneplus/camera/ui/ZoomBarImpl;)V

    .line 352
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    sget-object v1, Lcom/oneplus/camera/ui/ZoomBarImpl;->EVENT_ZOOM_VALUE_DRAGED:Lcom/oneplus/base/EventKey;

    sget-object v2, Lcom/oneplus/base/EventArgs;->EMPTY:Lcom/oneplus/base/EventArgs;

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-wrap4(Lcom/oneplus/camera/ui/ZoomBarImpl;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    goto :goto_0

    .line 358
    .end local v8    # "diffX":F
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set2(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    .line 359
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get3(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    const/16 v1, 0x2711

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v12, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 362
    :cond_4
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set0(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    .line 363
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set3(Lcom/oneplus/camera/ui/ZoomBarImpl;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$4;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0, v4}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-set2(Lcom/oneplus/camera/ui/ZoomBarImpl;Z)Z

    .line 379
    return v4

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
