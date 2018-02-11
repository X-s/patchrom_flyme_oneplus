.class Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;
.super Ljava/lang/Object;
.source "ZenModeVisualInterruptionSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    .line 79
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 80
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->mContext:Landroid/content/Context;

    const/16 v2, 0x10d

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 81
    sget-boolean v1, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange suppressWhenScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;

    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->-wrap0(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;ZI)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;->-wrap1(Lcom/android/settings_ex/notification/ZenModeVisualInterruptionSettings;I)V

    .line 83
    return v4
.end method
