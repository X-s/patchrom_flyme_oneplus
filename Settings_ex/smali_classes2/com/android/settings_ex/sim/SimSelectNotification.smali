.class public Lcom/android/settings_ex/sim/SimSelectNotification;
.super Landroid/content/BroadcastReceiver;
.source "SimSelectNotification.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimSelectNotification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 144
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 141
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    const v6, 0x7f02016b

    .line 126
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 128
    const v6, 0x7f0b0332

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    .line 126
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 129
    const v6, 0x7f0e0dd7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 130
    const v6, 0x7f0e0dd8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 131
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 135
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    const-string/jumbo v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 138
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    const-string/jumbo v10, "phone"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 46
    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 48
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    .line 49
    .local v8, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 53
    .local v3, "numSlots":I
    const/4 v10, 0x2

    if-lt v3, v10, :cond_0

    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 54
    const-string/jumbo v10, "persist.radio.aosp_usr_pref_sel"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 61
    invoke-static {p1}, Lcom/android/settings_ex/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 64
    const-string/jumbo v10, "ss"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "simStatus":Ljava/lang/String;
    const-string/jumbo v10, "ABSENT"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 66
    const-string/jumbo v10, "LOADED"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 65
    :goto_0
    if-nez v10, :cond_2

    .line 67
    const-string/jumbo v10, "SimSelectNotification"

    const-string/jumbo v11, "sim state is not Absent or Loaded"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 55
    .end local v5    # "simStatus":Ljava/lang/String;
    :cond_0
    const-string/jumbo v10, "SimSelectNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " no of slots "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 56
    const-string/jumbo v12, " provision = "

    .line 55
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 56
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v12

    .line 55
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void

    .line 65
    .restart local v5    # "simStatus":Ljava/lang/String;
    :cond_1
    const/4 v10, 0x1

    goto :goto_0

    .line 70
    :cond_2
    const-string/jumbo v10, "SimSelectNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "simstatus = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 75
    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    .line 76
    .local v7, "state":I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_3

    .line 77
    const/4 v10, 0x5

    if-eq v7, v10, :cond_3

    .line 78
    if-eqz v7, :cond_3

    .line 79
    const-string/jumbo v10, "SimSelectNotification"

    const-string/jumbo v11, "All sims not in valid state yet"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 74
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    .end local v7    # "state":I
    :cond_4
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 85
    .local v4, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_6

    .line 86
    :cond_5
    const-string/jumbo v10, "SimSelectNotification"

    const-string/jumbo v11, "Subscription list is empty"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 91
    :cond_6
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 94
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v10

    .line 93
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 96
    .local v0, "dataSelected":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v10

    .line 95
    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v6

    .line 99
    .local v6, "smsSelected":Z
    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    .line 100
    const-string/jumbo v10, "SimSelectNotification"

    const-string/jumbo v11, "Data & SMS default sims are selected. No notification"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 105
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/settings_ex/sim/SimSelectNotification;->createNotification(Landroid/content/Context;)V

    .line 107
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 109
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-direct {v2, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v2, "newIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    sget-object v10, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    sget-object v11, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    invoke-virtual {v2, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 45
    .end local v2    # "newIntent":Landroid/content/Intent;
    :cond_8
    :goto_2
    return-void

    .line 114
    :cond_9
    if-nez v0, :cond_8

    .line 116
    new-instance v2, Landroid/content/Intent;

    const-class v10, Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-direct {v2, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .restart local v2    # "newIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    sget-object v10, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
