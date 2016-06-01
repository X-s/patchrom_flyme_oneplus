.class Lcom/oppo/tribune/ui/wheelview/WheelView$2;
.super Landroid/os/Handler;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/ui/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/wheelview/WheelView;)V
    .locals 0

    .prologue
    .line 871
    iput-object p1, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 874
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 875
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 876
    .local v0, "currY":I
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$500(Lcom/oppo/tribune/ui/wheelview/WheelView;)I

    move-result v2

    sub-int v1, v2, v0

    .line 877
    .local v1, "delta":I
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # setter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->lastScrollY:I
    invoke-static {v2, v0}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$502(Lcom/oppo/tribune/ui/wheelview/WheelView;I)I

    .line 878
    if-eqz v1, :cond_0

    .line 879
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # invokes: Lcom/oppo/tribune/ui/wheelview/WheelView;->doScroll(I)V
    invoke-static {v2, v1}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$400(Lcom/oppo/tribune/ui/wheelview/WheelView;I)V

    .line 884
    :cond_0
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 885
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 886
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 888
    :cond_1
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 889
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # getter for: Lcom/oppo/tribune/ui/wheelview/WheelView;->animationHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$1100(Lcom/oppo/tribune/ui/wheelview/WheelView;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 895
    :goto_0
    return-void

    .line 890
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_3

    .line 891
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    # invokes: Lcom/oppo/tribune/ui/wheelview/WheelView;->justify()V
    invoke-static {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->access$1200(Lcom/oppo/tribune/ui/wheelview/WheelView;)V

    goto :goto_0

    .line 893
    :cond_3
    iget-object v2, p0, Lcom/oppo/tribune/ui/wheelview/WheelView$2;->this$0:Lcom/oppo/tribune/ui/wheelview/WheelView;

    invoke-virtual {v2}, Lcom/oppo/tribune/ui/wheelview/WheelView;->finishScrolling()V

    goto :goto_0
.end method
