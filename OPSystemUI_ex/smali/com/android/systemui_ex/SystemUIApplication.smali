.class public Lcom/android/systemui_ex/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/SystemUIApplication$SystemUIExceptionHandler;
    }
.end annotation


# static fields
.field private static final EXCPETION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:[Lcom/android/systemui_ex/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/SystemUIApplication;->EXCPETION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 64
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/android/systemui_ex/recent/Recents;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/android/systemui_ex/volume/VolumeUI;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/android/systemui_ex/threekey/ThreeKeyUI;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/android/systemui_ex/statusbar/SystemBars;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/android/systemui_ex/usb/StorageNotification;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/android/systemui_ex/power/PowerUI;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/android/systemui_ex/media/RingtonePlayer;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    .line 79
    iget-object v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v0

    new-array v0, v0, [Lcom/android/systemui_ex/SystemUI;

    iput-object v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->mComponents:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/systemui_ex/SystemUIApplication;->EXCPETION_HANDLER:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/SystemUIApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SystemUIApplication;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/SystemUIApplication;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/SystemUIApplication;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui_ex/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/SystemUIApplication;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SystemUIApplication;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServicesStarted:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/SystemUIApplication;)[Lcom/android/systemui_ex/SystemUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/SystemUIApplication;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    return-object v0
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getServices()[Lcom/android/systemui_ex/SystemUI;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 162
    iget-boolean v2, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServicesStarted:Z

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    array-length v1, v2

    .line 164
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 90
    const v1, 0x7f0b002a

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/SystemUIApplication;->setTheme(I)V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 94
    new-instance v1, Lcom/android/systemui_ex/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/SystemUIApplication$1;-><init>(Lcom/android/systemui_ex/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui_ex/SystemUIApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui_ex/SystemUIApplication$SystemUIExceptionHandler;

    invoke-direct {v1}, Lcom/android/systemui_ex/SystemUIApplication$SystemUIExceptionHandler;-><init>()V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui_ex/SystemUIApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui_ex/util/Utils;->initFeatures(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method public startServicesIfNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 123
    iget-boolean v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServicesStarted:Z

    if-eqz v4, :cond_0

    .line 158
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->mBootCompleted:Z

    if-nez v4, :cond_1

    .line 130
    const-string v4, "1"

    const-string v5, "sys.boot_completed"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    iput-boolean v6, p0, Lcom/android/systemui_ex/SystemUIApplication;->mBootCompleted:Z

    .line 136
    :cond_1
    const-string v4, "SystemUIService"

    const-string v5, "Starting SystemUI services."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    array-length v0, v4

    .line 138
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 139
    iget-object v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->SERVICES:[Ljava/lang/Class;

    aget-object v1, v4, v3

    .line 142
    .local v1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/SystemUI;

    aput-object v4, v5, v3
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    iget-object v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    aget-object v4, v4, v3

    iput-object p0, v4, Lcom/android/systemui_ex/SystemUI;->mContext:Landroid/content/Context;

    .line 149
    iget-object v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/systemui_ex/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v5, v4, Lcom/android/systemui_ex/SystemUI;->mComponents:Ljava/util/Map;

    .line 151
    iget-object v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/systemui_ex/SystemUI;->start()V

    .line 153
    iget-boolean v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->mBootCompleted:Z

    if-eqz v4, :cond_2

    .line 154
    iget-object v4, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServices:[Lcom/android/systemui_ex/SystemUI;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/systemui_ex/SystemUI;->onBootCompleted()V

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 145
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 146
    .local v2, "ex":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 157
    .end local v1    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/InstantiationException;
    :cond_3
    iput-boolean v6, p0, Lcom/android/systemui_ex/SystemUIApplication;->mServicesStarted:Z

    goto :goto_0
.end method
