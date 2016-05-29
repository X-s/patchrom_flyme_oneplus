.class public Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;
.super Landroid/preference/PreferenceCategory;
.source "OPKeyCustomizeViewCategory.java"


# instance fields
.field private ImageId:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mLayoutResId:I

.field private mLeftSummary:Ljava/lang/String;

.field private mLeftText:Landroid/widget/TextView;

.field private mRightSummary:Ljava/lang/String;

.field private mRightText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 30
    const v0, 0x7f040069

    iput v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLayoutResId:I

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->initViews(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const v0, 0x7f040069

    iput v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLayoutResId:I

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->initViews(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const v0, 0x7f040069

    iput v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLayoutResId:I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->initViews(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    .line 56
    const v0, 0x7f0200aa

    iput v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->ImageId:I

    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftSummary:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightSummary:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f080045

    const v2, 0x7f080044

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 68
    const v0, 0x7f0f0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mImage:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0f0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftText:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightText:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->ImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    const v0, 0x7f0200aa

    iget v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->ImageId:I

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 92
    iget-object v2, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 95
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "layout":Landroid/view/View;
    return-object v0
.end method

.method public setEnjouRight(Z)V
    .locals 3
    .param p1, "right"    # Z

    .prologue
    const v2, 0x7f090065

    const v1, 0x7f090064

    .line 113
    if-eqz p1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftSummary:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightSummary:Ljava/lang/String;

    .line 117
    const v0, 0x7f0200aa

    iput v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->ImageId:I

    .line 127
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mLeftSummary:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mRightSummary:Ljava/lang/String;

    .line 123
    const v0, 0x7f0200a9

    iput v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->ImageId:I

    goto :goto_0
.end method

.method public setKeyImageRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPKeyCustomizeViewCategory;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 109
    :cond_0
    return-void
.end method
