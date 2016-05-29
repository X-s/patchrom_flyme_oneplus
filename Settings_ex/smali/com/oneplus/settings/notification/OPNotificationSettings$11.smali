.class Lcom/oneplus/settings/notification/OPNotificationSettings$11;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;->initMuteSettings(Landroid/preference/PreferenceCategory;)V
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
    .line 714
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 719
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 725
    .local v3, "val":Z
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "oem_zen_status"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 726
    .local v2, "mZenmode":I
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "oem.threeStageKey.support"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 729
    if-eqz v3, :cond_2

    .line 731
    const/4 v0, 0x1

    .line 732
    .local v0, "mStatus":I
    if-nez v2, :cond_1

    .line 734
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 735
    .local v1, "mThreeIntent":Landroid/content/Intent;
    const-string v5, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string v5, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "oem_silent_status"

    if-nez v3, :cond_4

    move v5, v6

    :goto_1
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 812
    .end local v0    # "mStatus":I
    .end local v1    # "mThreeIntent":Landroid/content/Intent;
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mMuteSetting:Landroid/preference/TwoStatePreference;
    invoke-static {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1000(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 814
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$1100(Lcom/oneplus/settings/notification/OPNotificationSettings;)Landroid/media/AudioManager;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 817
    .local v4, "vo":I
    return v6

    .line 741
    .end local v4    # "vo":I
    .restart local v0    # "mStatus":I
    :cond_1
    const/4 v0, 0x2

    .line 743
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 744
    .restart local v1    # "mThreeIntent":Landroid/content/Intent;
    const-string v5, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v5, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 756
    .end local v0    # "mStatus":I
    .end local v1    # "mThreeIntent":Landroid/content/Intent;
    :cond_2
    if-nez v2, :cond_3

    .line 757
    const/4 v0, 0x3

    .line 759
    .restart local v0    # "mStatus":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 760
    .restart local v1    # "mThreeIntent":Landroid/content/Intent;
    const-string v5, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v5, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 764
    .end local v0    # "mStatus":I
    .end local v1    # "mThreeIntent":Landroid/content/Intent;
    :cond_3
    const/4 v0, 0x2

    .line 766
    .restart local v0    # "mStatus":I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 767
    .restart local v1    # "mThreeIntent":Landroid/content/Intent;
    const-string v5, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const-string v5, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    iget-object v5, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$11;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-virtual {v5}, Lcom/oneplus/settings/notification/OPNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 774
    :cond_4
    const/4 v5, 0x1

    goto :goto_1
.end method
