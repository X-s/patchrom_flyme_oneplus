.class public Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;
.super Lcom/oneplus/widget/preference/OPPreference;
.source "StorageSummaryPreference.java"


# instance fields
.field private mPercent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 34
    const v0, 0x7f04011c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setLayoutResource(I)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setEnabled(Z)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 44
    const v2, 0x102000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/OPProgressBar;

    .line 45
    .local v0, "progress":Lcom/oneplus/widget/OPProgressBar;
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/OPProgressBar;->setVisibility(I)V

    .line 47
    iget v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/OPProgressBar;->setProgress(I)V

    .line 52
    :goto_0
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, "summary":Landroid/widget/TextView;
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreference;->onBindView(Landroid/view/View;)V

    .line 55
    return-void

    .line 49
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/oneplus/widget/OPProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPercent(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->mPercent:I

    .line 40
    return-void
.end method
