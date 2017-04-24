.class Lcom/android/server/notification/ZenModeHelper$1;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/service/notification/ZenModeConfig$Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/service/notification/ZenModeConfig$XmlV1;)Landroid/service/notification/ZenModeConfig;
    .locals 6
    .param p1, "v1"    # Landroid/service/notification/ZenModeConfig$XmlV1;

    .prologue
    .line 619
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 650
    :goto_0
    return-object v1

    .line 620
    :cond_0
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 621
    .local v1, "rt":Landroid/service/notification/ZenModeConfig;
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowCalls:Z

    iput-boolean v4, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 622
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowEvents:Z

    iput-boolean v4, v1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 623
    iget v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v4, v1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 624
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowMessages:Z

    iput-boolean v4, v1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 625
    iget v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowFrom:I

    iput v4, v1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 626
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->allowReminders:Z

    iput-boolean v4, v1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 628
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepMode:Ljava/lang/String;

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig$XmlV1;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    .line 629
    .local v0, "days":[I
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 630
    const-string v4, "ZenModeHelper"

    const-string v5, "Migrating existing V1 downtime to single schedule"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v3}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 632
    .local v3, "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iput-object v0, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 633
    iget v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartHour:I

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 634
    iget v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepStartMinute:I

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 635
    iget v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndHour:I

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 636
    iget v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepEndMinute:I

    iput v4, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    .line 637
    new-instance v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 638
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 639
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040594

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    .line 641
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 642
    iget-boolean v4, p1, Landroid/service/notification/ZenModeConfig$XmlV1;->sleepNone:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    :goto_1
    iput v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 644
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->newRuleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :goto_2
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # invokes: Lcom/android/server/notification/ZenModeHelper;->appendDefaultEventRules(Landroid/service/notification/ZenModeConfig;)V
    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper;->access$800(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    goto :goto_0

    .line 642
    .restart local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v3    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    .line 646
    .end local v2    # "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "schedule":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    :cond_2
    const-string v4, "ZenModeHelper"

    const-string v5, "No existing V1 downtime found, generating default schedules"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$1;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # invokes: Lcom/android/server/notification/ZenModeHelper;->appendDefaultScheduleRules(Landroid/service/notification/ZenModeConfig;)V
    invoke-static {v4, v1}, Lcom/android/server/notification/ZenModeHelper;->access$700(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;)V

    goto :goto_2
.end method
