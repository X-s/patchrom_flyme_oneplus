.class public Lcom/oppo/tribune/square/SquareTypeTitleView;
.super Landroid/widget/RelativeLayout;
.source "SquareTypeTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;
    }
.end annotation


# instance fields
.field private final TAB_SQUARE_SECTIONS:I

.field private final TAB_SQUARE_TOP_LINE:I

.field private handler:Landroid/os/Handler;

.field private mColorNormal:I

.field private mColorSelect:I

.field private mCurrentTab:I

.field private mLastTab:I

.field private mSectionsTitleTxv:Landroid/widget/TextView;

.field private mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

.field private mTitleClkLsn:Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;

.field private mTopLineTitleTxv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->TAB_SQUARE_TOP_LINE:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->TAB_SQUARE_SECTIONS:I

    .line 71
    new-instance v0, Lcom/oppo/tribune/square/SquareTypeTitleView$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/SquareTypeTitleView$1;-><init>(Lcom/oppo/tribune/square/SquareTypeTitleView;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->handler:Landroid/os/Handler;

    .line 46
    invoke-direct {p0, p1}, Lcom/oppo/tribune/square/SquareTypeTitleView;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->TAB_SQUARE_TOP_LINE:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->TAB_SQUARE_SECTIONS:I

    .line 71
    new-instance v0, Lcom/oppo/tribune/square/SquareTypeTitleView$1;

    invoke-direct {v0, p0}, Lcom/oppo/tribune/square/SquareTypeTitleView$1;-><init>(Lcom/oppo/tribune/square/SquareTypeTitleView;)V

    iput-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->handler:Landroid/os/Handler;

    .line 51
    invoke-direct {p0, p1}, Lcom/oppo/tribune/square/SquareTypeTitleView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/tribune/square/SquareTypeTitleView;)Lcom/oppo/tribune/square/SlipHalfSwitchLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTypeTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/tribune/square/SquareTypeTitleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTypeTitleView;

    .prologue
    .line 27
    iget v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorSelect:I

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/tribune/square/SquareTypeTitleView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTypeTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/tribune/square/SquareTypeTitleView;)I
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTypeTitleView;

    .prologue
    .line 27
    iget v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorNormal:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/tribune/square/SquareTypeTitleView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oppo/tribune/square/SquareTypeTitleView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSectionsTitleTxv:Landroid/widget/TextView;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v1, 0x1

    iput v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mCurrentTab:I

    .line 56
    iget v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mCurrentTab:I

    iput v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mLastTab:I

    .line 58
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SquareTypeTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 59
    .local v0, "resource":Landroid/content/res/Resources;
    const v1, 0x7f0800b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorSelect:I

    .line 60
    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorNormal:I

    .line 61
    return-void
.end method


# virtual methods
.method public doOnPageScrollEnd(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x1

    .line 200
    if-nez p1, :cond_1

    .line 201
    iput v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mCurrentTab:I

    .line 202
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->snapToScreen(I)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    if-ne p1, v1, :cond_0

    .line 204
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mCurrentTab:I

    .line 205
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->snapToScreen(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 66
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTitleClkLsn:Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;

    if-eqz v0, :cond_0

    .line 186
    iput v1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mCurrentTab:I

    .line 187
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTitleClkLsn:Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;

    invoke-interface {v0}, Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;->onLeftTitleClk()V

    .line 188
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->snapToScreen(I)V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSectionsTitleTxv:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTitleClkLsn:Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mCurrentTab:I

    .line 193
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTitleClkLsn:Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;

    invoke-interface {v0}, Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;->onRightTitleClk()V

    .line 194
    iget-object v0, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->snapToScreen(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 81
    const v2, 0x7f0b01e4

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/square/SquareTypeTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;

    .line 82
    const v2, 0x7f0b01e5

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/square/SquareTypeTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSectionsTitleTxv:Landroid/widget/TextView;

    .line 84
    const v2, 0x7f0b01e3

    invoke-virtual {p0, v2}, Lcom/oppo/tribune/square/SquareTypeTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    iput-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    .line 86
    invoke-virtual {p0}, Lcom/oppo/tribune/square/SquareTypeTitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 88
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 90
    .local v0, "width":I
    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->SetWidthItem(I)V

    .line 92
    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    new-instance v3, Lcom/oppo/tribune/square/SquareTypeTitleView$2;

    invoke-direct {v3, p0}, Lcom/oppo/tribune/square/SquareTypeTitleView$2;-><init>(Lcom/oppo/tribune/square/SquareTypeTitleView;)V

    invoke-virtual {v2, v3}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->setOnItemSelectChangedListener(Lcom/oppo/tribune/ui/PageScrollLayout$OnItemSelectChangedListener;)V

    .line 122
    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSelectTypeView:Lcom/oppo/tribune/square/SlipHalfSwitchLayout;

    new-instance v3, Lcom/oppo/tribune/square/SquareTypeTitleView$3;

    invoke-direct {v3, p0, v0}, Lcom/oppo/tribune/square/SquareTypeTitleView$3;-><init>(Lcom/oppo/tribune/square/SquareTypeTitleView;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/oppo/tribune/square/SlipHalfSwitchLayout;->setAdapter(Landroid/widget/Adapter;Z)V

    .line 175
    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;

    iget v3, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorSelect:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSectionsTitleTxv:Landroid/widget/TextView;

    iget v3, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mColorNormal:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTopLineTitleTxv:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v2, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mSectionsTitleTxv:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    return-void
.end method

.method public setOnTitleClkLsn(Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/oppo/tribune/square/SquareTypeTitleView;->mTitleClkLsn:Lcom/oppo/tribune/square/SquareTypeTitleView$OnTitleClkListener;

    .line 213
    return-void
.end method
