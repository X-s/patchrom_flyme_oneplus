.class Lcom/oppo/tribune/square/SquareTypeTitleView$2;
.super Ljava/lang/Object;
.source "SquareTypeTitleView.java"

# interfaces
.implements Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/SquareTypeTitleView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/SquareTypeTitleView;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSameScreen()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public onScreenScroll(I)V
    .locals 0
    .param p1, "nextScreen"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onSelectEnd(I)V
    .locals 2
    .param p1, "currentScreen"    # I

    .prologue
    .line 102
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$200(Lcom/oppo/tribune/square/SquareTypeTitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorSelect:I
    invoke-static {v1}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$100(Lcom/oppo/tribune/square/SquareTypeTitleView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mSectionsTitleTxv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$400(Lcom/oppo/tribune/square/SquareTypeTitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorNormal:I
    invoke-static {v1}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$300(Lcom/oppo/tribune/square/SquareTypeTitleView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    if-nez p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$200(Lcom/oppo/tribune/square/SquareTypeTitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorNormal:I
    invoke-static {v1}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$300(Lcom/oppo/tribune/square/SquareTypeTitleView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mSectionsTitleTxv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$400(Lcom/oppo/tribune/square/SquareTypeTitleView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$2;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorSelect:I
    invoke-static {v1}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$100(Lcom/oppo/tribune/square/SquareTypeTitleView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onSelectStart(I)V
    .locals 0
    .param p1, "currentScreen"    # I

    .prologue
    .line 98
    return-void
.end method
