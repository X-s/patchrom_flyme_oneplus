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
.field private static final STOP_SAMPLE:I = 0x3

.field private static final UPDATE_EFFECTS_SUPPRESSOR:I = 0x4

.field private static final UPDATE_NOTIFICATION_RINGTONE:I = 0x2

.field private static final UPDATE_PHONE_RINGTONE:I = 0x1

.field private static final UPDATE_RINGER_MODE:I = 0x5

.field private static final UPDATE_SMS_RINGTONE:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 1

    .prologue
    .line 497
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    .line 498
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 499
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPNotificationSettings$1;

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 507
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 509
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->isShowPhoneSummary()Z
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "ringtone"

    invoke-static {v2, v0, v3}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mPhoneRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 516
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mNotificationRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "notification_sound"

    invoke-static {v2, v0, v3}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 519
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mSmsRingtonePreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$900(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "mms_notification"

    invoke-static {v2, v0, v3}, Lcom/oneplus/settings/utils/OPNotificationUtils;->replaceWith(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 522
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mVolumeCallback:Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 525
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateEffectsSuppressor()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1200(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    goto :goto_0

    .line 528
    :pswitch_5
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->updateRingerMode()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1300(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
