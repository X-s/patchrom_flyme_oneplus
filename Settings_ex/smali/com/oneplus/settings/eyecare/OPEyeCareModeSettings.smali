.class public Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPEyeCareModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTION_OP_EYS_CARE_MODE:Ljava/lang/String; = "com.oem.intent.action.OP_EYS_CARE_MODE"

.field private static final ACTION_OP_EYS_CARE_MODE_OFF:Ljava/lang/String; = "com.oem.intent.action.OP_EYS_CARE_MODE_OFF"

.field private static final CMD_OEM_QDCM_MODE_10:Ljava/lang/String; = "oem:qdcm:mode_10"

.field private static final CMD_OEM_QDCM_MODE_5:Ljava/lang/String; = "oem:qdcm:mode_5"

.field private static final CMD_OEM_QDCM_MODE_6:Ljava/lang/String; = "oem:qdcm:mode_6"

.field private static final CMD_OEM_QDCM_MODE_7:Ljava/lang/String; = "oem:qdcm:mode_7"

.field private static final CMD_OEM_QDCM_MODE_8:Ljava/lang/String; = "oem:qdcm:mode_8"

.field private static final CMD_OEM_QDCM_MODE_9:Ljava/lang/String; = "oem:qdcm:mode_9"

.field private static final KEY_EYECARE_ENABLE:Ljava/lang/String; = "eyecare_mode_enable"

.field private static final KEY_EYECARE_SEEK_ADJUSTING:Ljava/lang/String; = "eyecare_seekbar_adjuting_settings"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "disable_eyecare_keys"

.field private static final TAG:Ljava/lang/String; = "OPEyeCareModeSettings"

.field private static final TYPE_ONE:Ljava/lang/String; = "oem:qdcm:mode_1"

.field private static final TYPE_SERVER:Ljava/lang/String; = "pps"

.field private static final TYPE_THREE:Ljava/lang/String; = "oem:qdcm:mode_3"

.field private static final TYPE_TWO:Ljava/lang/String; = "oem:qdcm:mode_2"

.field private static final TYPE_ZERO:Ljava/lang/String; = "oem:qdcm:mode_0"


# instance fields
.field private M_TYPE_STRING:Ljava/lang/String;

.field private TYPE_SETTINGS_ID:I

.field private localSocket:Landroid/net/LocalSocket;

.field private mBetterStatus:I

.field private mContext:Landroid/content/Context;

.field private mEyeCarePreference:Landroid/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 77
    iput v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->TYPE_SETTINGS_ID:I

    .line 78
    const-string v0, "oem:qdcm:mode_1"

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 84
    iput v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    .line 92
    new-instance v0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$1;-><init>(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    new-instance v0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings$2;-><init>(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->showNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    iget v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;)Landroid/net/LocalSocket;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;
    .param p1, "x1"    # Landroid/net/LocalSocket;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->localSocket:Landroid/net/LocalSocket;

    return-object p1
.end method

.method private showNotification()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 340
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 341
    .local v1, "mNotificationManager":Landroid/app/NotificationManager;
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040092

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 342
    .local v4, "views":Landroid/widget/RemoteViews;
    iget-object v5, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.oem.intent.action.OP_EYS_CARE_MODE_OFF"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v10, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 343
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f120124

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 345
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x7f02005f

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    new-array v6, v11, [J

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v10

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 355
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 356
    .local v2, "notify":Landroid/app/Notification;
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 357
    const-string v5, "disable_eyecare_keys"

    const/16 v6, 0x7e0

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v6, v2, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 358
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 362
    const/16 v0, -0x64

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->addPreferencesFromResource(I)V

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    .line 157
    const-string v0, "eyecare_mode_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    const-string v0, "eyecare_seekbar_adjuting_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    iput-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    .line 162
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v9, 0x12c

    const/16 v8, 0xc8

    const/16 v7, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eyecare_mode_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 194
    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_eyecare_enable"

    iget-object v6, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-ne v6, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    iget-object v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setEnabled(Z)V

    .line 200
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "oem_better_status"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    .line 204
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    iget v4, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mBetterStatus:I

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 206
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string v2, "disable_eyecare_keys"

    const/16 v4, 0x7e0

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 240
    .end local v0    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_1
    :goto_0
    return v3

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->showNotification()V

    .line 209
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "oem_eyecare_progress_status"

    const/16 v5, 0x258

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 213
    .local v1, "progress":I
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setSeekValue(I)V

    .line 215
    if-ltz v1, :cond_3

    if-ge v1, v7, :cond_3

    .line 216
    const-string v2, "oem:qdcm:mode_5"

    iput-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 217
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 218
    :cond_3
    if-lt v1, v7, :cond_4

    if-ge v1, v8, :cond_4

    .line 219
    const-string v2, "oem:qdcm:mode_6"

    iput-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 220
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 221
    :cond_4
    if-lt v1, v8, :cond_5

    if-ge v1, v9, :cond_5

    .line 222
    const-string v2, "oem:qdcm:mode_7"

    iput-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 224
    :cond_5
    if-lt v1, v9, :cond_6

    const/16 v2, 0x190

    if-ge v1, v2, :cond_6

    .line 225
    const-string v2, "oem:qdcm:mode_8"

    iput-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 226
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 227
    :cond_6
    const/16 v2, 0x190

    if-lt v1, v2, :cond_7

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_7

    .line 228
    const-string v2, "oem:qdcm:mode_9"

    iput-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 230
    :cond_7
    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_1

    const/16 v2, 0x258

    if-gt v1, v2, :cond_1

    .line 231
    const-string v2, "oem:qdcm:mode_10"

    iput-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->M_TYPE_STRING:Ljava/lang/String;

    .line 232
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v1    # "progress":I
    :cond_8
    move v3, v2

    .line 240
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 169
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "oem_eyecare_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 171
    .local v1, "mStatus":I
    iget-object v5, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mEyeCarePreference:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 172
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mSeekEyeCarePreference:Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ui/OPEyeCareSeekBarPreference;->setEnabled(Z)V

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.OP_EYS_CARE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "com.oem.intent.action.OP_EYS_CARE_MODE_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    move v2, v4

    .line 171
    goto :goto_0

    :cond_1
    move v3, v4

    .line 172
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/eyecare/OPEyeCareModeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    return-void
.end method
