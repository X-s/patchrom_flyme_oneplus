.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->postDispatchSwipe(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

.field final synthetic val$anim:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p2, "val$anim"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
    .param p3, "val$swipeDir"    # I

    .prologue
    .line 653
    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->val$anim:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 656
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->val$anim:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-eqz v1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->val$anim:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 659
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 663
    .local v0, "animator":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 667
    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 664
    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-wrap2(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->val$anim:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->onSwiped(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method
