.class final Lcom/android/settings_ex/notification/NotificationSettings$H;
.super Landroid/os/Handler;
.source "NotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final STOP_SAMPLE:I = 0x3

.field private static final UPDATE_EFFECTS_SUPPRESSOR:I = 0x4

.field private static final UPDATE_NOTIFICATION_RINGTONE:I = 0x2

.field private static final UPDATE_PHONE_RINGTONE:I = 0x1

.field private static final UPDATE_RINGER_MODE:I = 0x5

.field private static final UPDATE_SMS_RINGTONE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 1

    .prologue
    .line 1145
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    .line 1146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1147
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/NotificationSettings$1;

    .prologue
    .line 1136
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings$H;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1151
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1172
    :goto_0
    return-void

    .line 1153
    :pswitch_0
    const-string v1, "RING"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "phone msg.obj : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$800(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1157
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1100(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1160
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mVolumeCallback:Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2600(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 1163
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateEffectsSuppressor()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2700(Lcom/android/settings_ex/notification/NotificationSettings;)V

    goto :goto_0

    .line 1166
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->updateRingerMode()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$2800(Lcom/android/settings_ex/notification/NotificationSettings;)V

    goto :goto_0

    .line 1169
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$H;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$1200(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
