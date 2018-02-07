.class public Lcom/oneplus/settings/ui/OPButtonPreference;
.super Lcom/android/settings_exlib/RestrictedPreference;
.source "OPButtonPreference.java"


# instance fields
.field private mButtonEnable:Z

.field private mButtonString:Ljava/lang/String;

.field private mButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/TextView;

.field private mTextButtonColor:Landroid/content/res/ColorStateList;

.field private mTextSummary:Landroid/widget/TextView;

.field private mTextSummaryString:Ljava/lang/String;

.field private mTextSummaryVisible:Z

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 36
    const v0, 0x7f0400d2

    iput v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    .line 65
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const v0, 0x7f0400d2

    iput v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    .line 60
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const v0, 0x7f0400d2

    iput v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    .line 55
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mContext:Landroid/content/Context;

    .line 70
    iget v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLayoutResource(I)V

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    .line 68
    return-void
.end method


# virtual methods
.method public getButtonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftTextSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftTextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings_exlib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 87
    const v0, 0x7f1101d6

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f1101db

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    .line 89
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const v0, 0x7f1101d8

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitle:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v0, 0x7f1101d9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 89
    goto :goto_0

    :cond_2
    move v1, v2

    .line 98
    goto :goto_1
.end method

.method public setButtonEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    .line 119
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    .line 117
    return-void
.end method

.method public setButtonString(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonString"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    .line 150
    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    .line 124
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    .line 122
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    .line 160
    return-void
.end method

.method public setLeftTextSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    .line 136
    return-void

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    goto :goto_0
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    .line 127
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLeftTextSummary(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public setSummaryVisibility(Z)V
    .locals 0
    .param p1, "visiable"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    .line 111
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    .line 109
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    .line 171
    return-void
.end method
