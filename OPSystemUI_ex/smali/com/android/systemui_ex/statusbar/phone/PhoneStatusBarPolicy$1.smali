.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const-string v1, "PhoneStatusBarPolicy"

    const-string v2, " receiving AlarmManager.ACTION_NEXT_ALARM_CLOCK_CHANGED "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v1, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateSyncState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$100(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 108
    :cond_3
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateBluetooth()V
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$200(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    .line 109
    :cond_4
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateSimState(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :cond_5
    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_6
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateAlarm()V
    invoke-static {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$000(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)V

    goto :goto_0

    .line 116
    :cond_7
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateHeadSet(Landroid/content/Intent;)V
    invoke-static {v1, p2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;Landroid/content/Intent;)V

    goto :goto_0
.end method
