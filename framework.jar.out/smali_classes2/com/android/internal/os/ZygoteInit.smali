.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field private static final ANDROID_SOCKET_PREFIX:Ljava/lang/String; = "ANDROID_SOCKET_"

.field static final GC_LOOP_COUNT:I = 0xa

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final THREAD_NUM:I

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static final classesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mResources:Landroid/content/res/Resources;

.field private static sServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/os/ZygoteInit;->THREAD_NUM:I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->classesList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    return-void
.end method

.method private static acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 202
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 77
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 77
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    return-void
.end method

.method static synthetic access$200(IILdalvik/system/VMRuntime;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ldalvik/system/VMRuntime;

    .prologue
    .line 77
    invoke-static {p0, p1, p2}, Lcom/android/internal/os/ZygoteInit;->preloadOemClasses(IILdalvik/system/VMRuntime;)V

    return-void
.end method

.method static synthetic access$300(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I
    .locals 1
    .param p0, "x0"    # Ldalvik/system/VMRuntime;
    .param p1, "x1"    # Landroid/content/res/TypedArray;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 77
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/os/ZygoteInit;->preloadOemDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I

    move-result v0

    return v0
.end method

.method private static asyncPreload()V
    .locals 3

    .prologue
    .line 945
    const-string v1, "Zygote"

    const-string v2, "begin asyncPreload"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOemColorState()V

    .line 948
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResourceAndClassess()V

    .line 950
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 951
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 958
    new-instance v1, Lcom/android/internal/os/ZygoteInit$2;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 965
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 966
    const-string v1, "Zygote"

    const-string v2, "end asyncPreload"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void
.end method

.method static closeServerSocket()V
    .locals 4

    .prologue
    .line 215
    :try_start_0
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_0

    .line 216
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 217
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 218
    if-eqz v1, :cond_0

    .line 219
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :cond_0
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 229
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing sockets"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 225
    .local v0, "ex":Landroid/system/ErrnoException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing descriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static native createFileDescriptor(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static gc()V
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 501
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 502
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 503
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 504
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 505
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 506
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 507
    return-void
.end method

.method static getServerSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static native getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 8
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 516
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 519
    sget v4, Landroid/system/OsConstants;->S_IRWXG:I

    sget v5, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v4, v5

    invoke-static {v4}, Landroid/system/Os;->umask(I)I

    .line 521
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 525
    :cond_0
    const-string v4, "SYSTEMSERVERCLASSPATH"

    invoke-static {v4}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, "systemServerClasspath":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 527
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    .line 530
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 531
    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    .line 535
    .local v1, "args":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 536
    array-length v4, v1

    add-int/lit8 v4, v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 537
    .local v0, "amendedArgs":[Ljava/lang/String;
    const-string v4, "-cp"

    aput-object v4, v0, v7

    .line 538
    const/4 v4, 0x1

    aput-object v3, v0, v4

    .line 539
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    .end local v0    # "amendedArgs":[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v1}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 559
    .end local v1    # "args":[Ljava/lang/String;
    :goto_0
    return-void

    .line 546
    :cond_3
    const/4 v2, 0x0

    .line 547
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_4

    .line 548
    new-instance v2, Ldalvik/system/PathClassLoader;

    .end local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 549
    .restart local v2    # "cl":Ljava/lang/ClassLoader;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 555
    :cond_4
    iget v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v4, v5, v2}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .locals 1
    .param p0, "abiList"    # Ljava/lang/String;

    .prologue
    .line 738
    const-string v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 155
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 156
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 157
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "modifiers":I
    :catch_0
    move-exception v1

    .line 139
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 147
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 148
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 150
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 151
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 167
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "modifiers":I
    :cond_1
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 670
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 672
    const/4 v5, 0x0

    .line 673
    .local v5, "startSystemServer":Z
    const-string v4, "zygote"

    .line 674
    .local v4, "socketName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 675
    .local v0, "abiList":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_3

    .line 676
    const-string v6, "start-system-server"

    aget-object v7, p0, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 677
    const/4 v5, 0x1

    .line 675
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    :cond_0
    aget-object v6, p0, v3

    const-string v7, "--abi-list="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 679
    aget-object v6, p0, v3

    const-string v7, "--abi-list="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 680
    :cond_1
    aget-object v6, p0, v3

    const-string v7, "--socket-name="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 681
    aget-object v6, p0, v3

    const-string v7, "--socket-name="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 683
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown command line argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 721
    .end local v0    # "abiList":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_0
    move-exception v1

    .line 722
    .local v1, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 728
    .end local v1    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_2
    return-void

    .line 687
    .restart local v0    # "abiList":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_3
    if-nez v0, :cond_4

    .line 688
    :try_start_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "No ABI list supplied."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    .end local v0    # "abiList":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "socketName":Ljava/lang/String;
    .end local v5    # "startSystemServer":Z
    :catch_1
    move-exception v2

    .line 724
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v6, "Zygote"

    const-string v7, "Zygote died with exception"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 726
    throw v2

    .line 691
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "abiList":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "socketName":Ljava/lang/String;
    .restart local v5    # "startSystemServer":Z
    :cond_4
    :try_start_2
    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket(Ljava/lang/String;)V

    .line 692
    const/16 v6, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 697
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 700
    const/16 v6, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 704
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 707
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 711
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 713
    if-eqz v5, :cond_5

    .line 714
    invoke-static {v0, v4}, Lcom/android/internal/os/ZygoteInit;->startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z

    .line 717
    :cond_5
    const-string v6, "Zygote"

    const-string v7, "Accepting command socket connections"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop(Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .locals 11
    .param p0, "classPath"    # Ljava/lang/String;

    .prologue
    .line 566
    const-string v9, ":"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "classPathElements":[Ljava/lang/String;
    new-instance v5, Lcom/android/internal/os/InstallerConnection;

    invoke-direct {v5}, Lcom/android/internal/os/InstallerConnection;-><init>()V

    .line 568
    .local v5, "installer":Lcom/android/internal/os/InstallerConnection;
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v6

    .line 571
    .local v6, "instructionSet":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v8, v0

    .local v8, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v8, :cond_2

    aget-object v1, v0, v4

    .line 572
    .local v1, "classPathElement":Ljava/lang/String;
    const-string v9, "*"

    const/4 v10, 0x0

    invoke-static {v1, v9, v6, v10}, Ldalvik/system/DexFile;->isDexOptNeededInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)B

    move-result v3

    .line 574
    .local v3, "dexopt":B
    const/4 v9, 0x2

    if-ne v3, v9, :cond_1

    .line 575
    const/16 v9, 0x3e8

    const/4 v10, 0x0

    invoke-virtual {v5, v1, v9, v10, v6}, Lcom/android/internal/os/InstallerConnection;->dexopt(Ljava/lang/String;IZLjava/lang/String;)I

    .line 571
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 576
    :cond_1
    const/4 v9, 0x1

    if-ne v3, v9, :cond_0

    .line 577
    const/16 v9, 0x3e8

    const/4 v10, 0x0

    invoke-virtual {v5, v1, v9, v10, v6}, Lcom/android/internal/os/InstallerConnection;->patchoat(Ljava/lang/String;IZLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 580
    .end local v1    # "classPathElement":Ljava/lang/String;
    .end local v3    # "dexopt":B
    .end local v4    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v7

    .line 581
    .local v7, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error starting system_server"

    invoke-direct {v9, v10, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    .end local v7    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    invoke-virtual {v5}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    throw v9

    .restart local v4    # "i$":I
    .restart local v8    # "len$":I
    :cond_2
    invoke-virtual {v5}, Lcom/android/internal/os/InstallerConnection;->disconnect()V

    .line 585
    return-void
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .locals 8
    .param p0, "capabilities"    # [I

    .prologue
    .line 652
    const-wide/16 v4, 0x0

    .line 653
    .local v4, "result":J
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 654
    .local v1, "capability":I
    if-ltz v1, :cond_0

    sget v6, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v1, v6, :cond_1

    .line 655
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 657
    :cond_1
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 659
    .end local v1    # "capability":I
    :cond_2
    return-wide v4
.end method

.method static preload()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "Zygote"

    const-string v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 270
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 271
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 272
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    .line 275
    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    .line 276
    const-string v0, "Zygote"

    const-string v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method private static preloadClasses()V
    .locals 15

    .prologue
    const/16 v12, 0x270f

    const/4 v14, 0x0

    .line 300
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 304
    .local v6, "runtime":Ldalvik/system/VMRuntime;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/system/etc/preloaded-classes"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    .local v4, "is":Ljava/io/InputStream;
    const-string v10, "Zygote"

    const-string v11, "Preloading classes..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 314
    .local v8, "startTime":J
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 315
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 319
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 320
    .local v2, "defaultUtilization":F
    const v10, 0x3f4ccccd    # 0.8f

    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 323
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 324
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 325
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 328
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x100

    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 331
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 333
    .local v1, "count":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 335
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 336
    const-string v10, "#"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-nez v10, :cond_0

    .line 344
    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 345
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v10

    const v11, 0xc350

    if-le v10, v11, :cond_1

    .line 350
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 351
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 352
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 354
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 369
    :goto_1
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 374
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v5    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 375
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    const-string v10, "Zygote"

    const-string v11, "Error reading /system/etc/preloaded-classes."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 377
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 379
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 382
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 384
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 387
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 388
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 390
    .end local v2    # "defaultUtilization":F
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v8    # "startTime":J
    :goto_2
    return-void

    .line 305
    :catch_1
    move-exception v3

    .line 306
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v10, "Zygote"

    const-string v11, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 355
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v2    # "defaultUtilization":F
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v8    # "startTime":J
    :catch_2
    move-exception v3

    .line 356
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_5
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class not found for preloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 377
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v10

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 379
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 382
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 384
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 387
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 388
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    throw v10

    .line 357
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v5    # "line":Ljava/lang/String;
    :catch_3
    move-exception v3

    .line 358
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_6
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_4
    move-exception v7

    .line 360
    .local v7, "t":Ljava/lang/Throwable;
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    instance-of v10, v7, Ljava/lang/Error;

    if-eqz v10, :cond_2

    .line 362
    check-cast v7, Ljava/lang/Error;

    .end local v7    # "t":Ljava/lang/Throwable;
    throw v7

    .line 364
    .restart local v7    # "t":Ljava/lang/Throwable;
    :cond_2
    instance-of v10, v7, Ljava/lang/RuntimeException;

    if-eqz v10, :cond_3

    .line 365
    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "t":Ljava/lang/Throwable;
    throw v7

    .line 367
    .restart local v7    # "t":Ljava/lang/Throwable;
    :cond_3
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 372
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_4
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "...preloaded "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " classes in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 377
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 379
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 382
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 384
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 387
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 388
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_2
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 437
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 438
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    const v4, 0xc350

    if-le v3, v4, :cond_0

    .line 442
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 443
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 445
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 449
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 450
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_1

    .line 451
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 437
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "id":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 459
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 6
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 464
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 465
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 466
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    const v4, 0xc350

    if-le v3, v4, :cond_0

    .line 470
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 471
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 473
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 477
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 478
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1

    .line 479
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 465
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    .end local v2    # "id":I
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 487
    return v0
.end method

.method private static preloadIO(Ljava/lang/String;)V
    .locals 7
    .param p0, "preloadclassfilename"    # Ljava/lang/String;

    .prologue
    .line 970
    if-nez p0, :cond_0

    .line 971
    const-string v5, "Zygote"

    const-string v6, "preload class filename is null "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :goto_0
    return-void

    .line 976
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 982
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x100

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 984
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 986
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 987
    .local v4, "path":Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 990
    sget-object v5, Lcom/android/internal/os/ZygoteInit;->classesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 992
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 993
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "Zygote"

    const-string v6, "Error reading /system/etc/preloaded-classes."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 995
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 977
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 978
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "Zygote"

    const-string v6, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 995
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method private static preloadOemClasses(IILdalvik/system/VMRuntime;)V
    .locals 12
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "runtime"    # Ldalvik/system/VMRuntime;

    .prologue
    .line 1000
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1001
    .local v6, "startTime":J
    const/4 v4, 0x0

    .line 1002
    .local v4, "path":Ljava/lang/String;
    move v3, p0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_3

    .line 1004
    :try_start_0
    sget-object v8, Lcom/android/internal/os/ZygoteInit;->classesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1005
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1006
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v8

    const v9, 0xc350

    if-le v8, v9, :cond_0

    .line 1007
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1008
    invoke-virtual {p2}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 1009
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1002
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1011
    :catch_0
    move-exception v2

    .line 1012
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Class not found for preloading: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1013
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 1014
    .local v2, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Problem preloading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1015
    .end local v2    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_2
    move-exception v5

    .line 1016
    .local v5, "t":Ljava/lang/Throwable;
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error preloading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    instance-of v8, v5, Ljava/lang/Error;

    if-eqz v8, :cond_1

    .line 1018
    check-cast v5, Ljava/lang/Error;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 1020
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v8, v5, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_2

    .line 1021
    check-cast v5, Ljava/lang/RuntimeException;

    .end local v5    # "t":Ljava/lang/Throwable;
    throw v5

    .line 1023
    .restart local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1027
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_3
    const-string v8, "Zygote"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "...preloaded "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v10, p1, p0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " classes in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    return-void
.end method

.method private static preloadOemColorState()V
    .locals 5

    .prologue
    .line 1156
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    .line 1157
    .local v2, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1159
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1160
    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 1161
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    sput-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 1162
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->startPreloading()V

    .line 1164
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v4, 0x107000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1166
    .local v0, "ar":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    invoke-static {v2, v0, v3, v4}, Lcom/android/internal/os/ZygoteInit;->preloadOemColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I

    .line 1167
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1168
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1170
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1176
    .end local v0    # "ar":Landroid/content/res/TypedArray;
    :goto_0
    return-void

    .line 1171
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v3, "Zygote"

    const-string v4, "Failure preloading resources"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v3
.end method

.method private static preloadOemColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1135
    .local v2, "startTime":J
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 1136
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0xc350

    if-le v4, v5, :cond_0

    .line 1137
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 1138
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 1140
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1141
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 1142
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1143
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find preloaded color resource #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1135
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1150
    .end local v1    # "id":I
    :cond_2
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...preloaded resources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p3, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1152
    sub-int v4, p3, p2

    return v4
.end method

.method private static preloadOemDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)I
    .locals 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1031
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1032
    .local v2, "startTime":J
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 1033
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0xc350

    if-le v4, v5, :cond_0

    .line 1034
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 1035
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 1037
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1038
    .local v1, "id":I
    if-eqz v1, :cond_1

    .line 1039
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1040
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1032
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    .end local v1    # "id":I
    :cond_2
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "...preloaded resources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p3, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1049
    sub-int v4, p3, p2

    return v4
.end method

.method private static preloadOpenGL()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    const-string v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 290
    :cond_0
    return-void
.end method

.method private static preloadResourceAndClassess()V
    .locals 13

    .prologue
    const/16 v12, 0x270f

    const/4 v11, 0x0

    .line 1053
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    .line 1054
    .local v7, "runtime":Ldalvik/system/VMRuntime;
    sget v9, Lcom/android/internal/os/ZygoteInit;->THREAD_NUM:I

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 1055
    .local v3, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    sput-object v9, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 1056
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v10, 0x107000c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1057
    .local v1, "drawable":Landroid/content/res/TypedArray;
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 1058
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 1059
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v0

    .line 1060
    .local v0, "defaultUtilization":F
    const v9, 0x3f4ccccd    # 0.8f

    invoke-virtual {v7, v9}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1061
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->classesList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1063
    .local v5, "length":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1064
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 1065
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 1066
    new-instance v9, Lcom/android/internal/os/ZygoteInit$3;

    invoke-direct {v9, v7}, Lcom/android/internal/os/ZygoteInit$3;-><init>(Ldalvik/system/VMRuntime;)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1072
    new-instance v9, Lcom/android/internal/os/ZygoteInit$4;

    invoke-direct {v9, v7}, Lcom/android/internal/os/ZygoteInit$4;-><init>(Ldalvik/system/VMRuntime;)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1078
    new-instance v9, Lcom/android/internal/os/ZygoteInit$5;

    invoke-direct {v9, v5, v7}, Lcom/android/internal/os/ZygoteInit$5;-><init>(ILdalvik/system/VMRuntime;)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1086
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    .line 1087
    .local v6, "listLength":I
    div-int/lit8 v4, v6, 0x3

    .line 1088
    .local v4, "firstEnd":I
    mul-int/lit8 v8, v4, 0x2

    .line 1089
    .local v8, "secondEnd":I
    new-instance v9, Lcom/android/internal/os/ZygoteInit$6;

    invoke-direct {v9, v7, v1, v4}, Lcom/android/internal/os/ZygoteInit$6;-><init>(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;I)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1095
    new-instance v9, Lcom/android/internal/os/ZygoteInit$7;

    invoke-direct {v9, v7, v1, v4, v8}, Lcom/android/internal/os/ZygoteInit$7;-><init>(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1101
    new-instance v9, Lcom/android/internal/os/ZygoteInit$8;

    invoke-direct {v9, v7, v1, v8, v6}, Lcom/android/internal/os/ZygoteInit$8;-><init>(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;II)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->finishPreloading()V

    .line 1113
    invoke-virtual {v7, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1115
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 1116
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1118
    invoke-static {v11}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 1119
    invoke-static {v11}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 1121
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1123
    const-wide/16 v10, 0x1

    :try_start_1
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v10, v11, v9}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1128
    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1129
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1131
    .end local v4    # "firstEnd":I
    .end local v6    # "listLength":I
    .end local v8    # "secondEnd":I
    :goto_1
    return-void

    .line 1124
    .restart local v4    # "firstEnd":I
    .restart local v6    # "listLength":I
    .restart local v8    # "secondEnd":I
    :catch_0
    move-exception v2

    .line 1125
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1108
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "firstEnd":I
    .end local v6    # "listLength":I
    .end local v8    # "secondEnd":I
    :catch_1
    move-exception v2

    .line 1109
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v9, "Zygote"

    const-string v10, "Failure preloading resources"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1111
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v9}, Landroid/content/res/Resources;->finishPreloading()V

    .line 1113
    invoke-virtual {v7, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1115
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 1116
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1118
    invoke-static {v11}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 1119
    invoke-static {v11}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 1121
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1123
    const-wide/16 v10, 0x1

    :try_start_3
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v10, v11, v9}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1128
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_2
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1129
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 1124
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 1125
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1111
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    sget-object v10, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->finishPreloading()V

    .line 1113
    invoke-virtual {v7, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 1115
    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 1116
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 1118
    invoke-static {v11}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 1119
    invoke-static {v11}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 1121
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1123
    const-wide/16 v10, 0x1

    :try_start_4
    sget-object v12, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v10, v11, v12}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1128
    :goto_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1129
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v9

    .line 1124
    :catch_3
    move-exception v2

    .line 1125
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method private static preloadResources()V
    .locals 10

    .prologue
    .line 400
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 402
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 404
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 405
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 406
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 407
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 409
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 412
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x107000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 414
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 415
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 420
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x107000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 422
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 423
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 424
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 433
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_0
    return-void

    .line 428
    :catch_0
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v6
.end method

.method private static preloadSharedLibraries()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "Zygote"

    const-string v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 282
    const-string v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 283
    const-string v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method private static registerZygoteSocket(Ljava/lang/String;)V
    .locals 7
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v4, :cond_0

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDROID_SOCKET_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "fullSocketName":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 187
    .local v2, "fileDesc":I
    :try_start_1
    new-instance v4, Landroid/net/LocalServerSocket;

    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v4, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v0    # "env":Ljava/lang/String;
    .end local v2    # "fileDesc":I
    .end local v3    # "fullSocketName":Ljava/lang/String;
    :cond_0
    return-void

    .line 182
    .restart local v3    # "fullSocketName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " unset or invalid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 189
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Ljava/lang/String;
    .restart local v2    # "fileDesc":I
    :catch_1
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error binding to local socket \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static native reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static runSelectLoop(Ljava/lang/String;)V
    .locals 11
    .param p0, "abiList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 769
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 770
    .local v4, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v8, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/io/FileDescriptor;

    .line 773
    .local v3, "fdArray":[Ljava/io/FileDescriptor;
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v9}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    const/16 v6, 0xa

    .line 789
    .local v6, "loopCount":I
    :cond_0
    :goto_0
    if-gtz v6, :cond_1

    .line 790
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 791
    const/16 v6, 0xa

    .line 798
    :goto_1
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/io/FileDescriptor;

    move-object v3, v0

    .line 799
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->selectReadable([Ljava/io/FileDescriptor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 804
    .local v5, "index":I
    if-gez v5, :cond_2

    .line 805
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 793
    .end local v5    # "index":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 800
    :catch_0
    move-exception v2

    .line 801
    .local v2, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 806
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "index":I
    :cond_2
    if-nez v5, :cond_3

    .line 807
    invoke-static {p0}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 808
    .local v7, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 812
    .end local v7    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v9}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    .line 814
    .local v1, "done":Z
    if-eqz v1, :cond_0

    .line 815
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 816
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static native selectReadable([Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCloseOnExec(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static setEffectiveGroup(I)V
    .locals 4
    .param p0, "gid"    # I

    .prologue
    .line 261
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setregid(II)I

    move-result v0

    .line 262
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 263
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setregid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    return-void
.end method

.method private static setEffectiveUser(I)V
    .locals 4
    .param p0, "uid"    # I

    .prologue
    .line 251
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setreuid(II)I

    move-result v0

    .line 252
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 253
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setreuid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    return-void
.end method

.method static native setpgid(II)I
.end method

.method static native setregid(II)I
.end method

.method static native setreuid(II)I
.end method

.method private static startSystemServer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p0, "abiList"    # Ljava/lang/String;
    .param p1, "socketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 592
    const/16 v1, 0xb

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Landroid/system/OsConstants;->CAP_KILL:I

    aput v3, v1, v2

    const/4 v2, 0x2

    sget v3, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    aput v3, v1, v2

    const/4 v2, 0x3

    sget v3, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    aput v3, v1, v2

    const/4 v2, 0x4

    sget v3, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    aput v3, v1, v2

    const/4 v2, 0x5

    sget v3, Landroid/system/OsConstants;->CAP_NET_RAW:I

    aput v3, v1, v2

    const/4 v2, 0x6

    sget v3, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    aput v3, v1, v2

    const/4 v2, 0x7

    sget v3, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    aput v3, v1, v2

    const/16 v2, 0x8

    sget v3, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    aput v3, v1, v2

    const/16 v2, 0x9

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    aput v3, v1, v2

    const/16 v2, 0xa

    sget v3, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    aput v3, v1, v2

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 606
    .local v10, "capabilities":J
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--setuid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "--setgid=1000"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1032,3001,3002,3003,3006,3007"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--capabilities="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "--runtime-init"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "--nice-name=system_server"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.server.SystemServer"

    aput-object v2, v0, v1

    .line 615
    .local v0, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 620
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 622
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 625
    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    const/4 v5, 0x0

    check-cast v5, [[I

    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 637
    .local v15, "pid":I
    if-nez v15, :cond_1

    .line 638
    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 639
    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    .line 642
    :cond_0
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 645
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 632
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v12

    .line 633
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 632
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v12

    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .locals 6
    .param p0, "socketName"    # Ljava/lang/String;

    .prologue
    .line 742
    const-string v3, "zygote"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "zygote_secondary"

    .line 746
    .local v1, "otherZygoteName":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v1}, Landroid/os/Process$ZygoteState;->connect(Ljava/lang/String;)Landroid/os/Process$ZygoteState;

    move-result-object v2

    .line 747
    .local v2, "zs":Landroid/os/Process$ZygoteState;
    invoke-virtual {v2}, Landroid/os/Process$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    return-void

    .line 742
    .end local v1    # "otherZygoteName":Ljava/lang/String;
    .end local v2    # "zs":Landroid/os/Process$ZygoteState;
    :cond_0
    const-string v1, "zygote"

    goto :goto_0

    .line 749
    .restart local v1    # "otherZygoteName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 750
    .local v0, "ioe":Ljava/io/IOException;
    const-string v3, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 755
    :catch_1
    move-exception v3

    goto :goto_0
.end method
