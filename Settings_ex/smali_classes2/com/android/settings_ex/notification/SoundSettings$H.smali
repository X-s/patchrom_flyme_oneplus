.class final Lcom/android/settings_ex/notification/SoundSettings$H;
.super Landroid/os/Handler;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final STOP_SAMPLE:I = 0x3

.field private static final UPDATE_ALARM_RINGTONE:I = 0x6

.field private static final UPDATE_EFFECTS_SUPPRESSOR:I = 0x4

.field private static final UPDATE_NOTIFICATION_RINGTONE:I = 0x2

.field private static final UPDATE_PHONE_RINGTONE:I = 0x1

.field private static final UPDATE_RINGER_MODE:I = 0x5

.field private static final UPDATE_SMS_RINGTONE:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    .line 907
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 906
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;Lcom/android/settings_ex/notification/SoundSettings$H;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/SoundSettings$H;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 912
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 911
    :goto_0
    return-void

    .line 914
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-get4(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 917
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-get3(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 921
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-get5(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 925
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-get6(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 928
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap4(Lcom/android/settings_ex/notification/SoundSettings;)V

    goto :goto_0

    .line 931
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap5(Lcom/android/settings_ex/notification/SoundSettings;)V

    goto :goto_0

    .line 934
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$H;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-get0(Lcom/android/settings_ex/notification/SoundSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 912
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method
