.class Lcom/oneplus/gallery/GridViewFragment$1;
.super Landroid/os/CountDownTimer;
.source "GridViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/GridViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/GridViewFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/GridViewFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 318
    iput-object p1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v4, 0x0

    .line 326
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$1000(Lcom/oneplus/gallery/GridViewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onTick() - m_RecyclerView is null"

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/oneplus/gallery/GridViewFragment$1;->cancel()V

    .line 351
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    iget v2, v2, Lcom/oneplus/gallery/GridViewFragment;->m_MotionEventX:F

    iget-object v3, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    iget v3, v3, Lcom/oneplus/gallery/GridViewFragment;->m_MotionEventY:F

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "childView":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_ItemClickListener:Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$1100(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/oneplus/gallery/GridViewFragment$OnItemClickListener;->onItemMultipleSelect(Landroid/view/View;I)V

    .line 335
    sget-object v1, Lcom/oneplus/gallery/GridViewFragment$18;->$SwitchMap$com$oneplus$gallery$GridViewFragment$AutoScrollDirection:[I

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollDirection:Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1200(Lcom/oneplus/gallery/GridViewFragment;)Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/gallery/GridViewFragment$AutoScrollDirection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollHeight:I
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1300(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 340
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollFastHeight:I
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1400(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 343
    :pswitch_2
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollHeight:I
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1300(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 346
    :pswitch_3
    iget-object v1, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_RecyclerView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/oneplus/gallery/GridViewFragment;->access$900(Lcom/oneplus/gallery/GridViewFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/gallery/GridViewFragment$1;->this$0:Lcom/oneplus/gallery/GridViewFragment;

    # getter for: Lcom/oneplus/gallery/GridViewFragment;->m_AutoScrollFastHeight:I
    invoke-static {v2}, Lcom/oneplus/gallery/GridViewFragment;->access$1400(Lcom/oneplus/gallery/GridViewFragment;)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v4, v2}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
