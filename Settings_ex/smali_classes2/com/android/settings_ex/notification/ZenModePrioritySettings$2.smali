.class Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-get1(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v6

    .line 100
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 101
    .local v0, "val":Z
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v1, v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v2, 0xa7

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 102
    sget-boolean v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPrefChange allowReminders="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    iget-object v2, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-static {v2, v0, v6}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-wrap1(Lcom/android/settings_ex/notification/ZenModePrioritySettings;ZI)I

    move-result v2

    .line 104
    iget-object v3, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-static {v3}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-get2(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-static {v4}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-get2(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 105
    iget-object v5, p0, Lcom/android/settings_ex/notification/ZenModePrioritySettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-static {v5}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-get2(Lcom/android/settings_ex/notification/ZenModePrioritySettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v5

    iget v5, v5, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 103
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/notification/ZenModePrioritySettings;->-wrap2(Lcom/android/settings_ex/notification/ZenModePrioritySettings;IIII)V

    .line 106
    return v6
.end method
