.class Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;
.super Ljava/lang/Object;
.source "TribunePostItemPraiseClkHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getPraiseClkListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;
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


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Lcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;I)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    iput-object p2, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    iput-object p3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iput p4, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, "praiseTxv":Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 45
    .local v0, "commendImageTxv":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    if-eqz v5, :cond_0

    .line 46
    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    invoke-virtual {v5}, Lcom/oppo/tribune/square/TribunePostItemView;->getTxvPraise()Landroid/widget/TextView;

    move-result-object v2

    .line 47
    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    invoke-virtual {v5}, Lcom/oppo/tribune/square/TribunePostItemView;->getTxvCommendImage()Landroid/widget/TextView;

    move-result-object v0

    .line 49
    :cond_0
    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # invokes: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->startScaleAnim(Landroid/widget/TextView;)V
    invoke-static {v5, v0}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$000(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Landroid/widget/TextView;)V

    .line 50
    invoke-static {}, Lcom/oppo/tribune/ui/CustomToast;->cancelToast()V

    .line 52
    sget-wide v6, Lcom/oppo/tribune/CommunityApplication;->current_uid:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 53
    iget-object v3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$100(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0c00ba

    invoke-static {v3, v5, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    iget-object v6, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v6}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAuthorid()J

    move-result-wide v6

    # invokes: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->checkPraiseSelf(J)Z
    invoke-static {v5, v6, v7}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$200(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;J)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    iget-object v6, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v6}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getIsLike()I

    move-result v6

    if-ne v6, v3, :cond_4

    :goto_1
    # invokes: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->checkHavePraise(ZLandroid/widget/TextView;)Z
    invoke-static {v5, v3, v2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$300(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;ZLandroid/widget/TextView;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # invokes: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->checkNetwork()Z
    invoke-static {v3}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$400(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # invokes: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getTagModelFromTxv(Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    invoke-static {v3, v2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$500(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    move-result-object v1

    .line 67
    .local v1, "model":Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    :cond_3
    new-instance v1, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    .end local v1    # "model":Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    iget-object v3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    # getter for: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$600(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->this$0:Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;

    iget v5, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$position:I

    iget-object v6, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$itemView:Lcom/oppo/tribune/square/TribunePostItemView;

    iget-object v7, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    # invokes: Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getPraiseListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
    invoke-static {v4, v5, v6, v7, v2}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->access$700(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;-><init>(Landroid/content/Context;Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;)V

    .line 73
    .restart local v1    # "model":Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    const v3, 0x7f0b0010

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 74
    iget-object v3, p0, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;->addPraise(J)V

    goto :goto_0

    .end local v1    # "model":Lcom/oppo/tribune/packshow/HandlePackPraiseModel;
    :cond_4
    move v3, v4

    .line 58
    goto :goto_1
.end method
