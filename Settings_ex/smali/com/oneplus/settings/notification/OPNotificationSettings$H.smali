.class final Lcom/oneplus/settings/notification/OPNotificationSettings$H;
.super Landroid/os/Handler;
.source "OPNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final FRESH_SEEKBAR_UI:I = 0x7

.field private static final STOP_SAMPLE:I = 0x3

.field private static final UPDATE_EFFECTS_SUPPRESSOR:I = 0x4

.field private static final UPDATE_NOTIFICATION_RINGTONE:I = 0x2

.field private static final UPDATE_PHONE_RINGTONE:I = 0x1

.field private static final UPDATE_RINGER_MODE:I = 0x5

.field private static final UPDATE_SMS_RINGTONE:I = 0x6

.field private static final UPDATE_TOUCH_EFFORT:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 1

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    .line 1338
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1339
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPNotificationSettings$1;

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1343
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1375
    :goto_0
    return-void

    .line 1346
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->isShowPhoneSummary()Z
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$3200(Lcom/oneplus/settings/notification/OPNotificationSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1200(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ringtone"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/notification/NotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1200(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1354
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "notification_sound"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/notification/NotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1357
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$3300(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 1360
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$3400(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    goto :goto_0

    .line 1363
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingerMode()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$3500(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    goto :goto_0

    .line 1366
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mms_notification"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/notification/NotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1369
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateSeekbar()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$3600(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    goto/16 :goto_0

    .line 1372
    :pswitch_7
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->MakeSoundEffects()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$3700(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    goto/16 :goto_0

    .line 1343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
