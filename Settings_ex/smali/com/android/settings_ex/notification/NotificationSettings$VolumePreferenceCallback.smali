.class final Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/VolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Landroid/preference/SeekBarVolumizer;

.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;Lcom/android/settings_ex/notification/NotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/NotificationSettings;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/NotificationSettings$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings_ex/notification/NotificationSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 280
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    .line 281
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$300(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/NotificationSettings$H;->removeMessages(I)V

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mHandler:Lcom/android/settings_ex/notification/NotificationSettings$H;
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationSettings;->access$300(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/NotificationSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/notification/NotificationSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 290
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$VolumePreferenceCallback;->mCurrent:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    .line 296
    :cond_0
    return-void
.end method
