.class Lcom/oneplus/settings/notification/OPNotificationSettings$12;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 883
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1200(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ringtone"

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 887
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 888
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 891
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification_sound"

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 894
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 895
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 910
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 911
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "mms_notification"

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingtoneName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 913
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 914
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$12;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 918
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_2
    return-void
.end method
