.class Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;
.super Lcom/android/server/display/ColorBalanceService$AutoMode;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# instance fields
.field private mLastActivatedTime:Ljava/util/Calendar;

.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ColorBalanceService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/android/server/display/ColorBalanceService$AutoMode;)V

    .line 1325
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/ColorBalanceService;->-wrap2(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 1324
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 14
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1329
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get12(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1330
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1331
    .local v4, "time":J
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v2

    .line 1332
    .local v2, "stateTime":J
    sub-long v10, v4, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0xa4cb800

    cmp-long v8, v10, v12

    if-lez v8, :cond_0

    .line 1333
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "1 updateActivated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v8}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object p1

    .line 1335
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "2 updateActivated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 1338
    :goto_0
    const/4 v1, 0x1

    .line 1339
    .local v1, "setActivated":Z
    if-eqz p1, :cond_1

    .line 1340
    const-string/jumbo v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateActivated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " isNight:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " setActivated:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_1
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get8(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1362
    :cond_2
    const-string/jumbo v10, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "TwilightAutoMode Reading mode is on,dont turn "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_8

    const-string/jumbo v8, "on"

    :goto_1
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " night mode automatically for time up."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    if-eqz v0, :cond_9

    .line 1364
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/android/server/display/ColorBalanceService;->-set10(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1372
    :cond_3
    :goto_2
    if-eqz v1, :cond_6

    .line 1373
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get8(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1374
    :cond_4
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TwilightAutoMode Reading mode is on,dont turn "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_a

    const-string/jumbo v6, "on"

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " night mode automatically for time up!"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_5
    :goto_4
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/display/ColorBalanceService;->-set3(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1406
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/display/ColorBalanceService;->-set5(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v9

    .line 1328
    return-void

    .line 1337
    .end local v1    # "setActivated":Z
    :cond_7
    const/4 v0, 0x0

    .local v0, "isNight":Z
    goto/16 :goto_0

    .line 1362
    .end local v0    # "isNight":Z
    .restart local v1    # "setActivated":Z
    :cond_8
    :try_start_1
    const-string/jumbo v8, "off"

    goto :goto_1

    .line 1366
    :cond_9
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v10, -0x1

    invoke-static {v8, v10}, Lcom/android/server/display/ColorBalanceService;->-set10(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1367
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get14(Lcom/android/server/display/ColorBalanceService;)I

    move-result v10

    and-int/lit8 v10, v10, -0x2

    invoke-static {v8, v10}, Lcom/android/server/display/ColorBalanceService;->-set9(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1368
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/display/ColorBalanceService;->-set11(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1369
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/server/display/ColorBalanceService;->-wrap18(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1329
    .end local v1    # "setActivated":Z
    .end local v2    # "stateTime":J
    .end local v4    # "time":J
    :catchall_0
    move-exception v6

    monitor-exit v9

    throw v6

    .line 1374
    .restart local v1    # "setActivated":Z
    .restart local v2    # "stateTime":J
    .restart local v4    # "time":J
    :cond_a
    :try_start_2
    const-string/jumbo v6, "off"

    goto :goto_3

    .line 1376
    :cond_b
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lcom/android/server/display/ColorBalanceService;->-set10(Lcom/android/server/display/ColorBalanceService;I)I

    .line 1377
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1384
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1385
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v8

    if-eq v8, v0, :cond_c

    .line 1386
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "JUST BOOT 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v6}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    goto/16 :goto_4

    .line 1389
    :cond_c
    if-eqz v0, :cond_e

    .line 1390
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v8

    if-eqz v0, :cond_d

    :goto_5
    invoke-virtual {v8, v6}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1391
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v6}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1392
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "JUST BOOT 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    move v6, v7

    .line 1390
    goto :goto_5

    .line 1394
    :cond_e
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lcom/android/server/display/ColorBalanceService;->sendMsg(I)V

    .line 1395
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/display/ColorBalanceService;->-set1(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1396
    const-string/jumbo v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "JUST BOOT 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1400
    :cond_f
    iget-object v6, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v6}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 1432
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1431
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get6(Lcom/android/server/display/ColorBalanceService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 1416
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 1412
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1421
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 1422
    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1423
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "CustomAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1420
    :cond_0
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v0, 0x0

    .line 1437
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTwilightStateChanged: isNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1438
    if-nez p1, :cond_0

    .line 1437
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 1436
    return-void

    .line 1438
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
