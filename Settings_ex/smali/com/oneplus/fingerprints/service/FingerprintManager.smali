.class public Lcom/oneplus/fingerprints/service/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;,
        Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;
    }
.end annotation


# static fields
.field static final ARG_IDENTIFY_UPDATED:I = 0x1

.field private static final FINGERPRINT_SERVICE_NAME:Ljava/lang/String; = "fingerprints_service"

.field static final MAX_RETRY_DELAYS:[J

.field static final MIN_RETRY_DELAYS:[J

.field static final MSG_ENROLMENT_DONE:I = 0x5

.field static final MSG_ENROLMENT_FAILED:I = 0x8

.field static final MSG_ENROL_DUPLICATED:I = 0xc9

.field static final MSG_ENROL_PROGRESS:I = 0x4

.field static final MSG_FINGER_PRESENT:I = 0x2

.field static final MSG_FINGER_UP:I = 0x3

.field static final MSG_IDENTIFY_MATCH:I = 0x6

.field static final MSG_IDENTIFY_NO_MATCH:I = 0x7

.field static final MSG_IMAGEQUALITY_GET:I = 0xca

.field static final MSG_NAVIGATE_SWITCH_VALUE_WRITE:I = 0x9

.field static final MSG_ON_STATUS_CHANGED:I = 0x64

.field static final MSG_RESULT_RETURN:I = 0x65

.field static final MSG_WAITING_FINGER:I = 0x1

.field static final SYSTEM_PROPERTY_FIRST_BOOT:Ljava/lang/String; = "ro.runtime.firstboot"

.field static final SYSTEM_PROPERTY_FIRST_BOOT_DEFAULT_VALUE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"

.field static final VALUE_FAILED:I = 0x0

.field static final VALUE_SCUCCESS:I = 0x1

.field private static sService:Lcom/oneplus/fingerprints/service/IFingerprintService;


# instance fields
.field private mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

.field private mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

.field private mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

.field private mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

.field private mFingerEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

.field private mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;

.field private mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mImageQualityCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;

.field private mNavigateCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;

.field private mReleased:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/fingerprints/service/FingerprintManager;->MAX_RETRY_DELAYS:[J

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/fingerprints/service/FingerprintManager;->MIN_RETRY_DELAYS:[J

    return-void

    .line 105
    :array_0
    .array-data 8
        0x5dc
        0x1f4
        0x12c
        0xc8
        0x64
        0x12c
        0xc8
        0x64
        0xc8
        0x64
        0x32
    .end array-data

    .line 108
    :array_1
    .array-data 8
        0x12c
        0xc8
        0x64
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z

    .line 709
    return-void
.end method

.method private constructor <init>(Lcom/oneplus/fingerprints/service/IFingerprintService;Landroid/os/Looper;)V
    .locals 3
    .param p1, "service"    # Lcom/oneplus/fingerprints/service/IFingerprintService;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    .line 274
    iput-boolean v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z

    .line 712
    sput-object p1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    .line 714
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    if-nez v0, :cond_0

    .line 715
    new-instance v0, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;-><init>(Lcom/oneplus/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    if-nez v0, :cond_1

    .line 720
    new-instance v0, Lcom/oneplus/fingerprints/service/FingerprintManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/fingerprints/service/FingerprintManager$2;-><init>(Lcom/oneplus/fingerprints/service/FingerprintManager;)V

    iput-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    .line 750
    :cond_1
    sget-object v0, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    if-eqz v0, :cond_2

    .line 751
    sget-object v0, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v0, v1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->open(Lcom/oneplus/fingerprints/service/IFingerprintClient;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->handleOpenResult(I)V

    .line 757
    iput-boolean v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_2
    const-string v0, "FingerprintManager"

    const-string v1, " fingerprintservice is null"

    invoke-static {v0, v1}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mImageQualityCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mNavigateCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    return-object v0
.end method

.method private static getFingerprintService(Ljava/lang/String;)Lcom/oneplus/fingerprints/service/IFingerprintService;
    .locals 12
    .param p0, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 500
    sget-object v8, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    if-nez v8, :cond_0

    .line 502
    :try_start_0
    const-string v8, "android.os.ServiceManager"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 503
    .local v7, "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 505
    .local v3, "getService":Ljava/lang/reflect/Method;
    const-wide/16 v4, 0x64

    .line 506
    .local v4, "firstBootTime":J
    const-string v8, "FingerprintManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current ro.runtime.firstboot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v6, Lcom/oneplus/fingerprints/service/FingerprintManager;->MAX_RETRY_DELAYS:[J

    .line 509
    .local v6, "retryDelays":[J
    const/4 v0, 0x0

    .local v0, "currentDelayIndex":I
    move v1, v0

    .line 511
    .end local v0    # "currentDelayIndex":I
    .local v1, "currentDelayIndex":I
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v8}, Lcom/oneplus/fingerprints/service/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/fingerprints/service/IFingerprintService;

    move-result-object v8

    sput-object v8, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    .line 513
    const-string v8, "FingerprintManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " current service = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    sget-object v8, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    if-eqz v8, :cond_1

    .line 515
    const-string v8, "FingerprintManager"

    const-string v9, "fingerPrintServiceExist ok"

    invoke-static {v8, v9}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5

    .line 548
    .end local v1    # "currentDelayIndex":I
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v4    # "firstBootTime":J
    .end local v6    # "retryDelays":[J
    .end local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    sget-object v8, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    return-object v8

    .line 518
    .restart local v1    # "currentDelayIndex":I
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    .restart local v4    # "firstBootTime":J
    .restart local v6    # "retryDelays":[J
    .restart local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :try_start_1
    array-length v8, v6

    if-lt v1, v8, :cond_2

    .line 519
    const-string v8, "FingerprintManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fingerPrintService is still not exist after  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " times wait"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/fingerprints/service/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    throw v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5

    .line 527
    .end local v1    # "currentDelayIndex":I
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v4    # "firstBootTime":J
    .end local v6    # "retryDelays":[J
    .end local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 529
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 523
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "currentDelayIndex":I
    .restart local v3    # "getService":Ljava/lang/reflect/Method;
    .restart local v4    # "firstBootTime":J
    .restart local v6    # "retryDelays":[J
    .restart local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_2
    const-string v8, "FingerprintManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " begin to sleep "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-wide v10, v6, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "currentDelayIndex":I
    .restart local v0    # "currentDelayIndex":I
    aget-wide v8, v6, v1

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    move v1, v0

    .end local v0    # "currentDelayIndex":I
    .restart local v1    # "currentDelayIndex":I
    goto/16 :goto_0

    .line 530
    .end local v1    # "currentDelayIndex":I
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v4    # "firstBootTime":J
    .end local v6    # "retryDelays":[J
    .end local v7    # "servicemanager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 533
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 536
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 538
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 539
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 542
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v2

    .line 544
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private handleOpenResult(I)V
    .locals 3
    .param p1, "resultCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/fingerprints/service/UnsupportedException;
        }
    .end annotation

    .prologue
    .line 776
    const/16 v0, 0x1f6

    if-ne v0, p1, :cond_0

    .line 777
    new-instance v0, Lcom/oneplus/fingerprints/service/UnsupportedException;

    invoke-direct {v0}, Lcom/oneplus/fingerprints/service/UnsupportedException;-><init>()V

    throw v0

    .line 778
    :cond_0
    if-eqz p1, :cond_1

    .line 779
    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind to service failed ,in open API, resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/oneplus/fingerprints/service/ResultCode;->getResultOpenString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 786
    :cond_1
    return-void
.end method

.method private static isSupportFingerprint()Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public static open()Lcom/oneplus/fingerprints/service/FingerprintManager;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oneplus/fingerprints/service/UnsupportedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 407
    const-string v3, "fingerprints_service"

    invoke-static {v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getFingerprintService(Ljava/lang/String;)Lcom/oneplus/fingerprints/service/IFingerprintService;

    move-result-object v1

    .line 408
    .local v1, "service":Lcom/oneplus/fingerprints/service/IFingerprintService;
    if-nez v1, :cond_0

    .line 409
    const-string v3, "FingerprintManager"

    const-string v4, "fingerprints_service get failed ,return null"

    invoke-static {v3, v4}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-object v2

    .line 413
    :cond_0
    :try_start_0
    new-instance v3, Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/oneplus/fingerprints/service/FingerprintManager;-><init>(Lcom/oneplus/fingerprints/service/IFingerprintService;Landroid/os/Looper;)V
    :try_end_0
    .catch Lcom/oneplus/fingerprints/service/UnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    const-string v2, "FingerprintManager"

    const-string v3, "device do not support fingerprint"

    invoke-static {v2, v3}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    throw v0

    .line 419
    .end local v0    # "e":Lcom/oneplus/fingerprints/service/UnsupportedException;
    :catch_1
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static upateTA(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p0, "taPath"    # Ljava/lang/String;
    .param p1, "taMD5"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 1134
    const-string v3, "fingerprints_service"

    invoke-static {v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getFingerprintService(Ljava/lang/String;)Lcom/oneplus/fingerprints/service/IFingerprintService;

    move-result-object v1

    .line 1135
    .local v1, "iService":Lcom/oneplus/fingerprints/service/IFingerprintService;
    if-nez v1, :cond_0

    .line 1136
    const-string v3, "FingerprintManager"

    const-string v4, "iService = null in updateTA"

    invoke-static {v3, v4}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :goto_0
    return v2

    .line 1140
    :cond_0
    if-nez v1, :cond_1

    .line 1141
    const-string v3, "FingerprintManager"

    const-string v4, "fingerprintService = null in updateTA"

    invoke-static {v3, v4}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1145
    :cond_1
    :try_start_0
    invoke-interface {v1, p0, p1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->upateTA(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abort()I
    .locals 3

    .prologue
    .line 1038
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->cancel(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1043
    sget v1, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_OK:I

    :goto_0
    return v1

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1041
    sget v1, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_FAIL:I

    goto :goto_0
.end method

.method public cancel()I
    .locals 1

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    move-result v0

    return v0
.end method

.method public deleteFingerData(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1053
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->removeData(Lcom/oneplus/fingerprints/service/IFingerprintClient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v0

    .line 1055
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enrollContinue()V
    .locals 2

    .prologue
    .line 952
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    invoke-interface {v1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->enrollContinue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :goto_0
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enrollPause()V
    .locals 2

    .prologue
    .line 960
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    invoke-interface {v1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->enrollPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentStatusListener()Lcom/oneplus/fingerprints/service/FingerprintManager$OnStatusListener;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 691
    :goto_0
    return-object v0

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    goto :goto_0

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mImageQualityCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mImageQualityCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;

    goto :goto_0

    .line 691
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFpIDs()[I
    .locals 1

    .prologue
    .line 1090
    invoke-virtual {p0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getFpName(I)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1104
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->getIdName(Lcom/oneplus/fingerprints/service/IFingerprintClient;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1108
    :goto_0
    return-object v1

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIds()[I
    .locals 3

    .prologue
    .line 993
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->getIds(Lcom/oneplus/fingerprints/service/IFingerprintClient;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 997
    :goto_0
    return-object v1

    .line 994
    :catch_0
    move-exception v0

    .line 995
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 997
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public identifyContinue()V
    .locals 2

    .prologue
    .line 968
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    invoke-interface {v1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->identifyContinue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public identifyPause()V
    .locals 2

    .prologue
    .line 977
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    invoke-interface {v1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->identifyPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public msgToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 633
    sparse-switch p1, :sswitch_data_0

    .line 670
    const-string v0, "unknownMsg"

    :goto_0
    return-object v0

    .line 635
    :sswitch_0
    const-string v0, "MSG_WAITING_FINGER"

    goto :goto_0

    .line 638
    :sswitch_1
    const-string v0, "MSG_FINGER_PRESENT"

    goto :goto_0

    .line 641
    :sswitch_2
    const-string v0, "MSG_FINGER_UP"

    goto :goto_0

    .line 644
    :sswitch_3
    const-string v0, "MSG_IDENTIFY_MATCH"

    goto :goto_0

    .line 647
    :sswitch_4
    const-string v0, "MSG_ENROLMENT_DONE"

    goto :goto_0

    .line 650
    :sswitch_5
    const-string v0, "MSG_ENROL_PROGRESS"

    goto :goto_0

    .line 653
    :sswitch_6
    const-string v0, "MSG_IDENTIFY_NO_MATCH"

    goto :goto_0

    .line 656
    :sswitch_7
    const-string v0, "MSG_ENROLMENT_FAILED"

    goto :goto_0

    .line 659
    :sswitch_8
    const-string v0, "MSG_ON_STATUS_CHANGED"

    goto :goto_0

    .line 662
    :sswitch_9
    const-string v0, "MSG_RESULT_RETURN"

    goto :goto_0

    .line 665
    :sswitch_a
    const-string v0, "MSG_ENROL_DUPLICATED"

    goto :goto_0

    .line 668
    :sswitch_b
    const-string v0, "MSG_IMAGEQUALITY_GET"

    goto :goto_0

    .line 633
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
        0xc9 -> :sswitch_a
        0xca -> :sswitch_b
    .end sparse-switch
.end method

.method public navigateContinue()V
    .locals 2

    .prologue
    .line 928
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    invoke-interface {v1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->navigateContinue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public navigatePause()V
    .locals 2

    .prologue
    .line 940
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    invoke-interface {v1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->navigatePause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_0
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyScreenOff(Z)V
    .locals 3
    .param p1, "screenOn"    # Z

    .prologue
    .line 828
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p1}, Lcom/oneplus/fingerprints/service/IFingerprintService;->notifyScreenOff(Lcom/oneplus/fingerprints/service/IFingerprintClient;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()I
    .locals 4

    .prologue
    .line 802
    iget-boolean v1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z

    if-eqz v1, :cond_0

    .line 803
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been released already!!!, resultCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/16 v1, 0x25a

    .line 819
    :goto_0
    return v1

    .line 807
    :cond_0
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->release(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V

    .line 811
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mReleased:Z

    .line 813
    iget-object v1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;->removeMessages(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    const/4 v1, 0x0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 817
    const/16 v1, 0x259

    goto :goto_0
.end method

.method public removeFingerIdentifyListner(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;)V
    .locals 3
    .param p1, "identifyListener"    # Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .prologue
    .line 481
    const-string v2, "fingerprints_service"

    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getFingerprintService(Ljava/lang/String;)Lcom/oneplus/fingerprints/service/IFingerprintService;

    move-result-object v1

    .line 483
    .local v1, "service":Lcom/oneplus/fingerprints/service/IFingerprintService;
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    if-ne v2, p1, :cond_0

    .line 484
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 485
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    if-eqz v2, :cond_0

    .line 487
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->removeFingerIdentifyListner(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resultCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 564
    packed-switch p1, :pswitch_data_0

    .line 594
    :pswitch_0
    const-string v0, "unknow_result_code"

    :goto_0
    return-object v0

    .line 567
    :pswitch_1
    const-string v0, "RESULT_SUCCESS"

    goto :goto_0

    .line 570
    :pswitch_2
    const-string v0, "RESULT_FAILURE"

    goto :goto_0

    .line 573
    :pswitch_3
    const-string v0, "RESULT_CANCELED"

    goto :goto_0

    .line 576
    :pswitch_4
    const-string v0, "RESULT_NO_MATCH"

    goto :goto_0

    .line 579
    :pswitch_5
    const-string v0, "RESULT_NOT_SUPPORT"

    goto :goto_0

    .line 582
    :pswitch_6
    const-string v0, "RESULT_NOT_REGISTERED_FINGERPRINT"

    goto :goto_0

    .line 585
    :pswitch_7
    const-string v0, "RESULT_TIMEOUT"

    goto :goto_0

    .line 588
    :pswitch_8
    const-string v0, "RESULT_NOT_ENABLED"

    goto :goto_0

    .line 591
    :pswitch_9
    const-string v0, "RESULT_SENSOR_ERROR"

    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public selfTest()Z
    .locals 3

    .prologue
    .line 1163
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->selfTest(Lcom/oneplus/fingerprints/service/IFingerprintClient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1168
    :goto_0
    return v1

    .line 1164
    :catch_0
    move-exception v0

    .line 1166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1168
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCaptureCallback(Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;)V
    .locals 0
    .param p1, "captureCallback"    # Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    .prologue
    .line 795
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mCaptureCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;

    .line 796
    return-void
.end method

.method public setFingerIdentifyListner(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;)V
    .locals 4
    .param p1, "identifyListener"    # Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mFingerIdentiftyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 430
    const-string v2, "fingerprints_service"

    invoke-static {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getFingerprintService(Ljava/lang/String;)Lcom/oneplus/fingerprints/service/IFingerprintService;

    move-result-object v1

    .line 432
    .local v1, "service":Lcom/oneplus/fingerprints/service/IFingerprintService;
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    if-nez v2, :cond_0

    .line 433
    new-instance v2, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;-><init>(Lcom/oneplus/fingerprints/service/FingerprintManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEventhHandler:Lcom/oneplus/fingerprints/service/FingerprintManager$EventHandler;

    .line 437
    :cond_0
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    if-nez v2, :cond_1

    .line 438
    new-instance v2, Lcom/oneplus/fingerprints/service/FingerprintManager$1;

    invoke-direct {v2, p0}, Lcom/oneplus/fingerprints/service/FingerprintManager$1;-><init>(Lcom/oneplus/fingerprints/service/FingerprintManager;)V

    iput-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    .line 470
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->setFingerIdentifyListner(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startEnrol(Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "enrolCallback"    # Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 851
    if-nez p1, :cond_0

    .line 852
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 854
    :cond_0
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mEnrolCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;

    .line 856
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->startEnrol(Lcom/oneplus/fingerprints/service/IFingerprintClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I
    .locals 3
    .param p1, "identifyListener"    # Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    .param p2, "timeout"    # I
    .param p3, "ids"    # [I
    .param p4, "userData"    # I

    .prologue
    .line 1016
    if-nez p1, :cond_0

    .line 1017
    const-string v1, "FingerprintManager"

    const-string v2, " identifyListener = null is not allowed ,just return "

    invoke-static {v1, v2}, Lcom/oneplus/fingerprints/service/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1020
    :cond_0
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mIdentifyListener:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 1022
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p3, p2, p4}, Lcom/oneplus/fingerprints/service/IFingerprintService;->startIdentify(Lcom/oneplus/fingerprints/service/IFingerprintClient;[III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    sget v1, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_OK:I

    :goto_0
    return v1

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1025
    sget v1, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_FAIL:I

    goto :goto_0
.end method

.method public startFpManager(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1071
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->startFpManager(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    sget v1, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_OK:I

    :goto_0
    return v1

    .line 1072
    :catch_0
    move-exception v0

    .line 1073
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1074
    sget v1, Lcom/oneplus/fingerprints/service/ResultCode;->CMD_RESULT_FAIL:I

    goto :goto_0
.end method

.method public startImageQualityTest(Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;Z)V
    .locals 3
    .param p1, "imageQualityCallback"    # Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;
    .param p2, "liveCapture"    # Z

    .prologue
    .line 863
    if-nez p1, :cond_0

    .line 864
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 866
    :cond_0
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mImageQualityCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$ImageQualityCallback;

    .line 868
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2, p2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->startImageQualityTest(Lcom/oneplus/fingerprints/service/IFingerprintClient;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :goto_0
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startNavigate(Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;)V
    .locals 3
    .param p1, "navigateCallback"    # Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;

    .prologue
    .line 909
    if-nez p1, :cond_0

    .line 910
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 912
    :cond_0
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mNavigateCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$NavigateCallback;

    .line 914
    :try_start_0
    sget-object v1, Lcom/oneplus/fingerprints/service/FingerprintManager;->sService:Lcom/oneplus/fingerprints/service/IFingerprintService;

    iget-object v2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager;->mClient:Lcom/oneplus/fingerprints/service/IFingerprintClient;

    invoke-interface {v1, v2}, Lcom/oneplus/fingerprints/service/IFingerprintService;->startNavigate(Lcom/oneplus/fingerprints/service/IFingerprintClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :goto_0
    return-void

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public statusCodeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 608
    packed-switch p1, :pswitch_data_0

    .line 619
    const-string v0, "unknow_status_code"

    :goto_0
    return-object v0

    .line 610
    :pswitch_0
    const-string v0, "STATUS_WAITING_FOR_INPUT"

    goto :goto_0

    .line 613
    :pswitch_1
    const-string v0, "STATUS_INPUTTING"

    goto :goto_0

    .line 616
    :pswitch_2
    const-string v0, "STATUS_INPUT_COMPLETED"

    goto :goto_0

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
