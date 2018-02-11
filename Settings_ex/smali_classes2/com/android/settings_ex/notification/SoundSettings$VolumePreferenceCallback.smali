.class final Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

.field final synthetic this$0:Lcom/android/settings_ex/notification/SoundSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/SoundSettings;Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/SoundSettings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/SoundSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 676
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stopSample()V

    .line 679
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 680
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/SoundSettings$H;->removeMessages(I)V

    .line 682
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/SoundSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/SoundSettings;->-get2(Lcom/android/settings_ex/notification/SoundSettings;)Lcom/android/settings_ex/notification/SoundSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/notification/SoundSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 675
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 687
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/settings_ex/notification/SoundSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stopSample()V

    .line 691
    :cond_0
    return-void
.end method
