.class public Lcom/lbe/security/service/core/client/ClientLoader;
.super Ljava/lang/Object;
.source "ClientLoader.java"


# static fields
.field public static final CLIENT_HIPS_OEM:I = 0x1d5

.field public static final CLIENT_ID_ACTIVITY:I = 0x1

.field public static final CLIENT_ID_ADBLOCK:I = 0x200

.field public static final CLIENT_ID_AUDIO:I = 0x2

.field public static final CLIENT_ID_BLUETOOTH:I = 0x80

.field public static final CLIENT_ID_FILES:I = 0x800

.field public static final CLIENT_ID_FIREWALL:I = 0x8

.field public static final CLIENT_ID_LOCATION:I = 0x4

.field public static final CLIENT_ID_MULTIMEDIA:I = 0x40

.field public static final CLIENT_ID_NOTIFICATION:I = 0x20

.field public static final CLIENT_ID_PACKAGE:I = 0x400

.field public static final CLIENT_ID_TELEPHONY:I = 0x10

.field public static final CLIENT_ID_WIFI:I = 0x100

.field private static final CLIENT_JAR:Ljava/lang/String; = "client.jar"

.field private static DEBUG:Z = false

.field private static final LIBRARY_PATTERN:Ljava/lang/String; = "/data/data/%s/app_hips"

.field private static final LOCK_FILE:Ljava/lang/String; = "hips.lock"

.field private static final LOG_TAG:Ljava/lang/String; = "LBE-Sec"

.field private static loaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lbe/security/service/core/client/ClientLoader;->DEBUG:Z

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lbe/security/service/core/client/ClientLoader;->loaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 82
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized loadLBECLient(Landroid/app/Application;Ljava/lang/String;IZ)V
    .locals 13
    .param p0, "targetApplication"    # Landroid/app/Application;
    .param p1, "controllerPackageName"    # Ljava/lang/String;
    .param p2, "components"    # I
    .param p3, "manageSystemApps"    # Z

    .prologue
    .line 43
    const-class v9, Lcom/lbe/security/service/core/client/ClientLoader;

    monitor-enter v9

    :try_start_0
    sget-boolean v8, Lcom/lbe/security/service/core/client/ClientLoader;->loaded:Z

    if-eqz v8, :cond_1

    .line 44
    sget-boolean v8, Lcom/lbe/security/service/core/client/ClientLoader;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 45
    const-string v8, "LBE-Sec"

    const-string v10, "Duplicate LBE Client creation request!"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    .line 49
    :cond_1
    const/4 v8, 0x1

    :try_start_1
    sput-boolean v8, Lcom/lbe/security/service/core/client/ClientLoader;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 54
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-nez p3, :cond_2

    invoke-static {v5}, Lcom/lbe/security/service/core/client/ClientLoader;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 55
    sget-boolean v8, Lcom/lbe/security/service/core/client/ClientLoader;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 56
    const-string v8, "LBE-Sec"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not manage system app "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 75
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v8, "LBE-Sec"

    const-string v10, "Failed to initialize LBE Client"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 43
    .end local v3    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 60
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_4
    new-instance v4, Ljava/io/File;

    const-string v8, "/data/data/%s/app_hips"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, "hipsPath":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v8, "hips.lock"

    invoke-direct {v6, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v6, "lockFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v8, "client.jar"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v1, "clientJar":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 64
    :cond_3
    sget-boolean v8, Lcom/lbe/security/service/core/client/ClientLoader;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 65
    const-string v8, "LBE-Sec"

    const-string v10, "LBE Client file not exist"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_4
    new-instance v0, Ldalvik/system/PathClassLoader;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-direct {v0, v8, v10, v11}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 71
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.lbe.security.service.core.client.ClientContainer"

    invoke-virtual {v0, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 72
    .local v2, "clz":Ljava/lang/Class;
    const-string v8, "initializeSandbox"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-class v12, Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-class v12, Landroid/app/Application;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v2, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 73
    .local v7, "metInitializeSandbox":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    const/4 v8, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object p0, v10, v11

    const/4 v11, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
