.class public Lcom/android/settings_ex/ui/OPRadioButtonPreference;
.super Landroid/preference/PreferenceCategory;
.source "OPRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private ImageId:I

.field private isRightHandEnable:Z

.field private mCategoryTitle:Landroid/widget/TextView;

.field private mCategoryTitleString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mLeftLinearLayout:Landroid/widget/LinearLayout;

.field private mLeftRadio:Landroid/widget/RadioButton;

.field private mLeftSummary:Ljava/lang/String;

.field private mLeftText:Landroid/widget/TextView;

.field private mLeftTextSummary:Landroid/widget/TextView;

.field private mLeftTextSummaryString:Ljava/lang/String;

.field private mLeftTextTitle:Landroid/widget/TextView;

.field private mLeftTextTitleString:Ljava/lang/String;

.field private mRightLinearLayout:Landroid/widget/LinearLayout;

.field private mRightRadio:Landroid/widget/RadioButton;

.field private mRightSummary:Ljava/lang/String;

.field private mRightText:Landroid/widget/TextView;

.field private mRightTextSummary:Landroid/widget/TextView;

.field private mRightTextSummaryString:Ljava/lang/String;

.field private mRightTextTitle:Landroid/widget/TextView;

.field private mRightTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 24
    const v0, 0x7f040073

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->resid:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->isRightHandEnable:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->initViews(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const v0, 0x7f040073

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->resid:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->isRightHandEnable:Z

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->initViews(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const v0, 0x7f040073

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->resid:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->isRightHandEnable:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->initViews(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    .line 83
    iget v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->resid:I

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setLayoutResource(I)V

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b9a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090baa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitleString:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummaryString:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_key_define"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->isRightHandEnable:Z

    .line 101
    const v0, 0x7f0200aa

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightSummary:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getCategoryTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftRadio()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getLeftTextSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftTextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getRightRadio()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getRightTextSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRightTextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onBindView(Landroid/view/View;)V

    .line 114
    const v0, 0x7f0f011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitle:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f0f011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftLinearLayout:Landroid/widget/LinearLayout;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f0f0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightLinearLayout:Landroid/widget/LinearLayout;

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v0, 0x7f0f0121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0f011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitle:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const v0, 0x7f0f0120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummary:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f0f0125

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0f0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitle:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v0, 0x7f0f0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummary:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v0, 0x7f0f0111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    .line 143
    const v0, 0x7f0f0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftText:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0f0113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightText:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_acc_key_define"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->isRightHandEnable:Z

    .line 151
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->isRightHandEnable:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 163
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 259
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_acc_key_define"

    iget-object v5, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-ne v5, v1, :cond_0

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->notifyChanged()V

    .line 286
    return-void

    .line 264
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    .line 266
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 267
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    .line 276
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 277
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 282
    goto :goto_1

    .line 259
    :pswitch_data_0
    .packed-switch 0x7f0f011e
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setEnjouRight(Z)V
    .locals 3
    .param p1, "right"    # Z

    .prologue
    const v2, 0x7f090065

    const v1, 0x7f090064

    .line 182
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightSummary:Ljava/lang/String;

    .line 188
    const v0, 0x7f0200aa

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    .line 200
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightSummary:Ljava/lang/String;

    .line 196
    const v0, 0x7f0200a9

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    goto :goto_0
.end method

.method public setLeftTextSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setRightTextSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummaryString:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setRightTextTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitleString:Ljava/lang/String;

    .line 240
    return-void
.end method
