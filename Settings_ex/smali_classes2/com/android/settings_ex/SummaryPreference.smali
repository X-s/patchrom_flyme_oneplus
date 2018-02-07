.class public Lcom/android/settings_ex/SummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "SummaryPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SummaryPreference"


# instance fields
.field private mAmount:Ljava/lang/String;

.field private mChartEnabled:Z

.field private mColorsSet:Z

.field private mEndLabel:Ljava/lang/String;

.field private mLeft:I

.field private mLeftRatio:F

.field private mMiddle:I

.field private mMiddleRatio:F

.field private mRight:I

.field private mRightRatio:F

.field private mStartLabel:Ljava/lang/String;

.field private mUnits:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/SummaryPreference;->mColorsSet:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SummaryPreference;->mChartEnabled:Z

    .line 44
    const v0, 0x7f04018c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SummaryPreference;->setLayoutResource(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const v6, 0x7f1102e0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 95
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f1102bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/LinearColorBar;

    .line 97
    .local v0, "colorBar":Lcom/android/settings_ex/applications/LinearColorBar;
    iget-boolean v1, p0, Lcom/android/settings_ex/SummaryPreference;->mChartEnabled:Z

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v0, v4}, Lcom/android/settings_ex/applications/LinearColorBar;->setVisibility(I)V

    .line 99
    iget v1, p0, Lcom/android/settings_ex/SummaryPreference;->mLeftRatio:F

    iget v2, p0, Lcom/android/settings_ex/SummaryPreference;->mMiddleRatio:F

    iget v3, p0, Lcom/android/settings_ex/SummaryPreference;->mRightRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 100
    iget-boolean v1, p0, Lcom/android/settings_ex/SummaryPreference;->mColorsSet:Z

    if-eqz v1, :cond_0

    .line 101
    iget v1, p0, Lcom/android/settings_ex/SummaryPreference;->mLeft:I

    iget v2, p0, Lcom/android/settings_ex/SummaryPreference;->mMiddle:I

    iget v3, p0, Lcom/android/settings_ex/SummaryPreference;->mRight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setColors(III)V

    .line 107
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ex/SummaryPreference;->mChartEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    :cond_1
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :goto_1
    return-void

    .line 104
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/settings_ex/applications/LinearColorBar;->setVisibility(I)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/SummaryPreference;->mStartLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/SummaryPreference;->mEndLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 4
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/SummaryPreference;->mAmount:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings_ex/SummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e089c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 58
    iget-object v2, p0, Lcom/android/settings_ex/SummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings_ex/SummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 57
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setChartEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings_ex/SummaryPreference;->mChartEnabled:Z

    if-eq v0, p1, :cond_0

    .line 49
    iput-boolean p1, p0, Lcom/android/settings_ex/SummaryPreference;->mChartEnabled:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/SummaryPreference;->notifyChanged()V

    .line 47
    :cond_0
    return-void
.end method

.method public setColors(III)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "middle"    # I
    .param p3, "right"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/android/settings_ex/SummaryPreference;->mLeft:I

    .line 85
    iput p2, p0, Lcom/android/settings_ex/SummaryPreference;->mMiddle:I

    .line 86
    iput p3, p0, Lcom/android/settings_ex/SummaryPreference;->mRight:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/SummaryPreference;->mColorsSet:Z

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/SummaryPreference;->notifyChanged()V

    .line 83
    return-void
.end method

.method public setLabels(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/SummaryPreference;->mStartLabel:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/settings_ex/SummaryPreference;->mEndLabel:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/SummaryPreference;->notifyChanged()V

    .line 70
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "middle"    # F
    .param p3, "right"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/android/settings_ex/SummaryPreference;->mLeftRatio:F

    .line 78
    iput p2, p0, Lcom/android/settings_ex/SummaryPreference;->mMiddleRatio:F

    .line 79
    iput p3, p0, Lcom/android/settings_ex/SummaryPreference;->mRightRatio:F

    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/SummaryPreference;->notifyChanged()V

    .line 76
    return-void
.end method

.method public setUnits(Ljava/lang/String;)V
    .locals 4
    .param p1, "units"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/settings_ex/SummaryPreference;->mUnits:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/SummaryPreference;->mAmount:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SummaryPreference;->mUnits:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/SummaryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e089c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/SummaryPreference;->mAmount:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings_ex/SummaryPreference;->mUnits:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 65
    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    return-void
.end method
