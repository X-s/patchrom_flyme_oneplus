.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 1035
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 1028
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$3300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui_ex/statusbar/policy/BatteryController;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$DozeServiceHost;->firePowerSaveChanged(Z)V

    .line 1031
    :cond_0
    return-void
.end method
