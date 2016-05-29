.class Lcom/android/settings_ex/notification/NotificationSettings$8;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 736
    const-string v1, "RING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneRingtonePreference msg.obj : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/notification/NotificationSettings;->access$800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 745
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ringtone"

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 747
    .local v0, "summary":Ljava/lang/CharSequence;
    const-string v1, "RING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phone msg.obj : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    if-eqz v0, :cond_0

    .line 750
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 753
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1100(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification_sound"

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 763
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 764
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 767
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 768
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$900(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "sms_ringtone"

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 770
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 771
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$8;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 774
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
