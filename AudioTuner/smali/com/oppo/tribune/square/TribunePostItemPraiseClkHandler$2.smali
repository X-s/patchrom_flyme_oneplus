.class Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;
.super Ljava/lang/Object;
.source "TribunePostItemPraiseClkHandler.java"

# interfaces
.implements Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getPraiseListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

.field final synthetic val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

.field final synthetic val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

.field final synthetic val$position:I

.field final synthetic val$praiseTxv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Landroid/widget/TextView;Lcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    iput-object p2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    iput-object p4, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iput p5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishPraise(ZILjava/lang/String;)V
    .locals 8
    .param p1, "isSuccess"    # Z
    .param p2, "msgcode"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f0b000e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 97
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    if-eqz p1, :cond_2

    .line 101
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    sget v3, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_SUCCESS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getPraise()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 104
    .local v0, "like":J
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    invoke-virtual {v2, v0, v1, v6}, Lcom/oppo/tribune/square/TribunePostItemView;->setPraise(JZ)V

    .line 105
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v2, v6}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setIsLike(I)V

    .line 106
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v2, v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setPraise(J)V

    .line 112
    .end local v0    # "like":J
    :goto_1
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    const v3, 0x7f0b0010

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 114
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$800(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, v7}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 115
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mPraisePostCallback:Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;
    invoke-static {v2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$900(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mPraisePostCallback:Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;
    invoke-static {v2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$1000(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iget v4, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$position:I

    invoke-interface {v2, p1, v3, v4}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$PraisePostCallback;->onPraiseFinish(ZLcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V

    goto :goto_0

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    invoke-virtual {v2, v7}, Lcom/oppo/tribune/square/TribunePostItemView;->setPraiseColor(Z)V

    .line 109
    iget-object v2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    sget v3, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_FAILED:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public onStartPraise()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/TribunePostItemView;->setPraiseColor(Z)V

    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$2;->val$praiseTxv:Landroid/widget/TextView;

    const v1, 0x7f0b000e

    sget v2, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_START:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 92
    :cond_0
    return-void
.end method
