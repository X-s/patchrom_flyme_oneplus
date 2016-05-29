.class Lcom/oneplus/settings/notification/OPNotificationSettings$7;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;->initVibrateWhenMute(Landroid/preference/PreferenceCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$7;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 317
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 318
    .local v0, "val":Z
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$7;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$500(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_vibrate_under_silent"

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$7;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mRingOrNotificationPreference:Lcom/oneplus/settings/notification/VolumeSeekBarPreference;
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$600(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/VolumeSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/settings/notification/VolumeSeekBarPreference;->getVolumeValue()I

    move-result v1

    .line 322
    .local v1, "volume":I
    return v3

    .line 318
    .end local v1    # "volume":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
