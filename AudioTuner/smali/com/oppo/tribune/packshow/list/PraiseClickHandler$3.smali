.class Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;
.super Ljava/lang/Object;
.source "PraiseClickHandler.java"

# interfaces
.implements Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getPraiseListener(ILcom/oppo/tribune/protobuf/info/SimpleThreadInfo;Landroid/widget/TextView;Landroid/widget/TextView;)Lcom/oppo/tribune/packshow/HandlePraiseModel$OnPraiseFinishListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

.field final synthetic val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

.field final synthetic val$imgTxv:Landroid/widget/TextView;

.field final synthetic val$praiseTxv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/packshow/list/PraiseClickHandler;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iput-object p2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$praiseTxv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

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
    const v6, 0x7f0b000e

    .line 251
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$praiseTxv:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    if-eqz p1, :cond_3

    .line 255
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v4, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getTagAnimFromTxv(Landroid/widget/TextView;)I

    move-result v3

    sget v4, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_ANIMATION_END:I

    if-ne v3, v4, :cond_2

    .line 256
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v4, v4, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080040

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    const v4, 0x7f0201ab

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    sget v4, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_SUCCESS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 261
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v3}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->getPraise()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .line 262
    .local v0, "like":J
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v3, v3, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "praise":Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$praiseTxv:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setIsLike(I)V

    .line 265
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$entity:Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    invoke-virtual {v3, v0, v1}, Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;->setPraise(J)V

    .line 269
    .end local v0    # "like":J
    .end local v2    # "praise":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    const v4, 0x7f0b0010

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 270
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v3, v3, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p3, v4}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 267
    :cond_3
    iget-object v3, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    sget v4, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_FAILED:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public onStartPraise()V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$3;->val$imgTxv:Landroid/widget/TextView;

    const v1, 0x7f0b000e

    sget v2, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_START:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 246
    :cond_0
    return-void
.end method
