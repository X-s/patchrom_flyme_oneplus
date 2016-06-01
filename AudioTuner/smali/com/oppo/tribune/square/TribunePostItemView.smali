.class public Lcom/oppo/tribune/square/TribunePostItemView;
.super Landroid/widget/RelativeLayout;
.source "TribunePostItemView.java"


# instance fields
.field private mPraiseNormalColor:Landroid/content/res/ColorStateList;

.field private mPraiseSelectColor:I

.field private mRlLoadAndUse:Landroid/widget/RelativeLayout;

.field private mRlZan:Landroid/widget/RelativeLayout;

.field private mTxvCommendImage:Landroid/widget/TextView;

.field private mTxvComment:Landroid/widget/TextView;

.field private mTxvNum:Landroid/widget/TextView;

.field private mTxvPraise:Landroid/widget/TextView;

.field private mTxvSummary:Landroid/widget/TextView;

.field private mTxvTitle:Landroid/widget/TextView;

.field private mTxvTunerTime:Landroid/widget/TextView;

.field private mTxvTunerUser:Landroid/widget/TextView;

.field private mTxvView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getTxvCommendImage()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvCommendImage:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTxvNum()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTxvPraise()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0b01e8

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvTitle:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0b01ea

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvSummary:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0b01ec

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvTunerUser:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0b01eb

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvTunerTime:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0b01f5

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvView:Landroid/widget/TextView;

    .line 65
    const v0, 0x7f0b01f6

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvComment:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0b01f7

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0b00a5

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0b00a4

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvCommendImage:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseNormalColor:Landroid/content/res/ColorStateList;

    .line 77
    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseSelectColor:I

    .line 79
    const v0, 0x7f0b01ed

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mRlZan:Landroid/widget/RelativeLayout;

    .line 80
    const v0, 0x7f0b01f1

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/square/TribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mRlLoadAndUse:Landroid/widget/RelativeLayout;

    .line 81
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .param p1, "author"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvTunerUser:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 4
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvComment:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0661

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvComment:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0664

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setHeadImgClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 184
    return-void
.end method

.method public setItemClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/TribunePostItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/square/TribunePostItemView;->setViewCountClkLsn(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method public setLoadAndUseClkLsn(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;ILcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 2
    .param p1, "handler"    # Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;
    .param p2, "position"    # I
    .param p3, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p1, p2, p0, p3}, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler;->getLoadAndUseClkListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 212
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mRlLoadAndUse:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method

.method public setNum(JZ)V
    .locals 3
    .param p1, "count"    # J
    .param p3, "hasPraise"    # Z

    .prologue
    .line 170
    invoke-virtual {p0, p3}, Lcom/oppo/tribune/square/TribunePostItemView;->setPraiseColor(Z)V

    .line 171
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setNumColor(Z)V
    .locals 2
    .param p1, "hasPraise"    # Z

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseSelectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseNormalColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setPraise(JZ)V
    .locals 5
    .param p1, "count"    # J
    .param p3, "hasPraise"    # Z

    .prologue
    const/4 v4, 0x0

    .line 137
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 138
    invoke-virtual {p0, p3}, Lcom/oppo/tribune/square/TribunePostItemView;->setPraiseColor(Z)V

    .line 139
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0665

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v4}, Lcom/oppo/tribune/square/TribunePostItemView;->setPraiseColor(Z)V

    .line 146
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0662

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPraiseBtnClkLsn(Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;ILcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)V
    .locals 2
    .param p1, "handler"    # Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;
    .param p2, "position"    # I
    .param p3, "entity"    # Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->clearTxvTag(Landroid/widget/TextView;)V

    .line 195
    invoke-virtual {p1, p2, p0, p3}, Lcom/oppo/tribune/square/TribunePostItemPraiseClkHandler;->getPraiseClkListener(ILcom/oppo/tribune/square/TribunePostItemView;Lcom/oppo/tribune/protobuf/info/SimpleThreadInfo;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 197
    .local v0, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mRlZan:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method

.method public setPraiseColor(Z)V
    .locals 2
    .param p1, "hasPraise"    # Z

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseSelectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseSelectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvPraise:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseNormalColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 161
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mPraiseSelectColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setPraiseNum(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvNum:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/oppo/tribune/util/Utils;->checkNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-void
.end method

.method public setReplyClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvComment:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvTunerTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public setViewCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "count"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0660

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oppo/tribune/square/TribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0663

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setViewCountClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oppo/tribune/square/TribunePostItemView;->mTxvView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method
