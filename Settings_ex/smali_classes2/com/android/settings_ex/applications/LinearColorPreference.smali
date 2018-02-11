.class public Lcom/android/settings_ex/applications/LinearColorPreference;
.super Landroid/support/v7/preference/Preference;
.source "LinearColorPreference.java"


# instance fields
.field mColoredRegions:I

.field mGreenColor:I

.field mGreenRatio:F

.field mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

.field mRedColor:I

.field mRedRatio:F

.field mYellowColor:I

.field mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 29
    const v0, -0x55afd0

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mRedColor:I

    .line 30
    const v0, -0x5555d0

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mYellowColor:I

    .line 31
    const v0, -0xcf55b0

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mGreenColor:I

    .line 32
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mColoredRegions:I

    .line 37
    const v0, 0x7f04014b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/LinearColorPreference;->setLayoutResource(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 69
    const v1, 0x7f11027e

    .line 68
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/LinearColorBar;

    .line 70
    .local v0, "colors":Lcom/android/settings_ex/applications/LinearColorBar;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setShowIndicator(Z)V

    .line 71
    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mRedColor:I

    iget v2, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mYellowColor:I

    iget v3, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mGreenColor:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setColors(III)V

    .line 72
    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mRedRatio:F

    iget v2, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mYellowRatio:F

    iget v3, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mGreenRatio:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 73
    iget v1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mColoredRegions:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setColoredRegions(I)V

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setOnRegionTappedListener(Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;)V

    .line 65
    return-void
.end method

.method public setColoredRegions(I)V
    .locals 0
    .param p1, "regions"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mColoredRegions:I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorPreference;->notifyChanged()V

    .line 59
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "yellow"    # I
    .param p3, "green"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mRedColor:I

    .line 49
    iput p2, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mYellowColor:I

    .line 50
    iput p3, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mGreenColor:I

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorPreference;->notifyChanged()V

    .line 47
    return-void
.end method

.method public setOnRegionTappedListener(Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mOnRegionTappedListener:Lcom/android/settings_ex/applications/LinearColorBar$OnRegionTappedListener;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorPreference;->notifyChanged()V

    .line 54
    return-void
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mRedRatio:F

    .line 42
    iput p2, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mYellowRatio:F

    .line 43
    iput p3, p0, Lcom/android/settings_ex/applications/LinearColorPreference;->mGreenRatio:F

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/LinearColorPreference;->notifyChanged()V

    .line 40
    return-void
.end method
