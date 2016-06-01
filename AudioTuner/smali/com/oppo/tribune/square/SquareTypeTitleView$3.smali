.class Lcom/oppo/tribune/square/SquareTypeTitleView$3;
.super Landroid/widget/BaseAdapter;
.source "SquareTypeTitleView.java"


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

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/SquareTypeTitleView;I)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$3;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    iput p2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$3;->val$width:I

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "iv":Landroid/widget/ImageView;
    if-nez p2, :cond_1

    .line 130
    new-instance v1, Landroid/widget/ImageView;

    .end local v1    # "iv":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$3;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    invoke-virtual {v6}, Lcom/oppo/tribune/square/SquareTypeTitleView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 132
    .restart local v1    # "iv":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$3;->val$width:I

    div-int/lit8 v6, v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 135
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$3;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    # getter for: Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/oppo/tribune/square/SquareTypeTitleView;->access$200(Lcom/oppo/tribune/square/SquareTypeTitleView;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 136
    .local v5, "tp":Landroid/text/TextPaint;
    iget-object v6, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$3;->this$0:Lcom/oppo/tribune/square/SquareTypeTitleView;

    invoke-virtual {v6}, Lcom/oppo/tribune/square/SquareTypeTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0652

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "displayText":Ljava/lang/String;
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 140
    .local v3, "textWidth":F
    iget v6, p0, Lcom/oppo/tribune/square/SquareTypeTitleView$3;->val$width:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v6, v3

    float-to-int v6, v6

    div-int/lit8 v4, v6, 0x3

    .line 142
    .local v4, "tom":I
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    invoke-virtual {v1, v4, v8, v4, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 145
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    move-object p2, v1

    .line 152
    .end local v0    # "displayText":Ljava/lang/String;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "textWidth":F
    .end local v4    # "tom":I
    .end local v5    # "tp":Landroid/text/TextPaint;
    :goto_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 153
    const v6, 0x7f0201d9

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    :cond_0
    return-object p2

    :cond_1
    move-object v1, p2

    .line 149
    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0
.end method
