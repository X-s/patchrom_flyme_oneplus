.class public Lcom/android/systemui_ex/keyguard/KeyguardService;
.super Landroid/app/Service;
.source "KeyguardService.java"


# instance fields
.field private final mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

.field private mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Lcom/android/systemui_ex/keyguard/KeyguardService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/keyguard/KeyguardService$1;-><init>(Lcom/android/systemui_ex/keyguard/KeyguardService;)V

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/keyguard/KeyguardService;)Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    return-object v0
.end method


# virtual methods
.method checkPermission()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "KeyguardService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller needs permission \'android.permission.CONTROL_KEYGUARD\' to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.permission.CONTROL_KEYGUARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService;->mBinder:Lcom/android/internal/policy/IKeyguardService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/SystemUIApplication;

    invoke-virtual {v0}, Lcom/android/systemui_ex/SystemUIApplication;->startServicesIfNeeded()V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/SystemUIApplication;

    const-class v1, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardService;->mKeyguardViewMediator:Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .line 48
    return-void
.end method
