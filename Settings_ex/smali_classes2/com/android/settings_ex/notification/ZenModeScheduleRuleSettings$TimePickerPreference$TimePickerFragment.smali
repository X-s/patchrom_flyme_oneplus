.class public Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
.super Landroid/app/DialogFragment;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get1(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v7, 0x1

    .line 293
    .local v7, "usePref":Z
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 294
    .local v6, "c":Ljava/util/Calendar;
    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v3

    .line 295
    .local v3, "hour":I
    :goto_1
    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->-get1(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v4

    .line 296
    .local v4, "minute":I
    :goto_2
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 297
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    .line 296
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 292
    .end local v3    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "usePref":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "usePref":Z
    goto :goto_0

    .line 294
    .restart local v6    # "c":Ljava/util/Calendar;
    :cond_1
    const/16 v0, 0xb

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .restart local v3    # "hour":I
    goto :goto_1

    .line 295
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .restart local v4    # "minute":I
    goto :goto_2
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 300
    :cond_0
    return-void
.end method
