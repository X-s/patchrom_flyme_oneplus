.class public Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
.super Lcom/android/settings_ex/AppProgressPreference;
.source "PowerGaugePreference.java"


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;

.field private mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/fuelgauge/BatteryEntry;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "info"    # Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    .prologue
    .line 39
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/AppProgressPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    if-eqz p2, :cond_0

    .end local p2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 41
    iput-object p4, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    .line 44
    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_1
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 46
    return-void

    .line 40
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

    .line 44
    goto :goto_1
.end method


# virtual methods
.method getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppProgressPreference;->onBindView(Landroid/view/View;)V

    .line 61
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 62
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 65
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setPercent(DD)V
    .locals 3
    .param p1, "percentOfMax"    # D
    .param p3, "percentOfTotal"    # D

    .prologue
    .line 49
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setProgress(I)V

    .line 50
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method
