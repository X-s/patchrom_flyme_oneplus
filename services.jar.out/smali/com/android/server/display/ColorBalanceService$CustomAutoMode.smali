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
    .line 1150
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/android/server/display/ColorBalanceService$AutoMode;)V

    .line 1151
    invoke-virtual {p1}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1152
    new-instance v0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode$1;-><init>(Lcom/android/server/display/ColorBalanceService$CustomAutoMode;)V

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1150
    return-void
.end method

.method private updateActivated()V
    .locals 14

    .prologue
    .line 1165
    const-string/jumbo v10, "ColorBalanceService"

    const-string/jumbo v11, "CustomAutoMode updateActivated!"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get12(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 1167
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1168
    .local v6, "now":Ljava/util/Calendar;
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v10, v6}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v8

    .line 1169
    .local v8, "startTime":Ljava/util/Calendar;
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v10, v8}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 1170
    .local v3, "endTime":Ljava/util/Calendar;
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    .line 1172
    .local v0, "activated":Z
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    if-nez v10, :cond_8

    const/4 v7, 0x1

    .line 1173
    .local v7, "setActivated":Z
    :goto_0
    if-nez v7, :cond_2

    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eq v10, v0, :cond_2

    .line 1174
    :cond_0
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 1175
    .local v1, "currentTimeZone":Ljava/util/TimeZone;
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1176
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1177
    .local v9, "year":I
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/4 v12, 0x6

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1178
    .local v2, "dayOfYear":I
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1179
    .local v4, "hourOfDay":I
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/16 v12, 0xc

    invoke-virtual {v10, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1181
    .local v5, "minute":I
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1182
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/4 v12, 0x1

    invoke-virtual {v10, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 1183
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/4 v12, 0x6

    invoke-virtual {v10, v12, v2}, Ljava/util/Calendar;->set(II)V

    .line 1184
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/16 v12, 0xb

    invoke-virtual {v10, v12, v4}, Ljava/util/Calendar;->set(II)V

    .line 1185
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    const/16 v12, 0xc

    invoke-virtual {v10, v12, v5}, Ljava/util/Calendar;->set(II)V

    .line 1188
    .end local v2    # "dayOfYear":I
    .end local v4    # "hourOfDay":I
    .end local v5    # "minute":I
    .end local v9    # "year":I
    :cond_1
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1189
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v12, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1190
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v12, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    .line 1196
    .end local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .end local v7    # "setActivated":Z
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get8(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1197
    :cond_3
    const-string/jumbo v12, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CustomAutoMode Reading mode is on,dont turn "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v0, :cond_c

    const-string/jumbo v10, "on"

    :goto_2
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, " night mode automatically for time up."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    if-eqz v0, :cond_d

    .line 1199
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v12, 0x1

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set10(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1208
    :cond_4
    :goto_3
    if-eqz v7, :cond_7

    .line 1209
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get8(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1210
    :cond_5
    const-string/jumbo v12, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CustomAutoMode Reading mode is on,dont turn "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v0, :cond_e

    const-string/jumbo v10, "on"

    :goto_4
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, " night mode automatically for time up!"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_6
    :goto_5
    const-string/jumbo v10, "ColorBalanceService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "time up:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_7
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set3(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1244
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set5(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1245
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 1164
    return-void

    .line 1172
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "setActivated":Z
    goto/16 :goto_0

    .line 1189
    .restart local v1    # "currentTimeZone":Ljava/util/TimeZone;
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1192
    :cond_a
    :try_start_1
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v12, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1193
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    iget-object v12, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    invoke-virtual {v10, v12}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    .local v7, "setActivated":Z
    goto/16 :goto_1

    .line 1192
    .local v7, "setActivated":Z
    :cond_b
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1197
    .end local v1    # "currentTimeZone":Ljava/util/TimeZone;
    .end local v7    # "setActivated":Z
    :cond_c
    const-string/jumbo v10, "off"

    goto/16 :goto_2

    .line 1201
    :cond_d
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v12, -0x1

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set10(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1202
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get14(Lcom/android/server/display/ColorBalanceService;)I

    move-result v12

    and-int/lit8 v12, v12, -0x2

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set9(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1203
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set11(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1204
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lcom/android/server/display/ColorBalanceService;->-wrap18(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1166
    .end local v0    # "activated":Z
    .end local v3    # "endTime":Ljava/util/Calendar;
    .end local v6    # "now":Ljava/util/Calendar;
    .end local v8    # "startTime":Ljava/util/Calendar;
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 1210
    .restart local v0    # "activated":Z
    .restart local v3    # "endTime":Ljava/util/Calendar;
    .restart local v6    # "now":Ljava/util/Calendar;
    .restart local v8    # "startTime":Ljava/util/Calendar;
    :cond_e
    :try_start_2
    const-string/jumbo v10, "off"

    goto/16 :goto_4

    .line 1212
    :cond_f
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set10(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1213
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1220
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_13

    .line 1221
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v10

    if-eq v10, v0, :cond_10

    .line 1222
    const-string/jumbo v10, "ColorBalanceService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "JUST BOOT 1:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    goto/16 :goto_5

    .line 1225
    :cond_10
    if-eqz v0, :cond_12

    .line 1226
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v12

    if-eqz v0, :cond_11

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v12, v10}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1227
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1228
    const-string/jumbo v10, "ColorBalanceService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "JUST BOOT 2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1226
    :cond_11
    const/4 v10, 0x1

    goto :goto_6

    .line 1230
    :cond_12
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/16 v12, 0xc

    invoke-virtual {v10, v12}, Lcom/android/server/display/ColorBalanceService;->sendMsg(I)V

    .line 1231
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/android/server/display/ColorBalanceService;->-set1(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1232
    const-string/jumbo v10, "ColorBalanceService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "JUST BOOT 2:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1236
    :cond_13
    iget-object v10, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v10}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5
.end method

.method private updateActivatedOnCustomStartTimeChanged()V
    .locals 2

    .prologue
    .line 1160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1161
    .local v0, "now":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    .line 1159
    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V
    .locals 9
    .param p1, "activated"    # Ljava/lang/Boolean;
    .param p2, "now"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1250
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v8

    .line 1251
    .local v8, "nextStart":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/NightDisplayController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v7

    .line 1252
    .local v7, "nextEnd":Ljava/util/Calendar;
    invoke-virtual {v8, v7}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNextAlarm nextStart setExact:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string/jumbo v4, "ColorBalanceService"

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1249
    :goto_0
    return-void

    .line 1256
    :cond_0
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNextAlarm nextEnd setExact:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-string/jumbo v4, "ColorBalanceService"

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .prologue
    .line 1293
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1294
    .local v0, "now":Ljava/util/Calendar;
    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1295
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/util/Calendar;)V

    .line 1292
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .prologue
    .line 1314
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1313
    return-void
.end method

.method public onCustomEndTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1
    .param p1, "endTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 1307
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 1308
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1309
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1306
    return-void
.end method

.method public onCustomStartTimeChanged(Lcom/android/internal/app/NightDisplayController$LocalTime;)V
    .locals 1
    .param p1, "startTime"    # Lcom/android/internal/app/NightDisplayController$LocalTime;

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 1301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1302
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1299
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1268
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1269
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-virtual {v1}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1272
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mStartTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 1273
    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Lcom/android/internal/app/NightDisplayController$LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mEndTime:Lcom/android/internal/app/NightDisplayController$LocalTime;

    .line 1276
    invoke-direct {p0}, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->updateActivated()V

    .line 1267
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1281
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1282
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1283
    iput-object v2, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1284
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1285
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "CustomAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1280
    :cond_0
    return-void
.end method
