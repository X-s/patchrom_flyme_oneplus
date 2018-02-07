.class Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;
.super Ljava/lang/Object;
.source "AccessibilityTimerShutdownSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    new-instance v2, Landroid/content/Intent;

    .line 157
    const-string/jumbo v3, "com.android.settings_ex.action.REQUEST_POWER_OFF"

    .line 156
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-set1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/content/Intent;)Landroid/content/Intent;

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-virtual {v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v3}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get2(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/content/Intent;

    move-result-object v3

    .line 159
    invoke-static {v2, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-set2(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 161
    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    const-string/jumbo v3, "alarm"

    invoke-static {v0, v3}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-wrap0(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {v2, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-set0(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get0(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 163
    iget-object v4, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v4}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get4(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 162
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get0(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v2}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get1(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    iget-object v6, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v6}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get4(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 164
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;->this$0:Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;

    invoke-static {v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->-get3(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bbe\u7f6e\u7684\u95f9\u949f\u65f6\u95f4\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    const-string/jumbo v2, ":"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method
