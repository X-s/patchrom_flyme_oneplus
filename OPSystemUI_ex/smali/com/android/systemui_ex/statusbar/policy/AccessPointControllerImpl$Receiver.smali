.class final Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessPointControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl$1;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    # getter for: Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

    # invokes: Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->access$300(Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->mScanning:Z
    invoke-static {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;->access$402(Lcom/android/systemui_ex/statusbar/policy/AccessPointControllerImpl;Z)Z

    .line 274
    :cond_1
    return-void
.end method
