.class Lcom/android/settings_ex/notification/NotificationSettings$7;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 693
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 694
    .local v0, "val":Z
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # invokes: Lcom/android/settings_ex/notification/NotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$600(Lcom/android/settings_ex/notification/NotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_vibrate_under_silent"

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 696
    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettings$7;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # getter for: Lcom/android/settings_ex/notification/NotificationSettings;->mRingOrNotificationPreference:Lcom/android/settings_ex/notification/VolumeSeekBarPreference;
    invoke-static {v2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$700(Lcom/android/settings_ex/notification/NotificationSettings;)Lcom/android/settings_ex/notification/VolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/notification/VolumeSeekBarPreference;->getVolumeValue()I

    move-result v1

    .line 697
    .local v1, "volume":I
    const-string v2, "richie"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    return v3

    .end local v1    # "volume":I
    :cond_0
    move v2, v3

    .line 694
    goto :goto_0
.end method
