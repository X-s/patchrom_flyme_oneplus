.class public Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;
.super Landroid/support/v7/preference/Preference;
.source "BatterySaverPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/BatterySaverPreference$1;
    }
.end annotation


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->updateSwitch()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference$1;-><init>(Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    .line 33
    return-void
.end method

.method private updateSwitch()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    .line 62
    .local v2, "mode":Z
    if-eqz v2, :cond_0

    const v1, 0x7f0e1001

    .line 64
    .local v1, "format":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 65
    const-string/jumbo v6, "low_power_trigger_level"

    .line 64
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 66
    .local v3, "percent":I
    if-lez v3, :cond_1

    const v4, 0x7f0e1004

    .line 68
    .local v4, "percentFormat":I
    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    new-array v6, v7, [Ljava/lang/Object;

    .line 69
    invoke-static {v3}, Lcom/android/settings_ex/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 68
    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    .line 63
    .end local v1    # "format":I
    .end local v3    # "percent":I
    .end local v4    # "percentFormat":I
    :cond_0
    const v1, 0x7f0e1002

    .restart local v1    # "format":I
    goto :goto_0

    .line 67
    .restart local v3    # "percent":I
    :cond_1
    const v4, 0x7f0e1003

    .restart local v4    # "percentFormat":I
    goto :goto_1
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 44
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->mPowerManager:Landroid/os/PowerManager;

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    .line 47
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    .line 49
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 54
    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/BatterySaverPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    move-object v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ex/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 38
    return-void
.end method
