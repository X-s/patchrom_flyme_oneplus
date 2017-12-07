.class Lcom/android/server/am/EmbryoHelper;
.super Ljava/lang/Object;
.source "EmbryoHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmbryoHelper"

.field private static sInstance:Lcom/android/server/am/EmbryoHelper;


# instance fields
.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

.field private mGetCommonServicesMethod:Ljava/lang/reflect/Method;

.field private mPms:Landroid/content/pm/IPackageManager;

.field private mStartProcessMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    .line 43
    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    .line 44
    iput-object v0, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    .line 53
    iput-object p1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 54
    sput-object p0, Lcom/android/server/am/EmbryoHelper;->sInstance:Lcom/android/server/am/EmbryoHelper;

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/EmbryoHelper;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/am/EmbryoHelper;->sInstance:Lcom/android/server/am/EmbryoHelper;

    return-object v0
.end method


# virtual methods
.method public checkIfNewPackageIsLaunchable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 158
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/EmbryoHelper;->checkIfPackageIsLaunchable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkIfPackageIsLaunchable(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 162
    iget-object v5, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v5, :cond_0

    .line 163
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 165
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v5, :cond_1

    .line 166
    const-string/jumbo v3, "EmbryoHelper"

    const-string/jumbo v5, "PM not ready."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v4

    .line 170
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 176
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 175
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v2, v7, v8, v6}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 177
    .local v0, "apps":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lt v5, v3, :cond_2

    :goto_0
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    .line 178
    .end local v0    # "apps":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "EmbryoHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkIfPackageIsLaunchable failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    return v4
.end method

.method public checkIfProcessExist(Landroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 186
    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit v1

    .line 185
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 186
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .locals 6
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 115
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 114
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 115
    return-object v1

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "compatibilityInfoForPackageLocked failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    const/4 v1, 0x0

    return-object v1
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 141
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    .line 142
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_1

    .line 145
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "PM not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v4

    .line 150
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getApplicationInfo failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return-object v4
.end method

.method public getCommonServicesLocked(Z)Ljava/util/HashMap;
    .locals 7
    .param p1, "isolated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 104
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 103
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 104
    return-object v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "getCommonServicesLocked failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 192
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v0, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 191
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 192
    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method initEnvironment()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "startProcessLocked"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 60
    const-class v4, Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 59
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    .line 61
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 62
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "Embryo initEnvironment failed. step 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v6

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 68
    const-string/jumbo v2, "getCommonServicesLocked"

    .line 67
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 68
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 67
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    .line 69
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 70
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "Embryo initEnvironment failed. step 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v6

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mGetCommonServicesMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 76
    const-string/jumbo v2, "compatibilityInfoForPackageLocked"

    .line 75
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 77
    const-class v4, Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 75
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    .line 78
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mCompInfoForPackageMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 79
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "Embryo initEnvironment failed. step 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return v6

    .line 83
    :cond_2
    return v7

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "Embryo initEnvironment failed. final"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    return v6
.end method

.method public isPackageAvailable(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_1

    .line 128
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "PM not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v4

    .line 133
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mPms:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPackageAvailable failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    return v4
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;
    .param p3, "hostingNameStr"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 93
    iget-object v1, p0, Lcom/android/server/am/EmbryoHelper;->mStartProcessMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/am/EmbryoHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    .line 92
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 90
    :goto_0
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "EmbryoHelper"

    const-string/jumbo v2, "startProcessLocked failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
