.class Lcom/oneplus/camera/ui/OnScreenHintImpl$8;
.super Ljava/lang/Object;
.source "OnScreenHintImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/OnScreenHintImpl;->setupUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$8;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 322
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$8;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get1(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    return v4

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$8;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get1(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    .line 327
    .local v0, "handle":Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
    iget-object v3, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->clickListener:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_1

    .line 328
    return v4

    .line 331
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 332
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 333
    .local v2, "y":F
    cmpg-float v3, v1, v5

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 334
    :cond_2
    return v4

    .line 333
    :cond_3
    cmpg-float v3, v2, v5

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 337
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 339
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 340
    iget-object v3, v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->clickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v3, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 342
    :cond_4
    return v6
.end method
