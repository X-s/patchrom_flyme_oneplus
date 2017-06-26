.class Lcom/android/settings_ex/notification/NotificationSettings$1;
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
    .line 315
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 318
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$400(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 321
    .local v0, "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$300(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 325
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$700(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$500(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    invoke-static {v1, v3}, Lcom/android/settings_ex/notification/NotificationSettings;->access$600(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 328
    .restart local v0    # "summary":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettings$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettings;->access$300(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/settings_ex/notification/NotificationSettings$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 332
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method
