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
    .line 653
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/display/ColorBalanceService;Lcom/android/server/display/ColorBalanceService$AutoMode;)V

    .line 654
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/ColorBalanceService;->-wrap2(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 653
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v1, 0x1

    .line 658
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 659
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v0, :cond_3

    .line 672
    .local v1, "setActivated":Z
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 673
    iget-object v2, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 657
    :cond_1
    return-void

    .line 658
    .end local v1    # "setActivated":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "isNight":Z
    goto :goto_0

    .line 659
    .end local v0    # "isNight":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 697
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/display/ColorBalanceService;->-get4(Lcom/android/server/display/ColorBalanceService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 682
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 678
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 688
    iput-object v1, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 689
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "CustomAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 686
    :cond_0
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 4
    .param p1, "state"    # Lcom/android/server/twilight/TwilightState;

    .prologue
    const/4 v0, 0x0

    .line 705
    const-string/jumbo v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTwilightStateChanged: isNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 706
    if-nez p1, :cond_0

    .line 705
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorBalanceService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 704
    return-void

    .line 706
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
