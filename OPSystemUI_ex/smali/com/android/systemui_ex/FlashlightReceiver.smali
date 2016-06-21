.class public Lcom/android/systemui_ex/FlashlightReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    const-string v1, "FlashlightReceiver"

    const-string v2, "Get request from gesture !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->getFlashlightController(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    move-result-object v0

    .line 23
    .local v0, "controller":Lcom/android/systemui_ex/statusbar/policy/FlashlightController;
    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->handleGestureRequest()V

    .line 24
    return-void
.end method
