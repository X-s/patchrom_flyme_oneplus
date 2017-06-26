.class Lcom/oneplus/settings/notification/OPZenModeSettings$3;
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
    .line 151
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$3;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

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

    .line 156
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$3;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # getter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$000(Lcom/oneplus/settings/notification/OPZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 158
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 159
    .local v1, "val":Z
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$3;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # getter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$400(Lcom/oneplus/settings/notification/OPZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v1, v3, :cond_0

    .line 161
    const-string v2, "OPZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange allowEvents="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$3;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # getter for: Lcom/oneplus/settings/notification/OPZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$500(Lcom/oneplus/settings/notification/OPZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 163
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 164
    iget-object v2, p0, Lcom/oneplus/settings/notification/OPZenModeSettings$3;->this$0:Lcom/oneplus/settings/notification/OPZenModeSettings;

    # invokes: Lcom/oneplus/settings/notification/OPZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/oneplus/settings/notification/OPZenModeSettings;->access$600(Lcom/oneplus/settings/notification/OPZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0
.end method
