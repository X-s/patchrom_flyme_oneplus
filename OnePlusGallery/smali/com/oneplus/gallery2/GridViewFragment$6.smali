.class Lcom/oneplus/gallery2/GridViewFragment$6;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/GridViewFragment$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isDownwardFromAnchor:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/oneplus/gallery2/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GridViewFragment;)V
    .locals 1

    .prologue
    .line 460
    iput-object p1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    return-void
.end method

.method private unSelectItems(II)V
    .locals 6
    .param p1, "currentPosition"    # I
    .param p2, "lastTimePosition"    # I

    .prologue
    .line 657
    move v1, p2

    .local v1, "removeIndex":I
    :goto_0
    if-le p2, p1, :cond_3

    if-le v1, p1, :cond_4

    .line 659
    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v4}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 660
    .local v3, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v4, v3, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    if-eqz v4, :cond_2

    move-object v4, v3

    .line 662
    check-cast v4, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v0, v4, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 663
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v0, :cond_1

    .line 665
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;
    invoke-static {v4}, Lcom/oneplus/gallery2/GridViewFragment;->access$3600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 666
    iget-object v4, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/oneplus/gallery2/GridViewFragment;->access$3700(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 669
    :cond_1
    check-cast v3, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v3    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 657
    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_2
    if-le p2, p1, :cond_5

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    goto :goto_0

    :cond_3
    if-lt v1, p1, :cond_0

    .line 672
    :cond_4
    return-void

    .line 657
    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1    # "removeIndex":I
    .local v2, "removeIndex":I
    goto :goto_1
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 466
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    invoke-virtual {v0, p2}, Lcom/oneplus/gallery2/GridViewFragment;->isHeaderPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_IsSelectionMode:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$2500(Lcom/oneplus/gallery2/GridViewFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->onSingleItemSelected(Landroid/view/View;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->access$2600(Lcom/oneplus/gallery2/GridViewFragment;Landroid/view/View;I)V

    .line 476
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->updateToolBarTitleImageCounts()V
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$2700(Lcom/oneplus/gallery2/GridViewFragment;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->onSingleItemClicked(Landroid/view/View;I)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->access$2800(Lcom/oneplus/gallery2/GridViewFragment;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 485
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_LONG_CLICK_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$2900(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onItemLongClick() - ignore invalide position"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$3000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/widget/FastScrollBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->isScrollBarThumbGrabbed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 496
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$3100(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onItemLongClick() - m_FastScrollbar scrollBarThumbGrabbed, ignore item long click"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_3
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment$6;->onItemMultipleSelect(Landroid/view/View;I)V

    goto :goto_0

    .line 506
    :cond_4
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 507
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    instance-of v1, v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    if-eqz v1, :cond_0

    .line 509
    check-cast v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v0    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v1, v0, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v1, p2}, Lcom/oneplus/gallery2/GridViewFragment;->access$3202(Lcom/oneplus/gallery2/GridViewFragment;I)I

    .line 514
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$3300(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemLongClick() - item UI position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->performHapticFeedback(I)Z

    .line 519
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v2, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 523
    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->updateToolBarTitleImageCounts()V
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$2700(Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 525
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/gallery2/GridViewFragment$6;->onItemMultipleSelect(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public onItemMultipleSelect(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v9, -0x1

    .line 532
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v8, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v8}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v8, Lcom/oneplus/gallery2/GridViewFragment;->PROP_IS_LONG_CLICK_AVAILABLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v5, v8}, Lcom/oneplus/gallery2/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 539
    if-eq p2, v9, :cond_0

    .line 541
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/widget/FastScrollBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/gallery2/widget/FastScrollBar;->isScrollBarThumbGrabbed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 544
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 545
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v5, p2}, Lcom/oneplus/gallery2/GridViewFragment;->access$3202(Lcom/oneplus/gallery2/GridViewFragment;I)I

    .line 547
    :cond_2
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 548
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5, p2}, Lcom/oneplus/gallery2/GridViewFragment;->access$3402(Lcom/oneplus/gallery2/GridViewFragment;I)I

    .line 549
    :cond_3
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3500(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onItemMultipleSelect() - data posistion: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_AnchorPosition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v9}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_LastTimeItemPosition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v9}, Lcom/oneplus/gallery2/GridViewFragment;->access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v2, 0x0

    .line 553
    .local v2, "isDirectionReversed":Z
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    if-nez v5, :cond_c

    .line 554
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-le p2, v5, :cond_b

    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    .line 565
    :cond_4
    :goto_2
    if-nez v2, :cond_10

    .line 567
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-ge p2, v5, :cond_5

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-le p2, v5, :cond_7

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_7

    .line 568
    :cond_6
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    invoke-direct {p0, p2, v5}, Lcom/oneplus/gallery2/GridViewFragment$6;->unSelectItems(II)V

    .line 574
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-ne p2, v5, :cond_8

    .line 575
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v7}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v7

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5, v7}, Lcom/oneplus/gallery2/GridViewFragment;->access$3402(Lcom/oneplus/gallery2/GridViewFragment;I)I

    .line 577
    :cond_8
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v0

    .local v0, "index":I
    :goto_4
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    if-gt v0, p2, :cond_12

    .line 579
    :cond_9
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 580
    .local v4, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-nez v4, :cond_13

    .line 577
    .end local v4    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_a
    :goto_5
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_14

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_6
    goto :goto_4

    .end local v0    # "index":I
    :cond_b
    move v5, v7

    .line 554
    goto :goto_1

    .line 556
    :cond_c
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-ge p2, v5, :cond_d

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    if-le p2, v5, :cond_4

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    .line 559
    :cond_e
    const/4 v2, 0x1

    .line 560
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_f

    move v7, v6

    :cond_f
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->isDownwardFromAnchor:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 570
    :cond_10
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v5

    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v7}, Lcom/oneplus/gallery2/GridViewFragment;->access$3400(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v7

    invoke-direct {p0, v5, v7}, Lcom/oneplus/gallery2/GridViewFragment$6;->unSelectItems(II)V

    .line 571
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v7, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AnchorPosition:I
    invoke-static {v7}, Lcom/oneplus/gallery2/GridViewFragment;->access$3200(Lcom/oneplus/gallery2/GridViewFragment;)I

    move-result v7

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5, v7}, Lcom/oneplus/gallery2/GridViewFragment;->access$3402(Lcom/oneplus/gallery2/GridViewFragment;I)I

    goto/16 :goto_3

    .line 577
    .restart local v0    # "index":I
    :cond_11
    if-ge v0, p2, :cond_9

    .line 595
    :cond_12
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_LastTimeItemPosition:I
    invoke-static {v5, p2}, Lcom/oneplus/gallery2/GridViewFragment;->access$3402(Lcom/oneplus/gallery2/GridViewFragment;I)I

    .line 596
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->updateToolBarTitleImageCounts()V
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$2700(Lcom/oneplus/gallery2/GridViewFragment;)V

    goto/16 :goto_0

    .line 583
    .restart local v4    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_13
    instance-of v5, v4, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    if-eqz v5, :cond_a

    move-object v5, v4

    .line 585
    check-cast v5, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    iget-object v3, v5, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->media:Lcom/oneplus/gallery2/media/Media;

    .line 586
    .local v3, "media":Lcom/oneplus/gallery2/media/Media;
    if-eqz v3, :cond_a

    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 588
    check-cast v4, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;

    .end local v4    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4, v6}, Lcom/oneplus/gallery2/GridViewItemAdapter$ItemViewHolder;->setSelected(Z)V

    .line 589
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaList:Ljava/util/List;
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3600(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v5, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_SelectionMediaIndexSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/oneplus/gallery2/GridViewFragment;->access$3700(Lcom/oneplus/gallery2/GridViewFragment;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 577
    .end local v3    # "media":Lcom/oneplus/gallery2/media/Media;
    :cond_14
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    goto/16 :goto_6
.end method

.method public onItemMultipleSelectDone()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # invokes: Lcom/oneplus/gallery2/GridViewFragment;->resetAutoScrollTimer()V
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$3800(Lcom/oneplus/gallery2/GridViewFragment;)V

    .line 603
    return-void
.end method

.method public onItemMultipleSelectScrolling(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 609
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_DownThreshold:F
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$3902(Lcom/oneplus/gallery2/GridViewFragment;F)F

    .line 610
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr v1, v2

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_DownFastThreshold:F
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4002(Lcom/oneplus/gallery2/GridViewFragment;F)F

    .line 611
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_UpThreshold:F
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4102(Lcom/oneplus/gallery2/GridViewFragment;F)F

    .line 612
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$900(Lcom/oneplus/gallery2/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v2

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_UpFastThreshold:F
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4202(Lcom/oneplus/gallery2/GridViewFragment;F)F

    .line 615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_DownThreshold:F
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$3900(Lcom/oneplus/gallery2/GridViewFragment;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 617
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$1202(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_DownFastThreshold:F
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4000(Lcom/oneplus/gallery2/GridViewFragment;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->DOWN_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$1202(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$4300(Lcom/oneplus/gallery2/GridViewFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 624
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z
    invoke-static {v0, v3}, Lcom/oneplus/gallery2/GridViewFragment;->access$4302(Lcom/oneplus/gallery2/GridViewFragment;Z)Z

    .line 652
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_FastScrollbar:Lcom/oneplus/gallery2/widget/FastScrollBar;
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$3000(Lcom/oneplus/gallery2/GridViewFragment;)Lcom/oneplus/gallery2/widget/FastScrollBar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4300(Lcom/oneplus/gallery2/GridViewFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/widget/FastScrollBar;->showScrollBarThumb(Z)V

    .line 653
    return-void

    .line 628
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_UpThreshold:F
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4100(Lcom/oneplus/gallery2/GridViewFragment;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 630
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$1202(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_UpFastThreshold:F
    invoke-static {v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4200(Lcom/oneplus/gallery2/GridViewFragment;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 633
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->UP_FAST:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$1202(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$4300(Lcom/oneplus/gallery2/GridViewFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 638
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z
    invoke-static {v0, v3}, Lcom/oneplus/gallery2/GridViewFragment;->access$4302(Lcom/oneplus/gallery2/GridViewFragment;Z)Z

    goto :goto_0

    .line 643
    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    # getter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z
    invoke-static {v0}, Lcom/oneplus/gallery2/GridViewFragment;->access$4300(Lcom/oneplus/gallery2/GridViewFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    iget-object v0, v0, Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 646
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollStarted:Z
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$4302(Lcom/oneplus/gallery2/GridViewFragment;Z)Z

    .line 647
    iget-object v0, p0, Lcom/oneplus/gallery2/GridViewFragment$6;->this$0:Lcom/oneplus/gallery2/GridViewFragment;

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;->NONE:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    # setter for: Lcom/oneplus/gallery2/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/GridViewFragment;->access$1202(Lcom/oneplus/gallery2/GridViewFragment;Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;)Lcom/oneplus/gallery2/GridViewFragment$AutoScrollDirection;

    goto :goto_0
.end method
