.class public Lcom/android/settings_ex/sim/SimBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimBootReceiver.java"


# static fields
.field private static final INVALID_SLOT:I = -0x2

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "sim_state"

.field private static final SLOT_EMPTY:I = -0x1

.field private static final SLOT_PREFIX:Ljava/lang/String; = "sim_slot_"

.field private static final TAG:Ljava/lang/String; = "SimBootReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 163
    new-instance v0, Lcom/android/settings_ex/sim/SimBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/sim/SimBootReceiver$1;-><init>(Lcom/android/settings_ex/sim/SimBootReceiver;)V

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 160
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 161
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 136
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f020080

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f08003e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090a76

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f090a77

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 142
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 151
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 154
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    return-void
.end method

.method private detectChangeAndNotify()V
    .locals 15

    .prologue
    .line 66
    iget-object v12, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v9

    .line 67
    .local v9, "numSlots":I
    iget-object v12, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "device_provisioned"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_1

    const/4 v3, 0x1

    .line 69
    .local v3, "isInProvisioning":Z
    :goto_0
    const/4 v7, 0x0

    .line 70
    .local v7, "notificationSent":Z
    const/4 v8, 0x0

    .line 71
    .local v8, "numSIMsDetected":I
    const/4 v5, -0x1

    .line 74
    .local v5, "lastSIMSlotDetected":I
    const/4 v12, 0x2

    if-lt v9, v12, :cond_0

    if-eqz v3, :cond_2

    .line 121
    :cond_0
    :goto_1
    return-void

    .line 67
    .end local v3    # "isInProvisioning":Z
    .end local v5    # "lastSIMSlotDetected":I
    .end local v7    # "notificationSent":Z
    .end local v8    # "numSIMsDetected":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    .restart local v3    # "isInProvisioning":Z
    .restart local v5    # "lastSIMSlotDetected":I
    .restart local v7    # "notificationSent":Z
    .restart local v8    # "numSIMsDetected":I
    :cond_2
    iget-object v12, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v12}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v10

    .line 83
    .local v10, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-lt v12, v13, :cond_0

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v9, :cond_7

    .line 88
    iget-object v12, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/android/settings_ex/Utils;->findRecordBySlotId(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v11

    .line 89
    .local v11, "sir":Landroid/telephony/SubscriptionInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sim_slot_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "key":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings_ex/sim/SimBootReceiver;->getLastSubId(Ljava/lang/String;)I

    move-result v6

    .line 92
    .local v6, "lastSubId":I
    if-eqz v11, :cond_6

    .line 93
    add-int/lit8 v8, v8, 0x1

    .line 94
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 95
    .local v0, "currentSubId":I
    const/4 v12, -0x2

    if-ne v6, v12, :cond_5

    .line 96
    invoke-direct {p0, v4, v0}, Lcom/android/settings_ex/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    .line 102
    :cond_3
    :goto_3
    move v5, v1

    .line 87
    .end local v0    # "currentSubId":I
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    .restart local v0    # "currentSubId":I
    :cond_5
    if-eq v6, v0, :cond_3

    .line 98
    iget-object v12, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0, v4, v0}, Lcom/android/settings_ex/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    .line 100
    const/4 v7, 0x1

    goto :goto_3

    .line 103
    .end local v0    # "currentSubId":I
    :cond_6
    const/4 v12, -0x1

    if-eq v6, v12, :cond_4

    .line 104
    iget-object v12, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v12}, Lcom/android/settings_ex/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    .line 105
    const/4 v12, -0x1

    invoke-direct {p0, v4, v12}, Lcom/android/settings_ex/sim/SimBootReceiver;->setLastSubId(Ljava/lang/String;I)V

    .line 106
    const/4 v7, 0x1

    goto :goto_4

    .line 110
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "lastSubId":I
    .end local v11    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_7
    if-eqz v7, :cond_0

    .line 111
    new-instance v2, Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v13, Lcom/android/settings_ex/sim/SimDialogActivity;

    invoke-direct {v2, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const/4 v12, 0x1

    if-ne v8, v12, :cond_8

    .line 115
    sget-object v12, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    sget-object v12, Lcom/android/settings_ex/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-virtual {v2, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 118
    :cond_8
    sget-object v12, Lcom/android/settings_ex/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private getLastSubId(Ljava/lang/String;)I
    .locals 2
    .param p1, "strSlotId"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, -0x2

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setLastSubId(Ljava/lang/String;I)V
    .locals 2
    .param p1, "strSlotId"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object p1, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-string v1, "sim_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings_ex/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 63
    return-void
.end method
