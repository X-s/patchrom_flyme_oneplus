.class public Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "GridViewFragment.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecyclerItemClickListener"
.end annotation


# instance fields
.field private isLongPressed:Z

.field private mActionDownTime:J

.field private mChildview:Landroid/view/View;

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mLastSelectedView:Landroid/view/View;

.field private mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

.field private mParentview:Landroid/support/v7/widget/RecyclerView;

.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/GridViewFragment;Landroid/content/Context;Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->isLongPressed:Z

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mLastSelectedView:Landroid/view/View;

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mActionDownTime:J

    .line 690
    iput-object p3, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    .line 691
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener$1;-><init>(Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;Lcom/oneplus/gallery/GridViewFragment;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 713
    return-void
.end method

.method static synthetic access$4702(Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;
    .param p1, "x1"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->isLongPressed:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mParentview:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;)Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;

    .prologue
    .line 681
    iget-object v0, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 718
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mParentview:Landroid/support/v7/widget/RecyclerView;

    .line 719
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    .line 722
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 724
    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 762
    :goto_0
    return v4

    .line 728
    :cond_0
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 730
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 731
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 732
    .local v3, "y":F
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 733
    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    invoke-virtual {v6, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 734
    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 738
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 762
    :goto_1
    iget-boolean v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->isLongPressed:Z

    goto :goto_0

    .line 741
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mActionDownTime:J

    .line 742
    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # setter for: Lcom/oneplus/gallery/GridViewFragment;->m_IsRecyclerTouched:Z
    invoke-static {v5, v4}, Lcom/oneplus/gallery/GridViewFragment;->access$5102(Lcom/oneplus/gallery/GridViewFragment;Z)Z

    goto :goto_1

    .line 745
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mActionDownTime:J

    sub-long v0, v6, v8

    .line 746
    .local v0, "diff":J
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    sget-object v6, Lcom/oneplus/gallery/GridViewFragment;->PROP_IS_SCROLLING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v4, v6}, Lcom/oneplus/gallery/GridViewFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_2

    .line 747
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    iget-object v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    iget-object v7, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    invoke-interface {v4, v6, v7}, Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 749
    :cond_2
    iget-boolean v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->isLongPressed:Z

    if-eqz v4, :cond_3

    .line 751
    iput-boolean v5, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->isLongPressed:Z

    .line 752
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mLastSelectedView:Landroid/view/View;

    .line 753
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    invoke-interface {v4}, Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;->onItemMultipleSelectDone()V

    .line 755
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # setter for: Lcom/oneplus/gallery/GridViewFragment;->m_IsRecyclerTouched:Z
    invoke-static {v4, v5}, Lcom/oneplus/gallery/GridViewFragment;->access$5102(Lcom/oneplus/gallery/GridViewFragment;Z)Z

    move v4, v5

    .line 756
    goto/16 :goto_0

    .line 738
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 768
    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 773
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    .line 774
    .local v1, "childView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 777
    .local v2, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 778
    .local v3, "y":F
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 779
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    iget-object v5, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mChildview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v3, v5

    invoke-virtual {p2, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 780
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 781
    invoke-virtual {p2, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 784
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 786
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 811
    :cond_2
    :goto_0
    return-void

    .line 788
    :pswitch_0
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Lcom/oneplus/gallery/GridViewFragment;->m_MotionEventX:F

    .line 789
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Lcom/oneplus/gallery/GridViewFragment;->m_MotionEventY:F

    .line 790
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    if-eqz v4, :cond_2

    .line 792
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mLastSelectedView:Landroid/view/View;

    if-ne v4, v1, :cond_3

    .line 793
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    invoke-interface {v4, p2}, Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;->onItemMultipleSelectScrolling(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 795
    :cond_3
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;->onItemMultipleSelect(Landroid/view/View;I)V

    .line 796
    iput-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mLastSelectedView:Landroid/view/View;

    goto :goto_0

    .line 802
    :pswitch_1
    iput-boolean v6, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->isLongPressed:Z

    .line 803
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mLastSelectedView:Landroid/view/View;

    .line 804
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->mListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    invoke-interface {v4}, Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;->onItemMultipleSelectDone()V

    .line 805
    iget-object v4, p0, Lcom/oneplus/gallery/GridViewFragment$RecyclerItemClickListener;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # setter for: Lcom/oneplus/gallery/GridViewFragment;->m_IsRecyclerTouched:Z
    invoke-static {v4, v6}, Lcom/oneplus/gallery/GridViewFragment;->access$5102(Lcom/oneplus/gallery/GridViewFragment;Z)Z

    goto :goto_0

    .line 786
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
