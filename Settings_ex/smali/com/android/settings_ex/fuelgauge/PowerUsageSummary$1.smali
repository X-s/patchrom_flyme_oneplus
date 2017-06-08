.class Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :goto_0
    return v3

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_battery_percent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
