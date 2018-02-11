.class public Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 37
    const v0, 0x7f0401af

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 47
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 48
    .local v1, "progress":Landroid/widget/ProgressBar;
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 49
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 55
    :goto_0
    const v2, 0x7f1102fb

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "categoryView":Landroid/widget/TextView;
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isZh(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    :goto_1
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 46
    return-void

    .line 52
    .end local v0    # "categoryView":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 59
    .restart local v0    # "categoryView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 41
    return-void
.end method
