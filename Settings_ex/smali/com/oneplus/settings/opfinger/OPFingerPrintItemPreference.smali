.class public Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;
.super Landroid/preference/Preference;
.source "OPFingerPrintItemPreference.java"


# static fields
.field private static BACKGROUND_COLOR:Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

.field private mBackGroundView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHighlightBackgroundColor:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mLayoutResId:I

.field private mOPFingerPrintSummary:Ljava/lang/String;

.field private mOPFingerPrintTitle:Ljava/lang/String;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "#239ff1"

    sput-object v0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->BACKGROUND_COLOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    const v0, 0x7f04008d

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->initViews(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const v0, 0x7f04008d

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    .line 43
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->initViews(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const v0, 0x7f04008d

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    .line 50
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->initViews(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    return p1
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mContext:Landroid/content/Context;

    .line 55
    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->setLayoutResource(I)V

    .line 56
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    const v0, 0x7f0f0192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    .line 78
    const v0, 0x7f0f0194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mTitleView:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f0195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mSummaryView:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mOPFingerPrintTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mOPFingerPrintSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    .line 86
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    sget-object v1, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->BACKGROUND_COLOR:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mAlphaAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->start()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mBackGroundView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setOPFingerSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mOPFingerPrintSummary:Ljava/lang/String;

    .line 127
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->notifyChanged()V

    .line 128
    return-void
.end method

.method public setOPFingerTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mOPFingerPrintTitle:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->notifyChanged()V

    .line 123
    return-void
.end method

.method public updateBackgroundColor(Z)V
    .locals 0
    .param p1, "highLight"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->mHighlightBackgroundColor:Z

    .line 132
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->notifyChanged()V

    .line 133
    return-void
.end method
