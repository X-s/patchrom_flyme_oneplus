.class Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;
.super Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->select(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

.field final synthetic val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFFILcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p2, "this$0_1"    # Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;
    .param p3, "$anonymous0"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .param p4, "$anonymous1"    # I
    .param p5, "$anonymous2"    # I
    .param p6, "$anonymous3"    # F
    .param p7, "$anonymous4"    # F
    .param p8, "$anonymous5"    # F
    .param p9, "$anonymous6"    # F
    .param p10, "val$swipeDir"    # I
    .param p11, "val$prevSelected"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 587
    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    move/from16 v0, p10

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIFFFF)V

    .line 589
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 592
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 593
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_0

    .line 594
    return-void

    .line 596
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_3

    .line 598
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mCallback:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get3(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$Callback;->clearView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 611
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-get1(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-wrap9(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Landroid/view/View;)V

    .line 591
    :cond_2
    return-void

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$prevSelected:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 604
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->this$0:Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$3;->val$swipeDir:I

    invoke-static {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;->-wrap8(Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper;Lcom/oneplus/lib/widget/recyclerview/ItemTouchHelper$RecoverAnimation;I)V

    goto :goto_0
.end method
