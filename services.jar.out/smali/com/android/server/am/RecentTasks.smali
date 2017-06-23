.class Lcom/android/server/am/RecentTasks;
.super Ljava/util/ArrayList;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RECENT_BITMAPS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final tmpAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final tmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 508
    new-instance v0, Lcom/android/server/am/RecentTasks$1;

    invoke-direct {v0}, Lcom/android/server/am/RecentTasks$1;-><init>()V

    sput-object v0, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    .line 57
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 58
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    iput-object p1, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 62
    return-void
.end method

.method private final moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .locals 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v4

    .line 206
    .local v4, "recentsCount":I
    move-object v6, p1

    .line 207
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    move v7, p2

    .line 208
    .local v7, "topIndex":I
    :goto_0
    iget-object v8, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_0

    if-lez v7, :cond_0

    .line 209
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 210
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 212
    :cond_0
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_1

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: adding affilliates starting at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from intial "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    iget v8, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v8, v9, :cond_8

    const/4 v5, 0x1

    .line 216
    .local v5, "sane":Z
    :goto_1
    move v1, v7

    .line 217
    .local v1, "endIndex":I
    move-object v3, v6

    .line 218
    .local v3, "prev":Lcom/android/server/am/TaskRecord;
    :cond_2
    if-ge v1, v4, :cond_5

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 220
    .local v0, "cur":Lcom/android/server/am/TaskRecord;
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_3

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: looking at next chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    if-ne v0, v6, :cond_9

    .line 224
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_4

    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_b

    .line 225
    :cond_4
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": first task has next affiliate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v5, 0x0

    .line 281
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 282
    if-ge v1, p2, :cond_6

    .line 283
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": did not extend to task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v5, 0x0

    .line 288
    :cond_6
    if-eqz v5, :cond_12

    .line 291
    move v2, v7

    .local v2, "i":I
    :goto_3
    if-gt v2, v1, :cond_10

    .line 292
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_7

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: moving affiliated "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 295
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    sub-int v8, v2, v7

    invoke-virtual {p0, v8, v0}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 291
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 215
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v5    # "sane":Z
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 232
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "endIndex":I
    .restart local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "sane":Z
    :cond_9
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v8, v3, :cond_a

    iget v8, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v9, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v8, v9, :cond_b

    .line 234
    :cond_a
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": middle task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has bad next affiliate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v5, 0x0

    .line 240
    goto/16 :goto_2

    .line 243
    :cond_b
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    .line 245
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v8, :cond_c

    .line 246
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": last task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has previous affiliate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, 0x0

    .line 251
    :cond_c
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_5

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: end of chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 255
    :cond_d
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v8, :cond_e

    .line 256
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has previous affiliate "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but should be id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v5, 0x0

    .line 261
    goto/16 :goto_2

    .line 264
    :cond_e
    iget v8, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v9, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v8, v9, :cond_f

    .line 265
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain @"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has affiliated id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but should be "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v5, 0x0

    .line 270
    goto/16 :goto_2

    .line 272
    :cond_f
    move-object v3, v0

    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 274
    if-lt v1, v4, :cond_2

    .line 275
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad chain ran off index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": last task "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v5, 0x0

    .line 278
    goto/16 :goto_2

    .line 297
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "i":I
    :cond_10
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_11

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: done moving tasks  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_11
    const/4 v8, 0x1

    .line 303
    .end local v2    # "i":I
    :goto_4
    return v8

    :cond_12
    const/4 v8, 0x0

    goto :goto_4
.end method

.method private processNextAffiliateChainLocked(I)I
    .locals 12
    .param p1, "start"    # I

    .prologue
    .line 517
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 518
    .local v6, "startTask":Lcom/android/server/am/TaskRecord;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 521
    .local v0, "affiliateId":I
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, v0, :cond_0

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_0

    .line 526
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 527
    add-int/lit8 v9, p1, 0x1

    .line 585
    :goto_0
    return v9

    .line 531
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 532
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_1
    if-lt v2, p1, :cond_2

    .line 533
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 534
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v9, v0, :cond_1

    .line 535
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 536
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 542
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    sget-object v10, Lcom/android/server/am/RecentTasks;->sTaskRecordComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 546
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 547
    .local v1, "first":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 548
    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_3

    .line 549
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 1 first.next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 551
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 554
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 555
    .local v8, "tmpSize":I
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_6

    .line 556
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 557
    .local v4, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 558
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v5, :cond_4

    .line 559
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 2 next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 562
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 564
    :cond_4
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v4, :cond_5

    .line 565
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 3 prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 568
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 570
    :cond_5
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 555
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 573
    .end local v4    # "next":Lcom/android/server/am/TaskRecord;
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 574
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_7

    .line 575
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 4 last.prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 577
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 581
    :cond_7
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v9}, Lcom/android/server/am/RecentTasks;->addAll(ILjava/util/Collection;)Z

    .line 582
    iget-object v9, p0, Lcom/android/server/am/RecentTasks;->mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 585
    add-int v9, p1, v8

    goto/16 :goto_0
.end method


# virtual methods
.method final addLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 13
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 307
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, v11, :cond_0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v8, v12, :cond_0

    iget v8, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v8, v12, :cond_2

    :cond_0
    move v0, v10

    .line 311
    .local v0, "isAffiliated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 313
    .local v5, "recentsCount":I
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_3

    .line 314
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_1

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: not adding voice interaction "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    :goto_1
    return-void

    .end local v0    # "isAffiliated":Z
    .end local v5    # "recentsCount":I
    :cond_2
    move v0, v9

    .line 307
    goto :goto_0

    .line 319
    .restart local v0    # "isAffiliated":Z
    .restart local v5    # "recentsCount":I
    :cond_3
    if-nez v0, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {p0, v9}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, p1, :cond_4

    .line 320
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_1

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: already at top: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    :cond_4
    if-eqz v0, :cond_5

    if-lez v5, :cond_5

    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_5

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p0, v9}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v11, v8, :cond_5

    .line 327
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_1

    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addRecent: affiliated "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v9}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " at top when adding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 332
    :cond_5
    const/4 v2, 0x0

    .line 336
    .local v2, "needAffiliationFix":Z
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v8, :cond_7

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 338
    .local v6, "taskIndex":I
    if-ltz v6, :cond_9

    .line 339
    if-nez v0, :cond_6

    .line 341
    invoke-virtual {p0, v6}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 342
    invoke-virtual {p0, v9, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 343
    iget-object v8, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, p1, v9}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 344
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_1

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: moving to top "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    :cond_6
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 356
    const/4 v2, 0x1

    .line 364
    .end local v6    # "taskIndex":I
    :cond_7
    :goto_2
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_8

    const-string v8, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addRecent: trimming tasks for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_8
    invoke-virtual {p0, p1, v10}, Lcom/android/server/am/RecentTasks;->trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I

    .line 367
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 368
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v1

    .line 369
    .local v1, "maxRecents":I
    :goto_3
    if-lt v5, v1, :cond_a

    .line 370
    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 371
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 372
    add-int/lit8 v5, v5, -0x1

    .line 373
    goto :goto_3

    .line 359
    .end local v1    # "maxRecents":I
    .end local v7    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskIndex":I
    :cond_9
    const-string v8, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task with inRecent not in recents: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v2, 0x1

    goto :goto_2

    .line 374
    .end local v6    # "taskIndex":I
    .restart local v1    # "maxRecents":I
    :cond_a
    iput-boolean v10, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 375
    if-eqz v0, :cond_b

    if-eqz v2, :cond_e

    .line 378
    :cond_b
    invoke-virtual {p0, v9, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 379
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_c

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: adding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_c
    :goto_4
    if-eqz v2, :cond_1

    .line 427
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_d

    const-string v8, "ActivityManager"

    const-string v9, "addRecent: regrouping affiliations"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_d
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v8}, Lcom/android/server/am/RecentTasks;->cleanupLocked(I)V

    goto/16 :goto_1

    .line 380
    :cond_e
    if-eqz v0, :cond_c

    .line 383
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 384
    .local v3, "other":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_f

    .line 385
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 387
    :cond_f
    if-eqz v3, :cond_14

    .line 388
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 389
    .local v4, "otherIndex":I
    if-ltz v4, :cond_12

    .line 392
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v3, v8, :cond_11

    .line 395
    add-int/lit8 v6, v4, 0x1

    .line 401
    .restart local v6    # "taskIndex":I
    :goto_5
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_10

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: new affiliated task added at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_10
    invoke-virtual {p0, v6, p1}, Lcom/android/server/am/RecentTasks;->add(ILjava/lang/Object;)V

    .line 406
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/RecentTasks;->moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 413
    const/4 v2, 0x1

    .line 414
    goto :goto_4

    .line 399
    .end local v6    # "taskIndex":I
    :cond_11
    move v6, v4

    .restart local v6    # "taskIndex":I
    goto :goto_5

    .line 415
    .end local v6    # "taskIndex":I
    :cond_12
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_13

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: couldn\'t find other affiliation "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_13
    const/4 v2, 0x1

    goto :goto_4

    .line 420
    .end local v4    # "otherIndex":I
    :cond_14
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v8, :cond_15

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addRecent: adding affiliated task without next/prev:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_4
.end method

.method cleanupLocked(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 103
    .local v5, "recentsCount":I
    if-nez v5, :cond_1

    .line 202
    :cond_0
    return-void

    .line 109
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 110
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v10, -0x1

    if-ne p1, v10, :cond_3

    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v9

    .line 112
    .local v9, "users":[I
    :goto_0
    const/4 v8, 0x0

    .local v8, "userIdx":I
    :goto_1
    array-length v10, v9

    if-ge v8, v10, :cond_13

    .line 113
    aget v7, v9, v8

    .line 114
    .local v7, "user":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .line 115
    move v3, v5

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_12

    .line 116
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 117
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v10, v6, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v7, :cond_4

    .line 115
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 110
    .end local v3    # "i":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "user":I
    .end local v8    # "userIdx":I
    .end local v9    # "users":[I
    :cond_3
    const/4 v10, 0x1

    new-array v9, v10, [I

    const/4 v10, 0x0

    aput p1, v9, v10

    goto :goto_0

    .line 121
    .restart local v3    # "i":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "user":I
    .restart local v8    # "userIdx":I
    .restart local v9    # "users":[I
    :cond_4
    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v10, :cond_5

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_5

    .line 123
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 124
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 125
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing auto-remove without activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 129
    :cond_5
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_2

    .line 130
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 131
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_7

    .line 133
    :try_start_0
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    if-nez v0, :cond_6

    .line 141
    iget-object v0, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 143
    :cond_6
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    if-ne v0, v10, :cond_d

    .line 149
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 150
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_9

    .line 152
    :try_start_1
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 159
    if-nez v1, :cond_8

    .line 160
    iget-object v1, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    :cond_8
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_9
    iget-object v10, p0, Lcom/android/server/am/RecentTasks;->tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eq v1, v10, :cond_a

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_b

    .line 166
    :cond_a
    invoke-virtual {p0, v3}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 167
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 168
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing no longer valid recent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 136
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 155
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 157
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    .line 172
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v10, :cond_c

    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v10, :cond_c

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making recent unavailable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_c
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .line 177
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_d
    iget-boolean v10, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v10, :cond_e

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_e

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_10

    .line 179
    :cond_e
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v10, :cond_f

    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v10, :cond_f

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making recent unavailable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (enabled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v12, v12, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " flags="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .line 186
    :cond_10
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v10, :cond_11

    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-nez v10, :cond_11

    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making recent available: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_11
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_3

    .line 112
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_12
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 196
    .end local v3    # "i":I
    .end local v7    # "user":I
    :cond_13
    const/4 v3, 0x0

    .line 197
    .restart local v3    # "i":I
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 198
    :goto_4
    if-ge v3, v5, :cond_0

    .line 199
    invoke-direct {p0, v3}, Lcom/android/server/am/RecentTasks;->processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_4
.end method

.method removeTasksForUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 77
    if-gtz p1, :cond_0

    .line 78
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t remove recent task on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 84
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_2

    .line 85
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_1

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove RecentTask "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when finishing user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 88
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 82
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 93
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    .line 66
    .local v1, "recentsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 68
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_0

    .line 72
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v2

    .line 66
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I
    .locals 14
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "doTrim"    # Z

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v5

    .line 438
    .local v5, "recentsCount":I
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 439
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v1, 0x1

    .line 440
    .local v1, "document":Z
    :goto_0
    iget v12, p1, Lcom/android/server/am/TaskRecord;->maxRecents:I

    add-int/lit8 v4, v12, -0x1

    .line 441
    .local v4, "maxRecents":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_f

    .line 442
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .line 443
    .local v9, "tr":Lcom/android/server/am/TaskRecord;
    if-eq p1, v9, :cond_b

    .line 444
    iget v12, p1, Lcom/android/server/am/TaskRecord;->userId:I

    iget v13, v9, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v13, :cond_2

    .line 441
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 439
    .end local v1    # "document":Z
    .end local v2    # "i":I
    .end local v4    # "maxRecents":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 447
    .restart local v1    # "document":Z
    .restart local v2    # "i":I
    .restart local v4    # "maxRecents":I
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v12, 0x3

    if-le v2, v12, :cond_3

    .line 448
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    .line 450
    :cond_3
    iget-object v10, v9, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 451
    .local v10, "trIntent":Landroid/content/Intent;
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v13, v9, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v7, 0x1

    .line 453
    .local v7, "sameAffinity":Z
    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3, v10}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v8, 0x1

    .line 454
    .local v8, "sameIntent":Z
    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v11, 0x1

    .line 455
    .local v11, "trIsDocument":Z
    :goto_5
    if-eqz v1, :cond_8

    if-eqz v11, :cond_8

    const/4 v0, 0x1

    .line 456
    .local v0, "bothDocuments":Z
    :goto_6
    if-nez v7, :cond_4

    if-nez v8, :cond_4

    if-eqz v0, :cond_0

    .line 460
    :cond_4
    if-eqz v0, :cond_a

    .line 462
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_9

    iget-object v12, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_9

    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v13, v9, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v12, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v6, 0x1

    .line 465
    .local v6, "sameActivity":Z
    :goto_7
    if-eqz v6, :cond_0

    .line 468
    if-lez v4, :cond_b

    .line 469
    add-int/lit8 v4, v4, -0x1

    .line 470
    goto :goto_2

    .line 451
    .end local v0    # "bothDocuments":Z
    .end local v6    # "sameActivity":Z
    .end local v7    # "sameAffinity":Z
    .end local v8    # "sameIntent":Z
    .end local v11    # "trIsDocument":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 453
    .restart local v7    # "sameAffinity":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    .line 454
    .restart local v8    # "sameIntent":Z
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 455
    .restart local v11    # "trIsDocument":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 462
    .restart local v0    # "bothDocuments":Z
    :cond_9
    const/4 v6, 0x0

    goto :goto_7

    .line 474
    :cond_a
    if-nez v1, :cond_0

    if-nez v11, :cond_0

    .line 480
    .end local v0    # "bothDocuments":Z
    .end local v7    # "sameAffinity":Z
    .end local v8    # "sameIntent":Z
    .end local v10    # "trIntent":Landroid/content/Intent;
    .end local v11    # "trIsDocument":Z
    :cond_b
    if-nez p2, :cond_c

    .line 504
    .end local v2    # "i":I
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_8
    return v2

    .line 489
    .restart local v2    # "i":I
    .restart local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_c
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 490
    invoke-virtual {p0, v2}, Lcom/android/server/am/RecentTasks;->remove(I)Ljava/lang/Object;

    .line 491
    if-eq p1, v9, :cond_d

    .line 492
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 494
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 495
    add-int/lit8 v5, v5, -0x1

    .line 496
    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v12, :cond_e

    .line 499
    move-object p1, v9

    .line 501
    :cond_e
    iget-object v12, p0, Lcom/android/server/am/RecentTasks;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_2

    .line 504
    .end local v9    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v2, -0x1

    goto :goto_8
.end method
