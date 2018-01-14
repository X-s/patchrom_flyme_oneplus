.class Lcom/android/server/display/ColorBalanceService$CustomAutoMode;
.super Lcom/android/server/display/ColorBalanceService$AutoMode;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private mLastActivatedTime:Ljava/util/Calendar;

.field private mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/ColorBalanceService$CustomAutoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/ColorBalanceService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/android/server/display/ColorBalanceService$AutoMode;)V

    .line 538
    invoke-virtual {p1}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 539
    new-instance v0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode$1;-><init>(Lcom/android/server/display/ColorBalanceService$CustomAutoMode;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 537
    return-void
.end method

.method private updateActivated()V
    .locals 15

    .prologue
    const/16 v14, 0xc

    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v10, 0x1

    .line 548
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 549
    .local v6, "now":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v11, v6}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v8

    .line 550
    .local v8, "startTime":Ljava/util/Calendar;
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v11, v8}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 551
    .local v3, "endTime":Ljava/util/Calendar;
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    .line 553
    .local v0, "activated":Z
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v11}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    if-nez v11, :cond_4

    :cond_0
    move v7, v10

    .line 554
    .local v7, "setActivated":Z
    :goto_0
    if-nez v7, :cond_2

    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v11}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v11, v0, :cond_2

    .line 555
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 556
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 557
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 558
    .local v9, "year":I
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 559
    .local v2, "dayOfYear":I
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 560
    .local v4, "hourOfDay":I
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 562
    .local v5, "minute":I
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 563
    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v11, v10, v9}, Ljava/util/Calendar;->set(II)V

    .line 564
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 565
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v13, v4}, Ljava/util/Calendar;->set(II)V

    .line 566
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v14, v5}, Ljava/util/Calendar;->set(II)V

    .line 569
    .end local v2    # "dayOfYear":I
    .end local v4    # "hourOfDay":I
    .end local v5    # "minute":I
    .end local v9    # "year":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 570
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 571
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    .line 578
    .end local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .end local v7    # "setActivated":Z
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 579
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 581
    :cond_3
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    .line 547
    return-void

    .line 553
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 570
    .restart local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .restart local v7    # "setActivated":Z
    :cond_5
    const/4 v7, 0x1

    .local v7, "setActivated":Z
    goto :goto_1

    .line 573
    .local v7, "setActivated":Z
    :cond_6
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 574
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v11, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v11}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_1

    .line 573
    :cond_7
    const/4 v7, 0x1

    .local v7, "setActivated":Z
    goto :goto_1
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    .locals 8
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x0

    .line 585
    if-eqz p1, :cond_0

    .line 586
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    .line 588
    .local v7, "next":Ljava/util/Calendar;
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string/jumbo v4, "ColorBalanceService"

    const/4 v1, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 584
    .end local v7    # "next":Ljava/util/Calendar;
    :cond_0
    return-void

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    .restart local v7    # "next":Ljava/util/Calendar;
    goto :goto_0
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 620
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 621
    .local v0, "now":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 622
    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 624
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    .line 619
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .prologue
    .line 643
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 642
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 638
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 635
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 631
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 628
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 594
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-virtual {v1}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 598
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 599
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 602
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 593
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 610
    iput-object v2, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 611
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "CustomAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 606
    :cond_0
    return-void
.end method
