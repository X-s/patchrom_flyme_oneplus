.class final Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Lcom/oneplus/settings/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPNotificationSettings$1;

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 653
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 656
    :cond_0
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 657
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->removeMessages(I)V

    .line 659
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 661
    :cond_1
    return-void
.end method

.method public onStreamMuted(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 678
    const-string v0, "NotificationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zll onMuted aaa muted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->onMuteChanged(Z)V
    invoke-static {v0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$900(Lcom/oneplus/settings/notification/OPNotificationSettings;Z)V

    .line 680
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 666
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 672
    :cond_0
    return-void
.end method
