.class public Lcom/oppo/tribune/ui/pullview/RefreshFooterView;
.super Landroid/widget/RelativeLayout;
.source "RefreshFooterView.java"


# static fields
.field public static final FOOTER_STATE_ISLAST_PAGE:I = 0x12

.field public static final FOOTER_STATE_NETWORK_ERROR:I = 0x11

.field public static final FOOTER_STATE_NETWORK_OK:I = 0x10

.field public static final FOOTER_STATE_NORMAL:I = 0x13


# instance fields
.field private mLastHintLeft:Landroid/widget/ImageView;

.field private mLastHintRight:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTxvMore:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03005f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v1, 0x7f0b01b6

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0b01b7

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 47
    const v1, 0x7f0b01b8

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mLastHintLeft:Landroid/widget/ImageView;

    .line 48
    const v1, 0x7f0b01b9

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mLastHintRight:Landroid/widget/ImageView;

    .line 50
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setGravity(I)V

    .line 51
    return-void
.end method

.method private showLastImageHint(Z)V
    .locals 3
    .param p1, "b"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mLastHintLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mLastHintRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mLastHintLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mLastHintRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onFirstLoadComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const v1, 0x7f0c06d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    .line 69
    return-void
.end method

.method public onFristLoad()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const v1, 0x7f0c06d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-direct {p0, v2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    .line 60
    return-void
.end method

.method public onLoadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0, v2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const v1, 0x7f0c06db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-direct {p0, v2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    .line 80
    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 86
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const v1, 0x7f0c06d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setEnabled(Z)V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    .line 92
    return-void
.end method

.method public setFooterText(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 98
    packed-switch p1, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const v1, 0x7f0c06f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    invoke-direct {p0, v2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const v1, 0x7f0c06d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const v1, 0x7f0c06d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    invoke-direct {p0, v2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFooterText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->setFooterText(Ljava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public setFooterText(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isHintImgVisible"    # Z

    .prologue
    .line 128
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->mTxvMore:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    invoke-direct {p0, p2}, Lcom/oppo/tribune/ui/pullview/RefreshFooterView;->showLastImageHint(Z)V

    .line 132
    return-void
.end method
