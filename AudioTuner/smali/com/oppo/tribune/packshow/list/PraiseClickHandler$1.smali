.class Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;
.super Ljava/lang/Object;
.source "PraiseClickHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getPraiseClkLsn(ILcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;Landroid/widget/TextView;Z)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

.field final synthetic val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

.field final synthetic val$havePraise:Z

.field final synthetic val$imgTxv:Landroid/widget/TextView;

.field final synthetic val$position:I

.field final synthetic val$praiseTxv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/packshow/list/PraiseClickHandler;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;Landroid/widget/TextView;ZI)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iput-object p2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iput-object p3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$praiseTxv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$imgTxv:Landroid/widget/TextView;

    iput-boolean p5, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$havePraise:Z

    iput p6, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$praiseTxv:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$imgTxv:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$imgTxv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->startScaleAnim(Landroid/widget/TextView;)V

    .line 126
    invoke-static {}, Lcom/oppo/tribune/ui/CustomToast;->cancelToast()V

    .line 127
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    invoke-virtual {v1}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->checkNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    invoke-virtual {v1}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->checkLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getAuthorid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->checkPraiseSelf(J)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-boolean v2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$havePraise:Z

    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$imgTxv:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->checkHavePraise(ZLandroid/widget/TextView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$imgTxv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getTagModelFromTxv(Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    move-result-object v0

    .line 134
    .local v0, "model":Lcom/oppo/tribune/packshow/HandlePraiseModel;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oppo/tribune/packshow/HandlePraiseModel;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    new-instance v2, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;

    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v3, v3, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget v5, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$position:I

    iget-object v6, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    iget-object v7, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$praiseTxv:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$imgTxv:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getPraiseListener(ILcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oppo/tribune/packshow/HandlePackPraiseModel;-><init>(Landroid/content/Context;Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;)V

    iput-object v2, v1, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mModel:Lcom/oppo/tribune/packshow/HandlePraiseModel;

    .line 141
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$imgTxv:Landroid/widget/TextView;

    const v2, 0x7f0b0010

    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v3, v3, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mModel:Lcom/oppo/tribune/packshow/HandlePraiseModel;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v1, v1, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mModel:Lcom/oppo/tribune/packshow/HandlePraiseModel;

    iget-object v2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$1;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v2}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getTid()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/oppo/tribune/packshow/HandlePraiseModel;->addPraise(J)V

    goto :goto_0
.end method
