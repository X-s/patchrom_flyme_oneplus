.class Lcom/android/settings_ex/notification/ZenModeSettings$11;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$000(Lcom/android/settings_ex/notification/ZenModeSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    const/4 v2, 0x1

    .line 446
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 438
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 440
    .local v1, "sleepNone":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v3}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    iget-boolean v3, v3, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    if-eq v3, v1, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # getter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v2}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$100(Lcom/android/settings_ex/notification/ZenModeSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 443
    .local v0, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->sleepNone:Z

    .line 445
    const-string v2, "ZenModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange sleepNone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeSettings$11;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    # invokes: Lcom/android/settings_ex/notification/ZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v2, v0}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$200(Lcom/android/settings_ex/notification/ZenModeSettings;Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    goto :goto_0

    .end local v0    # "newConfig":Landroid/service/notification/ZenModeConfig;
    .end local v1    # "sleepNone":Z
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    move v1, v2

    .line 438
    goto :goto_1
.end method
