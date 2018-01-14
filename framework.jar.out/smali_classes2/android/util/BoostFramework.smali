.class public Landroid/util/BoostFramework;
.super Ljava/lang/Object;
.source "BoostFramework.java"


# static fields
.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.Performance"

.field private static final PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/QPerformance.jar"

.field private static final TAG:Ljava/lang/String; = "BoostFramework"

.field private static mAcquireFunc:Ljava/lang/reflect/Method;

.field private static mAcquireTouchFunc:Ljava/lang/reflect/Method;

.field private static mBoostActivityList:[Ljava/lang/String;

.field private static mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final mDebugBoost:I

.field private static mIOPStart:Ljava/lang/reflect/Method;

.field private static mIOPStop:Ljava/lang/reflect/Method;

.field private static mIsLoaded:Z

.field private static mLockDuration:I

.field private static mParamVal:[I

.field private static mReleaseFunc:Ljava/lang/reflect/Method;

.field private static mStartTime:J

.field private static sPower:Landroid/os/IPowerManager;


# instance fields
.field private mPerf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/BoostFramework;->mIsLoaded:Z

    .line 61
    sput-object v1, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 62
    sput-object v1, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 63
    sput-object v1, Landroid/util/BoostFramework;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 64
    sput-object v1, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    .line 65
    sput-object v1, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    .line 66
    sput-object v1, Landroid/util/BoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 67
    const/4 v0, -0x1

    sput v0, Landroid/util/BoostFramework;->mLockDuration:I

    .line 71
    invoke-static {}, Landroid/util/BoostFramework;->getDebugBoostProperty()I

    move-result v0

    sput v0, Landroid/util/BoostFramework;->mDebugBoost:I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    .line 79
    sget-boolean v4, Landroid/util/BoostFramework;->mIsLoaded:Z

    if-nez v4, :cond_0

    .line 84
    :try_start_0
    new-instance v3, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/QPerformance.jar"

    .line 85
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 84
    invoke-direct {v3, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 86
    .local v3, "perfClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.Performance"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 87
    .local v2, "perfClass":Ljava/lang/Class;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 89
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-class v4, [I

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 90
    .local v0, "argClasses":[Ljava/lang/Class;
    const-string/jumbo v4, "perfLockAcquire"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    .line 91
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAcquireFunc method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    .line 94
    const-string/jumbo v4, "perfLockRelease"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    .line 95
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mReleaseFunc method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    const-class v4, Landroid/view/MotionEvent;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-class v4, Landroid/util/DisplayMetrics;

    const/4 v5, 0x1

    aput-object v4, v0, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const-class v4, [I

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 98
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    const-string/jumbo v4, "perfLockAcquireTouch"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    .line 99
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAcquireTouchFunc method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/util/BoostFramework;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Class;

    .end local v0    # "argClasses":[Ljava/lang/Class;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 102
    .restart local v0    # "argClasses":[Ljava/lang/Class;
    const-string/jumbo v4, "perfIOPrefetchStart"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    .line 103
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIOPStart method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    .line 106
    const-string/jumbo v4, "perfIOPrefetchStop"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    .line 107
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mIOPStop method = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v4, 0x1

    sput-boolean v4, Landroid/util/BoostFramework;->mIsLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "argClasses":[Ljava/lang/Class;
    .end local v2    # "perfClass":Ljava/lang/Class;
    .end local v3    # "perfClassLoader":Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    :try_start_1
    sget-object v4, Landroid/util/BoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    .line 118
    sget-object v4, Landroid/util/BoostFramework;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :cond_1
    :goto_1
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BoostFramework() : mPerf = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BoostFramework() : Exception_1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 122
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BoostFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "BoostFramework() : Exception_2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDebugBoostProperty()I
    .locals 2

    .prologue
    .line 167
    const-string/jumbo v0, "persist.debugboost.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public boostEnableAndRaisePriorityTimeoutMs(I)V
    .locals 5
    .param p1, "timeout_ms"    # I

    .prologue
    .line 271
    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {p0, p1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 275
    :try_start_0
    sget-object v2, Landroid/util/BoostFramework;->sPower:Landroid/os/IPowerManager;

    if-nez v2, :cond_0

    .line 276
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 277
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    sput-object v2, Landroid/util/BoostFramework;->sPower:Landroid/os/IPowerManager;

    .line 278
    sget-object v2, Landroid/util/BoostFramework;->sPower:Landroid/os/IPowerManager;

    if-nez v2, :cond_0

    .line 279
    const-string/jumbo v2, "BoostFramework"

    const-string/jumbo v3, "Failed to get power manager service."

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 283
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v2, Landroid/util/BoostFramework;->sPower:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/os/IPowerManager;->boostEnableAndRaisePriorityTimeoutMs(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "BoostFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ERR: RemoteException in boostEnableAndRaisePriorityTimeoutMs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :array_0
    .array-data 4
        0x40800100    # 4.000122f
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40400000    # 3.0f
        0x1
    .end array-data
.end method

.method public boostOverride(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v1, 0x1

    .line 216
    sget v0, Landroid/util/BoostFramework;->mDebugBoost:I

    if-ne v0, v1, :cond_0

    .line 217
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/BoostFramework;->enableDebugBoost(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)V

    .line 218
    return v1

    .line 220
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public enableDebugBoost(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v10, -0x1

    .line 175
    const v0, 0xf4240

    .line 177
    .local v0, "NANO_TO_MILLI":I
    const/4 v4, 0x0

    .line 180
    .local v4, "mDebugBoostPossible":Z
    sget v6, Landroid/util/BoostFramework;->mLockDuration:I

    if-eq v6, v10, :cond_0

    sget-object v6, Landroid/util/BoostFramework;->mParamVal:[I

    if-nez v6, :cond_4

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 182
    const v7, 0x10e00b2

    .line 181
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    sput v6, Landroid/util/BoostFramework;->mLockDuration:I

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 184
    const v7, 0x1070056

    .line 183
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->mParamVal:[I

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 186
    const v7, 0x1070055

    .line 185
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/util/BoostFramework;->mBoostActivityList:[Ljava/lang/String;

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "currentActivity":Ljava/lang/String;
    sget-object v7, Landroid/util/BoostFramework;->mBoostActivityList:[Ljava/lang/String;

    const/4 v6, 0x0

    array-length v8, v7

    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v5, v7, v6

    .line 193
    .local v5, "match":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_5

    .line 195
    const/4 v4, 0x1

    .line 200
    .end local v5    # "match":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sget-wide v8, Landroid/util/BoostFramework;->mStartTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long v2, v6, v8

    .line 203
    .local v2, "elapsedMillis":J
    if-eqz v4, :cond_3

    sget v6, Landroid/util/BoostFramework;->mLockDuration:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 204
    sget v6, Landroid/util/BoostFramework;->mLockDuration:I

    sget-object v7, Landroid/util/BoostFramework;->mParamVal:[I

    invoke-virtual {p0, p2, p3, v6, v7}, Landroid/util/BoostFramework;->perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I

    .line 205
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sput-wide v6, Landroid/util/BoostFramework;->mStartTime:J

    .line 206
    const-string/jumbo v6, "BoostFramework"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dBoost: activity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "elapsed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_3
    return-void

    .line 180
    .end local v1    # "currentActivity":Ljava/lang/String;
    .end local v2    # "elapsedMillis":J
    :cond_4
    sget-object v6, Landroid/util/BoostFramework;->mBoostActivityList:[Ljava/lang/String;

    if-nez v6, :cond_1

    goto/16 :goto_0

    .line 192
    .restart local v1    # "currentActivity":Ljava/lang/String;
    .restart local v5    # "match":Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public perfIOPrefetchStart(ILjava/lang/String;)I
    .locals 8
    .param p1, "pid"    # I
    .param p2, "pkg_name"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v1, -0x1

    .line 241
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mIOPStart:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 242
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    return v1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfIOPrefetchStop()I
    .locals 6

    .prologue
    .line 252
    const/4 v1, -0x1

    .line 254
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mIOPStop:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 255
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 8
    .param p1, "duration"    # I
    .param p2, "list"    # [I

    .prologue
    .line 141
    const/4 v1, -0x1

    .line 143
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mAcquireFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 148
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs perfLockAcquireTouch(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;I[I)I
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "duration"    # I
    .param p4, "list"    # [I

    .prologue
    .line 226
    const/4 v1, -0x1

    .line 228
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mAcquireTouchFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x3

    aput-object p4, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 229
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 233
    :goto_0
    return v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public perfLockRelease()I
    .locals 6

    .prologue
    .line 153
    const/4 v1, -0x1

    .line 155
    .local v1, "ret":I
    :try_start_0
    sget-object v3, Landroid/util/BoostFramework;->mReleaseFunc:Ljava/lang/reflect/Method;

    iget-object v4, p0, Landroid/util/BoostFramework;->mPerf:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 156
    .local v2, "retVal":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "retVal":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 160
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BoostFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
