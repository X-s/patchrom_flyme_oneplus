.class Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetTime(II)Z
    .locals 4
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    iget-boolean v0, v0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->mDisableListeners:Z

    if-eqz v0, :cond_0

    return v3

    .line 107
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 108
    :cond_1
    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-ne p2, v0, :cond_3

    .line 110
    return v3

    .line 112
    :cond_3
    sget-boolean v0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPrefChange start h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput p2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-get0(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 116
    return v3
.end method
