.class public Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "ZenModeConditions.java"

# interfaces
.implements Lcom/android/server/notification/ConditionProviders$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mFirstEvaluation:Z

.field private final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 3
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    .line 45
    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 46
    iput-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 47
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string v1, "schedule"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/EventConditionProvider;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p0}, Lcom/android/server/notification/ConditionProviders;->setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V

    .line 57
    return-void
.end method

.method private evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V
    .locals 9
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;
    .param p3, "processSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    .line 161
    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 163
    .local v2, "id":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 164
    .local v3, "isSystemCondition":Z
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5}, Lcom/android/server/notification/ConditionProviders;->getSystemProviders()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/SystemConditionProviderService;

    .line 165
    .local v4, "sp":Lcom/android/server/notification/SystemConditionProviderService;
    invoke-virtual {v4, v2}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    invoke-virtual {v5, v7, v2, v8}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 167
    invoke-virtual {v4}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 168
    const/4 v3, 0x1

    goto :goto_1

    .line 171
    .end local v4    # "sp":Lcom/android/server/notification/SystemConditionProviderService;
    :cond_3
    if-nez v3, :cond_5

    .line 172
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/ConditionProviders;->findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 173
    .local v0, "cp":Landroid/service/notification/IConditionProvider;
    sget-boolean v5, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v7, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ensure external rule exists: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_4
    if-eqz v0, :cond_5

    .line 175
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7, v2, v0}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    .line 178
    .end local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_5
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-nez v5, :cond_7

    .line 179
    const-string v5, "ZenModeHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No component found for automatic rule: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    goto/16 :goto_0

    .restart local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_6
    move v5, v6

    .line 173
    goto :goto_2

    .line 183
    .end local v0    # "cp":Landroid/service/notification/IConditionProvider;
    :cond_7
    if-eqz p2, :cond_8

    .line 184
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_8
    if-eqz p3, :cond_9

    .line 187
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 188
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_9
    :goto_3
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v5, :cond_0

    .line 194
    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v6, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/ConditionProviders;->findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v5

    iput-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 195
    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "ZenModeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found existing condition for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    :cond_a
    sget-boolean v5, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ZenModeHelper"

    const-string v6, "zmc failed to subscribe"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private isAutomaticActive(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 201
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v3

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 203
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    if-eqz v0, :cond_0

    .line 204
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 205
    .local v2, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v4, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;
    .param p3, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x0

    .line 222
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    iput-object p2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    .line 226
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 3
    .param p1, "rule"    # Landroid/service/notification/ZenModeConfig$ZenRule;

    .prologue
    const/4 v0, 0x0

    .line 213
    if-eqz p1, :cond_2

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    :cond_0
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 215
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snoozing reset for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_1
    const/4 v0, 0x1

    .line 218
    :cond_2
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V
    .locals 9
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "processSubscriptions"    # Z

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v7, :cond_2

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v7, :cond_2

    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v7

    if-nez v7, :cond_2

    .line 103
    sget-boolean v7, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "ZenModeHelper"

    const-string v8, "evaluateConfig: clearing manual rule"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 106
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 107
    .local v3, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v7, v3, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    .line 108
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 109
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    .line 110
    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    goto :goto_1

    .line 112
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 113
    .local v0, "N":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_5

    .line 114
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 115
    .local v6, "id":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 116
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz p2, :cond_4

    .line 117
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 118
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v7, v2, v6}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    .line 119
    iget-object v7, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 113
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 123
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v6    # "id":Landroid/net/Uri;
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    goto :goto_0
.end method

.method public evaluateConfig(Landroid/service/notification/ZenModeConfig;ZI)V
    .locals 11
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "processSubscriptions"    # Z
    .param p3, "zenMode"    # I

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v8, 0x3

    if-ne p3, v8, :cond_2

    .line 70
    sget-boolean v8, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "ZenModeHelper"

    const-string v9, "evaluateConfig: clearing manual rule"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 79
    :goto_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 80
    .local v3, "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v8, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v8, v3, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    .line 81
    iget-object v8, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 82
    .local v1, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, v1, v3, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    .line 83
    invoke-direct {p0, v1}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    goto :goto_2

    .line 73
    .end local v1    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v3    # "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    sget-boolean v8, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "ZenModeHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "evaluateConfig: generating manual rule: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    new-instance v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 75
    .local v7, "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 76
    iput p3, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 77
    iput-object v7, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_1

    .line 85
    .end local v7    # "newRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .restart local v3    # "current":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v8, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 86
    .local v0, "N":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "i":I
    :goto_3
    if-ltz v4, :cond_6

    .line 87
    iget-object v8, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 88
    .local v6, "id":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 89
    .local v2, "component":Landroid/content/ComponentName;
    if-eqz p2, :cond_5

    .line 90
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 91
    iget-object v8, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v8, v2, v6}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    .line 92
    iget-object v8, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 86
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 96
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v6    # "id":Landroid/net/Uri;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    goto/16 :goto_0
.end method

.method public onBootComplete()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .locals 7
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "condition"    # Landroid/service/notification/Condition;

    .prologue
    .line 146
    sget-boolean v4, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConditionChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 148
    .local v1, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v1, :cond_2

    .line 158
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    .line 150
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/notification/ZenModeConditions;->updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v3

    .line 151
    .local v3, "updated":Z
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 152
    .local v0, "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/ZenModeConditions;->updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 153
    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 154
    goto :goto_1

    .line 155
    .end local v0    # "automaticRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_3
    if-eqz v3, :cond_1

    .line 156
    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v5, "conditionChanged"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/notification/ZenModeHelper;->setConfigAsync(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceAdded(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeConditions;->isAutomaticActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const-string v2, "zmc.onServiceAdded"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfigAsync(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    .line 142
    :cond_1
    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public requestConditions(Landroid/service/notification/IConditionListener;I)V
    .locals 1
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditions(Landroid/service/notification/IConditionListener;I)V

    .line 65
    return-void
.end method
