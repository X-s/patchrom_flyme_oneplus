.class final Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Lcom/oneplus/settings/notification/OPVolumeSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumePreferenceCallback"
.end annotation


# instance fields
.field private mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;Lcom/oneplus/settings/notification/OPNotificationSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/settings/notification/OPNotificationSettings;
    .param p2, "x1"    # Lcom/oneplus/settings/notification/OPNotificationSettings$1;

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V

    return-void
.end method


# virtual methods
.method public onSampleStarting(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V
    .locals 4
    .param p1, "sbv"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .prologue
    const/4 v1, 0x3

    .line 375
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eq v0, p1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stopSample()V

    .line 378
    :cond_0
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 379
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$400(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->removeMessages(I)V

    .line 381
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$400(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    :cond_1
    return-void
.end method

.method public onStreamValueChanged(II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "progress"    # I

    .prologue
    .line 388
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$VolumePreferenceCallback;->mCurrent:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stopSample()V

    .line 394
    :cond_0
    return-void
.end method
