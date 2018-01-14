.class public Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/TimeController$1;,
        Lcom/android/server/job/controllers/TimeController$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"

.field private static mSingleton:Lcom/android/server/job/controllers/TimeController;

.field private static sAlarmTag:Ljava/lang/String;

.field private static sLastAlarmTime:J

.field private static sLastUid:I


# instance fields
.field private final DEADLINE_TAG:Ljava/lang/String;

.field private final DELAY_TAG:Ljava/lang/String;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNextDelayExpiredElapsedMillis:J

.field private final mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNextJobExpiredElapsedMillis:J

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/job/controllers/TimeController;->sAlarmTag:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/android/server/job/controllers/TimeController;->sLastUid:I

    .line 62
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/job/controllers/TimeController;->sLastAlarmTime:J

    .line 41
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    .line 45
    const-string/jumbo v0, "*job.deadline*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DEADLINE_TAG:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "*job.delay*"

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DELAY_TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 54
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    .line 285
    new-instance v0, Lcom/android/server/job/controllers/TimeController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 295
    new-instance v0, Lcom/android/server/job/controllers/TimeController$2;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 76
    iput-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 77
    iput-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 73
    return-void
.end method

.method private canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    :cond_1
    :goto_0
    move v1, v0

    .line 129
    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method private checkExpiredDeadlinesAndResetAlarm()V
    .locals 11

    .prologue
    .line 146
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 147
    const-wide v4, 0x7fffffffffffffffL

    .line 148
    .local v4, "nextExpiryTime":J
    const/4 v6, 0x0

    .line 149
    .local v6, "nextExpiryUid":I
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 151
    .local v8, "nowElapsedMillis":J
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 154
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    .line 159
    .local v2, "jobDeadline":J
    cmp-long v7, v2, v8

    if-gtz v7, :cond_2

    .line 160
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 161
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 163
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/JobStatus;->setDeadlineConstraintSatisfied(Z)Z

    .line 164
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v7, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    .end local v8    # "nowElapsedMillis":J
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7

    .line 167
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "jobDeadline":J
    .restart local v8    # "nowElapsedMillis":J
    :cond_2
    move-wide v4, v2

    .line 168
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    .line 172
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    :cond_3
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 145
    return-void
.end method

.method private checkExpiredDelaysAndResetAlarm()V
    .locals 12

    .prologue
    .line 181
    iget-object v11, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 182
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 183
    .local v8, "nowElapsedMillis":J
    const-wide v4, 0x7fffffffffffffffL

    .line 184
    .local v4, "nextDelayTime":J
    const/4 v6, 0x0

    .line 185
    .local v6, "nextDelayUid":I
    const/4 v7, 0x0

    .line 186
    .local v7, "ready":Z
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 187
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 189
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 192
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v2

    .line 193
    .local v2, "jobDelayTime":J
    cmp-long v10, v2, v8

    if-gtz v10, :cond_2

    .line 194
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    .line 195
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 198
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 199
    const/4 v7, 0x1

    goto :goto_0

    .line 201
    :cond_2
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 204
    cmp-long v10, v4, v2

    if-lez v10, :cond_0

    .line 205
    move-wide v4, v2

    .line 206
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    goto :goto_0

    .line 210
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDelayTime":J
    :cond_3
    if-eqz v7, :cond_4

    .line 211
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v10}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 213
    :cond_4
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 180
    return-void

    .line 181
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextDelayTime":J
    .end local v6    # "nextDelayUid":I
    .end local v7    # "ready":Z
    .end local v8    # "nowElapsedMillis":J
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private ensureAlarmServiceLocked()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 135
    :cond_0
    return-void
.end method

.method public static declared-synchronized get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;
    .locals 4
    .param p0, "jms"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    const-class v1, Lcom/android/server/job/controllers/TimeController;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private maybeAdjustAlarmTime(J)J
    .locals 3
    .param p1, "proposedAlarmTimeElapsedMillis"    # J

    .prologue
    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 253
    .local v0, "earliestWakeupTimeElapsed":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 254
    return-wide v0

    .line 256
    :cond_0
    return-wide p1
.end method

.method private maybeUpdateAlarmsLocked(JJI)V
    .locals 3
    .param p1, "delayExpiredElapsed"    # J
    .param p3, "deadlineExpiredElapsed"    # J
    .param p5, "uid"    # I

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JI)V

    .line 222
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    .line 223
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JI)V

    .line 218
    :cond_1
    return-void
.end method

.method private setDeadlineExpiredAlarmLocked(JI)V
    .locals 7
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "uid"    # I

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 246
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    .line 247
    const-string/jumbo v2, "*job.deadline*"

    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 248
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    move-object v1, p0

    move v6, p3

    .line 247
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JI)V

    .line 244
    return-void
.end method

.method private setDelayExpiredAlarmLocked(JI)V
    .locals 7
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "uid"    # I

    .prologue
    .line 233
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    move-result-wide p1

    .line 234
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    .line 235
    const-string/jumbo v2, "*job.delay*"

    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 236
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    move-object v1, p0

    move v6, p3

    .line 235
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JI)V

    .line 232
    return-void
.end method

.method private updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JI)V
    .locals 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p3, "alarmTimeElapsed"    # J
    .param p5, "uid"    # I

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmServiceLocked()V

    .line 262
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 260
    :goto_0
    return-void

    .line 270
    :cond_0
    sget v2, Lcom/android/server/job/controllers/TimeController;->sLastUid:I

    move/from16 v0, p5

    if-ne v2, v0, :cond_1

    sget-wide v2, Lcom/android/server/job/controllers/TimeController;->sLastAlarmTime:J

    cmp-long v2, v2, p3

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/job/controllers/TimeController;->sAlarmTag:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    return-void

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    .line 274
    const-wide/16 v8, 0x0

    new-instance v13, Landroid/os/WorkSource;

    move/from16 v0, p5

    invoke-direct {v13, v0}, Landroid/os/WorkSource;-><init>(I)V

    .line 273
    const/4 v3, 0x2

    .line 274
    const-wide/16 v6, -0x1

    const/4 v12, 0x0

    move-wide/from16 v4, p3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    .line 273
    invoke-virtual/range {v2 .. v13}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    .line 275
    sput p5, Lcom/android/server/job/controllers/TimeController;->sLastUid:I

    .line 276
    sput-wide p3, Lcom/android/server/job/controllers/TimeController;->sLastAlarmTime:J

    .line 277
    sput-object p1, Lcom/android/server/job/controllers/TimeController;->sAlarmTag:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    .prologue
    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 308
    .local v0, "nowElapsed":J
    const-string/jumbo v4, "Alarms: now="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 310
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 311
    const-string/jumbo v4, "Next delay alarm in "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 312
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 313
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 314
    const-string/jumbo v4, "Next deadline alarm in "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 316
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 317
    const-string/jumbo v4, "Tracking "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 319
    const-string/jumbo v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ts$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 321
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2, p2}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 324
    const-string/jumbo v4, "  #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 326
    const-string/jumbo v4, " from "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v4

    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 328
    const-string/jumbo v4, ": Delay="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 334
    :goto_1
    const-string/jumbo v4, ", Deadline="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 340
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 332
    :cond_1
    const-string/jumbo v4, "N/A"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_2
    const-string/jumbo v4, "N/A"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 306
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 86
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "isInsert":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 90
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    .line 92
    .local v8, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v10

    cmp-long v1, v2, v10

    if-gez v1, :cond_1

    .line 94
    const/4 v0, 0x1

    .line 98
    .end local v8    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 101
    :cond_3
    invoke-interface {v7, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v2

    .line 104
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    .line 105
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    move-object v1, p0

    .line 102
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateAlarmsLocked(JJI)V

    .line 85
    .end local v0    # "isInsert":Z
    .end local v7    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_5
    return-void

    .restart local v0    # "isInsert":Z
    .restart local v7    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6
    move-wide v2, v4

    .line 103
    goto :goto_0
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    .line 118
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    .line 115
    :cond_0
    return-void
.end method
