.class Lcom/android/settings_ex/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$300(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$400(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$500(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$300(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$400(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPinToggle:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$400(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/EditPinPreference;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$500(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/EditPinPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings_ex/IccLockSettings;->access$600(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings$2;->this$0:Lcom/android/settings_ex/IccLockSettings;

    # getter for: Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings_ex/IccLockSettings;->access$600(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
