.class Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "FastScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/widget/FastScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;


# direct methods
.method private constructor <init>(Lcom/oneplus/gallery2/widget/FastScrollBar;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/gallery2/widget/FastScrollBar;Lcom/oneplus/gallery2/widget/FastScrollBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/widget/FastScrollBar;
    .param p2, "x1"    # Lcom/oneplus/gallery2/widget/FastScrollBar$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;-><init>(Lcom/oneplus/gallery2/widget/FastScrollBar;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 302
    if-nez p2, :cond_1

    .line 304
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget-object v1, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1400(Lcom/oneplus/gallery2/widget/FastScrollBar;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/base/HandlerUtils;->post(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_HideScrollBarHandleRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1400(Lcom/oneplus/gallery2/widget/FastScrollBar;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # invokes: Lcom/oneplus/gallery2/widget/FastScrollBar;->showScrollBarThumbInternal()V
    invoke-static {v0}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1500(Lcom/oneplus/gallery2/widget/FastScrollBar;)V

    goto :goto_0
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 6
    .param p1, "rv"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v5, 0x0

    .line 266
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_IsScrollBarThumbGrabbed:Z
    invoke-static {v3}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$200(Lcom/oneplus/gallery2/widget/FastScrollBar;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v3}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$800(Lcom/oneplus/gallery2/widget/FastScrollBar;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 271
    .local v0, "firstCompleteVisiblePosition":I
    if-nez v0, :cond_2

    .line 273
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    const/4 v4, 0x0

    iput v4, v3, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 274
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # invokes: Lcom/oneplus/gallery2/widget/FastScrollBar;->setThumbPosition(F)V
    invoke-static {v3, v5}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$900(Lcom/oneplus/gallery2/widget/FastScrollBar;F)V

    .line 275
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # setter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F
    invoke-static {v3, v5}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1002(Lcom/oneplus/gallery2/widget/FastScrollBar;F)F

    goto :goto_0

    .line 279
    :cond_2
    if-eqz p3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget v4, v3, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    sub-int/2addr v4, p3

    iput v4, v3, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 282
    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrolled() - m_ScrollOffsetY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget v5, v5, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # invokes: Lcom/oneplus/gallery2/widget/FastScrollBar;->getViewPortHeight()I
    invoke-static {v3}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1100(Lcom/oneplus/gallery2/widget/FastScrollBar;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollBarHandlePosition:I
    invoke-static {v4}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1200(Lcom/oneplus/gallery2/widget/FastScrollBar;)I

    move-result v4

    sub-int v2, v3, v4

    .line 286
    .local v2, "viewPortHeight":I
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget v3, v3, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    .line 287
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    mul-int/lit8 v4, v2, -0x1

    iput v4, v3, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    .line 289
    :cond_3
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget v3, v3, Lcom/oneplus/gallery2/widget/FastScrollBar;->m_ScrollOffsetY:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 290
    .local v1, "proportion":F
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # invokes: Lcom/oneplus/gallery2/widget/FastScrollBar;->setThumbPosition(F)V
    invoke-static {v3, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$900(Lcom/oneplus/gallery2/widget/FastScrollBar;F)V

    .line 291
    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrolled() - proportion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " viewportHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    iget-object v4, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # invokes: Lcom/oneplus/gallery2/widget/FastScrollBar;->syncThumbLastTouchY(I)F
    invoke-static {v4, v2}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1300(Lcom/oneplus/gallery2/widget/FastScrollBar;I)F

    move-result v4

    # setter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F
    invoke-static {v3, v4}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1002(Lcom/oneplus/gallery2/widget/FastScrollBar;F)F

    .line 295
    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrolled() - m_LastTouchY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/gallery2/widget/FastScrollBar$ScrollListener;->this$0:Lcom/oneplus/gallery2/widget/FastScrollBar;

    # getter for: Lcom/oneplus/gallery2/widget/FastScrollBar;->m_LastTouchY:F
    invoke-static {v5}, Lcom/oneplus/gallery2/widget/FastScrollBar;->access$1000(Lcom/oneplus/gallery2/widget/FastScrollBar;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
