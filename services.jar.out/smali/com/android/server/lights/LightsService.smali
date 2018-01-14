.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$1;,
        Lcom/android/server/lights/LightsService$2;,
        Lcom/android/server/lights/LightsService$3;,
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static mScreenBrightness:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceIdleMode:Z

.field private mH:Landroid/os/Handler;

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field private mNativePointer:J

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private mVrModeEnabled:Z

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mDeviceIdleMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/lights/LightsService;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/server/lights/LightsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mVrModeEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mDeviceIdleMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/lights/LightsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mVrModeEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/lights/LightsService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG:Z

    .line 49
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/lights/LightsService;->DEBUG_ONEPLUS:Z

    .line 54
    const/16 v0, 0x7f

    sput v0, Lcom/android/server/lights/LightsService;->mScreenBrightness:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x8

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mDeviceIdleMode:Z

    .line 62
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 319
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 343
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 377
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 283
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 286
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$LightImpl;)V

    aput-object v2, v1, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    return-void
.end method

.method private static native finalize_native(J)V
.end method

.method private getVrDisplayMode()I
    .locals 4

    .prologue
    .line 312
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 313
    .local v0, "currentUser":I
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 314
    const-string/jumbo v2, "vr_display_mode"

    .line 315
    const/4 v3, 0x0

    .line 313
    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private static native init_native()J
.end method

.method static native setLight_native(JIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    .line 374
    invoke-super {p0}, Lcom/android/server/SystemService;->finalize()V

    .line 372
    return-void
.end method

.method public onBootPhase(I)V
    .locals 5
    .param p1, "phase"    # I

    .prologue
    .line 300
    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_0

    .line 302
    const-string/jumbo v2, "vrmanager"

    invoke-virtual {p0, v2}, Lcom/android/server/lights/LightsService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Landroid/service/vr/IVrManager;

    .line 304
    .local v1, "vrManager":Landroid/service/vr/IVrManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local v1    # "vrManager":Landroid/service/vr/IVrManager;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "LightsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 295
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 294
    return-void
.end method
