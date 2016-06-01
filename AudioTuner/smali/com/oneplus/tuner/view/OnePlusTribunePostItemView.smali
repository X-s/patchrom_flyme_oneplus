.class public Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;
.super Landroid/widget/RelativeLayout;
.source "OnePlusTribunePostItemView.java"


# instance fields
.field private mDownloadIcon:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field private mMoreInfo:Landroid/widget/ImageView;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mUseCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 38
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mIcon:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mTitle:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0b0161

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mSummary:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0b016d

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mMoreInfo:Landroid/widget/ImageView;

    .line 42
    const v0, 0x7f0b016f

    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mUseCount:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public setCategory(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    return-void

    .line 66
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 67
    goto :goto_0

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    goto :goto_0

    .line 75
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    goto :goto_0

    .line 78
    :pswitch_4
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    goto :goto_0

    .line 81
    :pswitch_5
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    goto :goto_0

    .line 84
    :pswitch_6
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 85
    goto :goto_0

    .line 87
    :pswitch_7
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    goto/16 :goto_0

    .line 90
    :pswitch_8
    invoke-virtual {p0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mUseCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public setItemClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public setMoreInfoClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mMoreInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setSummaryGone()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mSummary:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setUseCountGone()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mUseCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public setUsedState(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_0

    const v0, 0x195555b4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->setBackgroundColor(I)V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mMoreInfo:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    :goto_1
    return-void

    .line 101
    :cond_0
    const v0, 0xffffff

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/oneplus/tuner/view/OnePlusTribunePostItemView;->mMoreInfo:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
