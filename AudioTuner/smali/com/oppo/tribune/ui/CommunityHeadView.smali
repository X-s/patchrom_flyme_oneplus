.class public Lcom/oppo/tribune/ui/CommunityHeadView;
.super Landroid/widget/RelativeLayout;
.source "CommunityHeadView.java"


# instance fields
.field private mImgCenter:Landroid/widget/ImageView;

.field private mImgLeft:Landroid/widget/ImageView;

.field private mImgRight:Landroid/widget/ImageView;

.field private mImgRight2:Landroid/widget/ImageView;

.field private mProgressRight:Landroid/widget/ProgressBar;

.field private mTxvCenter:Landroid/widget/TextView;

.field private mTxvLeft:Landroid/widget/TextView;

.field private mTxvRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/CommunityHeadView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/oppo/tribune/ui/CommunityHeadView;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private getDrawableFromResId(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 236
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/CommunityHeadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 240
    :goto_0
    return-object v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "CommunityHeadView"

    const-string v3, "getDrawableFromResId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStringFromResId(I)Ljava/lang/String;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/oppo/tribune/ui/CommunityHeadView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "CommunityHeadView"

    const-string v3, "getStringFromResId not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03001c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 52
    const v1, 0x7f0b0092

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvLeft:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0b0094

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0b0096

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvRight:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgLeft:Landroid/widget/ImageView;

    .line 57
    const v1, 0x7f0b0095

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgCenter:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f0b0097

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0b0098

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight2:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f0b0099

    invoke-virtual {p0, v1}, Lcom/oppo/tribune/ui/CommunityHeadView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mProgressRight:Landroid/widget/ProgressBar;

    .line 63
    return-void
.end method

.method private setImgDetail(Landroid/widget/ImageView;II)Z
    .locals 4
    .param p1, "img"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I
    .param p3, "bgResId"    # I

    .prologue
    const/4 v3, 0x4

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "result":Z
    if-gtz p2, :cond_0

    .line 206
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :goto_0
    return v1

    .line 208
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    invoke-direct {p0, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->getDrawableFromResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 211
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    if-lez p3, :cond_2

    .line 215
    invoke-direct {p0, p3}, Lcom/oppo/tribune/ui/CommunityHeadView;->getDrawableFromResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setTxvDetail(Landroid/widget/TextView;II)Z
    .locals 4
    .param p1, "txv"    # Landroid/widget/TextView;
    .param p2, "resId"    # I
    .param p3, "bgResId"    # I

    .prologue
    const/4 v3, 0x4

    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "result":Z
    if-gtz p2, :cond_0

    .line 186
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :goto_0
    return v0

    .line 188
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-direct {p0, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->getStringFromResId(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "text":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 191
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    if-lez p3, :cond_2

    .line 195
    invoke-direct {p0, p3}, Lcom/oppo/tribune/ui/CommunityHeadView;->getDrawableFromResId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClassicsTheme()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 306
    const v0, 0x7f020141

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/CommunityHeadView;->setBackgroundResource(I)V

    .line 307
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    const-string v1, "#292929"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 309
    return-void
.end method

.method public onNewYearTheme()V
    .locals 2

    .prologue
    .line 301
    const v0, 0x7f020133

    invoke-virtual {p0, v0}, Lcom/oppo/tribune/ui/CommunityHeadView;->setBackgroundResource(I)V

    .line 302
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    return-void
.end method

.method public setCenterClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 296
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 297
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 298
    return-void
.end method

.method public setCenterClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgCenter:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    :cond_0
    return-void
.end method

.method public setCenterDetail(II)V
    .locals 1
    .param p1, "contentResId"    # I
    .param p2, "bgResId"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgCenter:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setImgDetail(Landroid/widget/ImageView;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setTxvDetail(Landroid/widget/TextView;II)Z

    .line 153
    :cond_0
    return-void
.end method

.method public setCenterResText(Ljava/lang/String;I)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    if-lez p2, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvCenter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public setCenterResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oppo/tribune/ui/CommunityHeadView;->setCenterDetail(II)V

    .line 124
    return-void
.end method

.method public setLeftClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 287
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 288
    return-void
.end method

.method public setLeftClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_0
    return-void
.end method

.method public setLeftDetail(II)V
    .locals 1
    .param p1, "contentResId"    # I
    .param p2, "bgResId"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgLeft:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setImgDetail(Landroid/widget/ImageView;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvLeft:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setTxvDetail(Landroid/widget/TextView;II)Z

    .line 97
    :cond_0
    return-void
.end method

.method public setLeftDetailVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvLeft:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public setLeftResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 82
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftDetail(II)V

    .line 83
    return-void
.end method

.method public setResource(III)V
    .locals 0
    .param p1, "resIdLeft"    # I
    .param p2, "resIdCenter"    # I
    .param p3, "resIdRight"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftResource(I)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setCenterResource(I)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/oppo/tribune/ui/CommunityHeadView;->setRightResource(I)V

    .line 73
    return-void
.end method

.method public setResourceClkLsn(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View$OnClickListener;
    .param p2, "center"    # Landroid/view/View$OnClickListener;
    .param p3, "right"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/oppo/tribune/ui/CommunityHeadView;->setLeftClkLsn(Landroid/view/View$OnClickListener;)V

    .line 246
    invoke-virtual {p0, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setCenterClkLsn(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-virtual {p0, p3}, Lcom/oppo/tribune/ui/CommunityHeadView;->setRightClkLsn(Landroid/view/View$OnClickListener;)V

    .line 248
    return-void
.end method

.method public setRight2ClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    :cond_0
    return-void
.end method

.method public setRight2Detail(II)V
    .locals 1
    .param p1, "contentResId"    # I
    .param p2, "bgResId"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight2:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setImgDetail(Landroid/widget/ImageView;II)Z

    .line 181
    return-void
.end method

.method public setRight2DetailVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public setRightClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 292
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 293
    return-void
.end method

.method public setRightClkLsn(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setRightDetail(II)V
    .locals 1
    .param p1, "contentResId"    # I
    .param p2, "bgResId"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setImgDetail(Landroid/widget/ImageView;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvRight:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/tribune/ui/CommunityHeadView;->setTxvDetail(Landroid/widget/TextView;II)Z

    .line 177
    :cond_0
    return-void
.end method

.method public setRightDetailVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mTxvRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mImgRight2:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public setRightProgress(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mProgressRight:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/oppo/tribune/ui/CommunityHeadView;->mProgressRight:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 162
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/oppo/tribune/ui/CommunityHeadView;->setRightDetail(II)V

    .line 163
    return-void
.end method
