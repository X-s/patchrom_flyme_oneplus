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
    const v0, 0x7f0400af

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
    const v0, 0x7f0400af

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
    const v0, 0x7f0400af

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

    const v2, 0x7f0c01fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitleString:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0212

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
    const v0, 0x7f020134

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00dd

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
    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftRadio()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getLeftTextSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftTextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getRightRadio()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public getRightTextSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getRightTextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
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
    const v0, 0x7f12014e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitle:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f12014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftLinearLayout:Landroid/widget/LinearLayout;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f120153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightLinearLayout:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v0, 0x7f120152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f120150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitle:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    const v0, 0x7f120151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummary:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v0, 0x7f120156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f120154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitle:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v0, 0x7f120155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummary:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v0, 0x7f120136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    .line 145
    const v0, 0x7f120137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftText:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f120138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightText:Landroid/widget/TextView;

    .line 149
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

    .line 153
    iget-boolean v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->isRightHandEnable:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mImage:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 261
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 284
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

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->notifyChanged()V

    .line 288
    return-void

    .line 266
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    .line 268
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 269
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 276
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->setEnjouRight(Z)V

    .line 278
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 279
    iget-object v3, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightRadio:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 284
    goto :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x7f12014f
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
    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceCategory;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setCategoryTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mCategoryTitleString:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setEnjouRight(Z)V
    .locals 3
    .param p1, "right"    # Z

    .prologue
    const v2, 0x7f0c00dd

    const v1, 0x7f0c00dc

    .line 184
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightSummary:Ljava/lang/String;

    .line 190
    const v0, 0x7f020134

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    .line 202
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftSummary:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightSummary:Ljava/lang/String;

    .line 198
    const v0, 0x7f020133

    iput v0, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->ImageId:I

    goto :goto_0
.end method

.method public setLeftTextSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextSummaryString:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mLeftTextTitleString:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setRightTextSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextSummaryString:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setRightTextTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/ui/OPRadioButtonPreference;->mRightTextTitleString:Ljava/lang/String;

    .line 242
    return-void
.end method
