.class Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;
.super Ljava/lang/Object;
.source "PraiseClickHandler.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getAnimLsn(Landroid/widget/TextView;)Landroid/view/animation/Animation$AnimationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

.field final synthetic val$imgTxv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/packshow/list/PraiseClickHandler;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iput-object p2, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->val$imgTxv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->val$imgTxv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->val$imgTxv:Landroid/widget/TextView;

    const v1, 0x7f0b000f

    sget v2, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_ANIMATION_END:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->this$0:Lcom/oppo/tribune/packshow/list/PraiseClickHandler;

    iget-object v1, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->val$imgTxv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->getTagParseFromTxv(Landroid/widget/TextView;)I

    move-result v0

    sget v1, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_PARSE_SUCCESS:I

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->val$imgTxv:Landroid/widget/TextView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 199
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->val$imgTxv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/oppo/tribune/packshow/list/PraiseClickHandler$2;->val$imgTxv:Landroid/widget/TextView;

    const v1, 0x7f0b000f

    sget v2, Lcom/oppo/tribune/packshow/list/PraiseClickHandler;->PRAISE_ANIMATION_START:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 183
    :cond_0
    return-void
.end method
