.class Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;-><init>(Lcom/oneplus/gallery2/GridViewFragment;Landroid/content/Context;Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

.field final synthetic val$this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    iput-object p2, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->val$this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$4900(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    const/4 v1, 0x1

    # setter for: Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->isLongPressed:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->access$5002(Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;Z)Z

    .line 717
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->access$5300(Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;)Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->access$5100(Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->mParentview:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->access$5200(Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener$1;->this$1:Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;
    invoke-static {v3}, Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;->access$5100(Lcom/oneplus/gallery2/GridViewFragment$RecyclerItemClickListener;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;->onItemLongClick(Landroid/view/View;I)V

    .line 718
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 719
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 723
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method
