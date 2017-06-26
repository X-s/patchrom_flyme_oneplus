.class Lcom/oneplus/settings/notification/OPZenModeSettings$2;
.super Ljava/lang/Object;
.source "OPZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPZenModeSettings;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # getter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mDisableListeners:Z
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$000(Lcom/oneplus/settings/notification/OPZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 136
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 137
    .local v0, "val":Z
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # getter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$100(Lcom/oneplus/settings/notification/OPZenModeSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v3, 0xab

    invoke-static {v1, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 140
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # getter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeateCallEnable:Z
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$200(Lcom/oneplus/settings/notification/OPZenModeSettings;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 142
    const-string v1, "OPZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange mRepeateCallEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # setter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeateCallEnable:Z
    invoke-static {v1, v0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$202(Lcom/oneplus/settings/notification/OPZenModeSettings;Z)Z

    .line 144
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_repeate_incall_unlimite"

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # getter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mRepeateCallEnable:Z
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$200(Lcom/oneplus/settings/notification/OPZenModeSettings;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$2;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # invokes: Lcom/oneplus/settings/notification/OPZenModeSettings;->updateControls()V
    invoke-static {v1}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$300(Lcom/oneplus/settings/notification/OPZenModeSettings;)V

    goto :goto_0

    .line 144
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
