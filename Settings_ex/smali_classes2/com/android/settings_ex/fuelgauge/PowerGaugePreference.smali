.class public Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
.super Lcom/android/settings_ex/TintablePreference;
.source "PowerGaugePreference.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private final mIconSize:I

.field private mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPowerState:I

.field private mProgress:Ljava/lang/CharSequence;

.field private mSwitch:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/fuelgauge/BatteryEntry;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "info"    # Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/TintablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mPowerState:I

    .line 59
    if-eqz p2, :cond_0

    .end local p2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const v1, 0x7f04015e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setWidgetLayoutResource(I)V

    .line 61
    iput-object p4, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    .line 64
    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e033f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_1
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mIconSize:I

    .line 69
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    .line 57
    return-void

    .line 59
    .end local v0    # "title":Ljava/lang/CharSequence;
    .restart local p2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .end local p2    # "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_1
    move-object v0, p3

    .line 64
    goto :goto_1
.end method

.method private convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 4
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<font color=\"#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "colorfulTxt":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 136
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    .line 141
    .local v1, "encode":Landroid/text/Spanned;
    :goto_0
    return-object v1

    .line 138
    .end local v1    # "encode":Landroid/text/Spanned;
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .restart local v1    # "encode":Landroid/text/Spanned;
    goto :goto_0
.end method

.method private setButtonVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 124
    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mPowerState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    iput-object p2, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 108
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-ne v2, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const v3, 0x7f0e03c1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "txt":Ljava/lang/String;
    const-string/jumbo v1, "D94B41"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    .line 106
    return-void

    .line 111
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-nez v1, :cond_1

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const v3, 0x7f0e03c2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "txt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    .end local v0    # "txt":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .restart local v0    # "txt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/settings_ex/TintablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 152
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    .local v0, "icon":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mIconSize:I

    iget v5, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mIconSize:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    const v3, 0x7f11028e

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    .line 157
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 158
    .local v1, "mTextButtonColor":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e03bd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 164
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 165
    .local v2, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 150
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 73
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method

.method public setPercent(DD)V
    .locals 3
    .param p1, "percentOfMax"    # D
    .param p3, "percentOfTotal"    # D

    .prologue
    .line 79
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 81
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->updatePowerState()V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 78
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mPowerState:I

    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->updatePowerState()V

    .line 87
    return-void
.end method
