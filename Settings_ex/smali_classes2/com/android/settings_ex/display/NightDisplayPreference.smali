.class public Lcom/android/settings_ex/display/NightDisplayPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "NightDisplayPreference.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 38
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 34
    return-void
.end method

.method private getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;
    .locals 4
    .param p1, "localTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 63
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 64
    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->hourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 65
    iget v1, p1, Lcom/android/internal/app/NightDisplayController$LocalTime;->minute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 66
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 67
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 68
    iget-object v1, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/display/NightDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 74
    .local v2, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v3

    .line 75
    .local v3, "isActivated":Z
    iget-object v5, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    .line 78
    .local v0, "autoMode":I
    packed-switch v0, :pswitch_data_0

    .line 81
    :pswitch_0
    if-eqz v3, :cond_0

    .line 82
    const v5, 0x7f0e0833

    .line 81
    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "autoModeSummary":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_3

    const v4, 0x7f0e0832

    .line 105
    .local v4, "summaryFormatResId":I
    :goto_2
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/display/NightDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    return-void

    .line 83
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    .end local v4    # "summaryFormatResId":I
    :cond_0
    const v5, 0x7f0e082f

    goto :goto_0

    .line 86
    :pswitch_1
    if-eqz v3, :cond_1

    .line 87
    new-array v5, v8, [Ljava/lang/Object;

    .line 89
    iget-object v6, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/display/NightDisplayPreference;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 88
    const v6, 0x7f0e0834

    .line 87
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    goto :goto_1

    .line 91
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    .line 93
    iget-object v6, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/display/NightDisplayPreference;->getFormattedTimeString(Lcom/android/internal/app/NightDisplayController$LocalTime;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 92
    const v6, 0x7f0e0830

    .line 91
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    goto :goto_1

    .line 97
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    :pswitch_2
    if-eqz v3, :cond_2

    .line 98
    const v5, 0x7f0e0835

    .line 97
    :goto_3
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    goto :goto_1

    .line 99
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    :cond_2
    const v5, 0x7f0e0831

    goto :goto_3

    .line 104
    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0e082e

    .restart local v4    # "summaryFormatResId":I
    goto :goto_2

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings_ex/display/NightDisplayPreference;->updateSummary()V

    .line 109
    return-void
.end method

.method public onAttached()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/display/NightDisplayPreference;->updateSummary()V

    .line 43
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/display/NightDisplayPreference;->updateSummary()V

    .line 114
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/display/NightDisplayPreference;->updateSummary()V

    .line 124
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings_ex/display/NightDisplayPreference;->updateSummary()V

    .line 119
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 54
    return-void
.end method
