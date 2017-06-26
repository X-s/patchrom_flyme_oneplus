.class Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OPEyeCareModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x12c

    const/16 v10, 0xc8

    const/16 v9, 0x64

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.oem.intent.action.OP_EYS_CARE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const-string v4, "eyecare_enable"

    invoke-virtual {p2, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 99
    .local v1, "mEyecareEnable":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$000(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setEnabled(Z)V

    .line 100
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$100(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 102
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # invokes: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$200(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_eyecare_enable"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # invokes: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->showNotification()V
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$300(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)V

    .line 104
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$400(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_eyecare_enable"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$400(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_eyecare_progress_status"

    const/16 v6, 0x258

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 108
    .local v3, "progress":I
    if-ltz v3, :cond_2

    if-ge v3, v9, :cond_2

    .line 109
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v5, "oem:qdcm:mode_5"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$502(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    .end local v1    # "mEyecareEnable":Ljava/lang/Boolean;
    .end local v3    # "progress":I
    :cond_0
    :goto_0
    const-string v4, "com.oem.intent.action.OP_EYS_CARE_MODE_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$000(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setEnabled(Z)V

    .line 142
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$100(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 145
    :cond_1
    return-void

    .line 111
    .restart local v1    # "mEyecareEnable":Ljava/lang/Boolean;
    .restart local v3    # "progress":I
    :cond_2
    if-lt v3, v9, :cond_3

    if-ge v3, v10, :cond_3

    .line 112
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v5, "oem:qdcm:mode_6"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$502(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 114
    :cond_3
    if-lt v3, v10, :cond_4

    if-ge v3, v11, :cond_4

    .line 115
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v5, "oem:qdcm:mode_7"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$502(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 117
    :cond_4
    if-lt v3, v11, :cond_5

    const/16 v4, 0x190

    if-ge v3, v4, :cond_5

    .line 118
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v5, "oem:qdcm:mode_8"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$502(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 120
    :cond_5
    const/16 v4, 0x190

    if-lt v3, v4, :cond_6

    const/16 v4, 0x1f4

    if-ge v3, v4, :cond_6

    .line 121
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v5, "oem:qdcm:mode_9"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$502(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 123
    :cond_6
    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_0

    const/16 v4, 0x258

    if-gt v3, v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    const-string v5, "oem:qdcm:mode_10"

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$502(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 128
    .end local v3    # "progress":I
    :cond_7
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # invokes: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$700(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_eyecare_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$400(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 130
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const-string v4, "disable_eyecare_keys"

    const/16 v5, 0x7e0

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 131
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    iget-object v5, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$400(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oem_better_status"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I
    invoke-static {v4, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$802(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;I)I

    .line 133
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I
    invoke-static {v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$800(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;->this$0:Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    # getter for: Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->access$400(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_eyecare_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
