.class public abstract Lcom/android/settings_ex/InstrumentedPreferenceActivity;
.super Lcom/oneplus/widget/preference/OPPreferenceActivity;
.source "InstrumentedPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/oneplus/widget/preference/OPPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getMetricsCategory()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-static {}, Landroid/util/OpFeatures;->isBlackModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->setTheme(I)V

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    invoke-super {p0, p1}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 64
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->finish()V

    .line 65
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onPause()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/oneplus/widget/preference/OPPreferenceActivity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 44
    return-void
.end method
