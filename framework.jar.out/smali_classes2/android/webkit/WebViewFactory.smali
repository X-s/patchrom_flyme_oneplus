.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;,
        Landroid/webkit/WebViewFactory$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProvider"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static sAddressSpaceReserved:Z

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    return v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "lib32"    # Ljava/lang/String;
    .param p1, "lib64"    # Ljava/lang/String;
    .param p2, "relro32"    # Ljava/lang/String;
    .param p3, "relro64"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/webkit/WebViewFactory;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    .line 690
    const-string/jumbo v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRelroFile(Z[Ljava/lang/String;)V
    .locals 9
    .param p0, "is64Bit"    # Z
    .param p1, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 600
    if-eqz p0, :cond_2

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 603
    .local v4, "abi":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/webkit/WebViewFactory$1;

    invoke-direct {v6, v4}, Landroid/webkit/WebViewFactory$1;-><init>(Ljava/lang/String;)V

    .line 616
    .local v6, "crashHandler":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 617
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    if-nez v0, :cond_3

    .line 618
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 619
    const-string/jumbo v1, "Native library paths to the WebView RelRo process must not be null!"

    .line 618
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :catch_0
    move-exception v8

    .line 627
    .local v8, "t":Ljava/lang/Throwable;
    const-string/jumbo v0, "WebViewFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error starting relro file creator for abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 598
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 600
    .end local v4    # "abi":Ljava/lang/String;
    .end local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_2
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    .restart local v4    # "abi":Ljava/lang/String;
    goto :goto_0

    .line 617
    .restart local v6    # "crashHandler":Ljava/lang/Runnable;
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 621
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 622
    const-class v1, Landroid/webkit/WebViewFactory$RelroFileCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WebViewLoader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    const/16 v5, 0x40d

    move-object v2, p1

    .line 621
    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v7

    .line 624
    .local v7, "pid":I
    if-gtz v7, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Failed to start the relro file creator process"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "apkPath"    # Ljava/lang/String;
    .param p1, "abiList"    # [Ljava/lang/String;
    .param p2, "nativeLibFileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 529
    const/4 v4, 0x0

    .local v4, "z":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .local v5, "z":Ljava/util/zip/ZipFile;
    :try_start_1
    array-length v8, p1

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v0, p1, v6

    .line 531
    .local v0, "abi":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "entry":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 533
    .local v2, "e":Ljava/util/zip/ZipEntry;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v9

    if-nez v9, :cond_2

    .line 535
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "!/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 540
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    :try_start_3
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 538
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 539
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    :goto_2
    new-instance v6, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v6, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 540
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v2    # "e":Ljava/util/zip/ZipEntry;
    .restart local v3    # "entry":Ljava/lang/String;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 535
    :cond_1
    return-object v6

    .line 530
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "abi":Ljava/lang/String;
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    .end local v3    # "entry":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_3
    if-eqz v7, :cond_8

    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v7

    goto :goto_3

    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v6

    .end local v4    # "z":Ljava/util/zip/ZipFile;
    :goto_4
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_5
    if-eqz v4, :cond_5

    :try_start_7
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_5
    :goto_6
    if-eqz v7, :cond_7

    :try_start_8
    throw v7

    .line 538
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 540
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    if-nez v7, :cond_6

    move-object v7, v8

    goto :goto_6

    :cond_6
    if-eq v7, v8, :cond_5

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 541
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :cond_8
    const-string/jumbo v6, ""

    return-object v6

    .line 540
    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    goto :goto_5

    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v6

    move-object v4, v5

    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .local v4, "z":Ljava/util/zip/ZipFile;
    goto :goto_5

    .end local v4    # "z":Ljava/util/zip/ZipFile;
    .restart local v5    # "z":Ljava/util/zip/ZipFile;
    :catch_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "z":Ljava/util/zip/ZipFile;
    .restart local v4    # "z":Ljava/util/zip/ZipFile;
    goto :goto_4
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .locals 9

    .prologue
    .line 181
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v5

    .line 184
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v4, :cond_0

    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-object v4

    .line 186
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 187
    .local v3, "uid":I
    if-eqz v3, :cond_1

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    .line 188
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    .line 189
    const-string/jumbo v6, "For security reasons, WebView is not allowed in privileged processes"

    .line 188
    invoke-direct {v4, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 192
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 193
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const-string/jumbo v4, "WebViewFactory.getProvider()"

    const-wide/16 v6, 0x10

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;

    move-result-object v2

    .line 197
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    const-string/jumbo v4, "providerClass.newInstance()"

    const-wide/16 v6, 0x10

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 199
    const/4 v4, 0x1

    :try_start_4
    new-array v4, v4, [Ljava/lang/Class;

    const-class v6, Landroid/webkit/WebViewDelegate;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 200
    new-instance v7, Landroid/webkit/WebViewDelegate;

    invoke-direct {v7}, Landroid/webkit/WebViewDelegate;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 199
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebViewFactoryProvider;

    sput-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    .line 202
    sget-object v4, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 207
    const-wide/16 v6, 0x10

    :try_start_5
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 210
    const-wide/16 v6, 0x10

    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 211
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    .line 202
    return-object v4

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v4, "WebViewFactory"

    const-string/jumbo v6, "error instantiating provider"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 207
    const-wide/16 v6, 0x10

    :try_start_8
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 206
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 209
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/webkit/WebViewFactoryProvider;>;"
    :catchall_2
    move-exception v4

    .line 210
    const-wide/16 v6, 0x10

    :try_start_9
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 211
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 209
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    const/4 v5, 0x0

    .line 370
    .local v5, "webViewContext":Landroid/content/Context;
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    .line 374
    .local v4, "initialApplication":Landroid/app/Application;
    :try_start_0
    const-string/jumbo v6, "WebViewFactory.getWebViewContextAndSetProvider()"

    .line 373
    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :try_start_1
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 378
    .local v5, "webViewContext":Landroid/content/Context;
    const-wide/16 v6, 0x10

    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 380
    const-string/jumbo v6, "WebViewFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    const-string/jumbo v8, " (code "

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 381
    const-string/jumbo v8, ")"

    .line 380
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string/jumbo v6, "WebViewFactory.getChromiumProviderClass()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_2 .. :try_end_2} :catch_0

    .line 385
    :try_start_3
    invoke-virtual {v4}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 386
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 385
    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    .line 387
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 389
    .local v0, "clazzLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "WebViewFactory.loadNativeLibrary()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 390
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->loadNativeLibrary(Ljava/lang/ClassLoader;)I

    .line 391
    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 393
    const-string/jumbo v6, "Class.forName()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 395
    :try_start_4
    const-string/jumbo v6, "com.android.webview.chromium.WebViewChromiumFactoryProvider"

    .line 396
    const/4 v7, 0x1

    .line 395
    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 398
    const-wide/16 v8, 0x10

    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 404
    const-wide/16 v8, 0x10

    :try_start_6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 395
    return-object v6

    .line 377
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .local v5, "webViewContext":Landroid/content/Context;
    :catchall_0
    move-exception v6

    .line 378
    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 377
    throw v6
    :try_end_6
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_6 .. :try_end_6} :catch_0

    .line 406
    .end local v5    # "webViewContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :try_start_7
    const-string/jumbo v6, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v6

    return-object v6

    .line 397
    .end local v1    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    .restart local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    .local v5, "webViewContext":Landroid/content/Context;
    :catchall_1
    move-exception v6

    .line 398
    const-wide/16 v8, 0x10

    :try_start_8
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 397
    throw v6
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 400
    .end local v0    # "clazzLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v2

    .line 401
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_9
    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "error loading provider"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 403
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_2
    move-exception v6

    .line 404
    const-wide/16 v8, 0x10

    :try_start_a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 403
    throw v6
    :try_end_a
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_a .. :try_end_a} :catch_0

    .line 413
    .end local v5    # "webViewContext":Landroid/content/Context;
    .restart local v1    # "e":Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    :catch_2
    move-exception v3

    .line 416
    .local v3, "e2":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "Chromium WebView package does not exist"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .locals 1

    .prologue
    .line 695
    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 694
    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewContextAndSetProvider()Landroid/content/Context;
    .locals 11

    .prologue
    const/4 v10, 0x3

    .line 276
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    .line 281
    .local v2, "initialApplication":Landroid/app/Application;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebViewFactory;->getWebViewPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 282
    .local v4, "packageName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 284
    :try_start_1
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 286
    const v8, 0x100024c0

    .line 284
    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    sput-object v7, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 297
    sget-object v7, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 298
    const/4 v8, 0x3

    .line 296
    invoke-virtual {v2, v7, v8}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 299
    .local v6, "webViewContext":Landroid/content/Context;
    return-object v6

    .line 300
    .end local v6    # "webViewContext":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 306
    :cond_0
    const/4 v5, 0x0

    .line 308
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_2
    const-string/jumbo v7, "WebViewUpdateService.waitForAndGetProvider()"

    .line 307
    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    :try_start_3
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 312
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    const-wide/16 v8, 0x10

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 314
    iget v7, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v7, :cond_1

    .line 315
    iget v7, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eq v7, v10, :cond_1

    .line 316
    new-instance v7, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to load WebView provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 317
    iget v9, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    invoke-static {v9}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v9

    .line 316
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 363
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "response":Landroid/webkit/WebViewProviderResponse;
    :catch_1
    move-exception v1

    .line 364
    .local v1, "e":Landroid/util/AndroidException;
    new-instance v7, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to load WebView provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 311
    .end local v1    # "e":Landroid/util/AndroidException;
    .restart local v4    # "packageName":Ljava/lang/String;
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    :catchall_0
    move-exception v7

    .line 312
    const-wide/16 v8, 0x10

    :try_start_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 311
    throw v7

    .line 321
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    :cond_1
    const-string/jumbo v7, "ActivityManager.addPackageDependency()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 323
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    .line 324
    iget-object v8, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 323
    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 326
    const-wide/16 v8, 0x10

    :try_start_7
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    const-string/jumbo v7, "PackageManager.getPackageInfo()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 332
    :try_start_8
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 333
    iget-object v8, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 334
    const v9, 0x100024c0

    .line 332
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    .line 344
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    const-wide/16 v8, 0x10

    :try_start_9
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 349
    iget-object v7, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v3}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    .line 352
    const-string/jumbo v7, "initialApplication.createApplicationContext"

    .line 351
    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    .line 356
    :try_start_a
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 357
    const/4 v8, 0x3

    .line 355
    invoke-virtual {v2, v7, v8}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v6

    .line 358
    .restart local v6    # "webViewContext":Landroid/content/Context;
    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 361
    const-wide/16 v8, 0x10

    :try_start_b
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 359
    return-object v6

    .line 325
    .end local v3    # "newPackageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "webViewContext":Landroid/content/Context;
    :catchall_1
    move-exception v7

    .line 326
    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 325
    throw v7

    .line 343
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    :catchall_2
    move-exception v7

    .line 344
    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 343
    throw v7

    .line 360
    .local v3, "newPackageInfo":Landroid/content/pm/PackageInfo;
    :catchall_3
    move-exception v7

    .line 361
    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 360
    throw v7
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_1
.end method

.method public static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    return-object v1
.end method

.method private static getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    .locals 8
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 546
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 547
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v1}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "NATIVE_LIB_FILE_NAME":Ljava/lang/String;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    .line 552
    .local v5, "primaryArchIs64bit":Z
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 554
    if-eqz v5, :cond_2

    .line 556
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 557
    .local v4, "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 575
    .local v3, "path32":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 577
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 579
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 580
    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 579
    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 584
    .end local v2    # "f":Ljava/io/File;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 585
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 588
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 589
    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 588
    invoke-static {v6, v7, v0}, Landroid/webkit/WebViewFactory;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 595
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    return-object v6

    .line 560
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_2
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    .line 561
    .restart local v4    # "path64":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_0

    .line 563
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 565
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 566
    .restart local v4    # "path64":Ljava/lang/String;
    const-string/jumbo v3, ""

    .restart local v3    # "path32":Ljava/lang/String;
    goto :goto_0

    .line 569
    .end local v3    # "path32":Ljava/lang/String;
    .end local v4    # "path64":Ljava/lang/String;
    :cond_4
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 570
    .restart local v3    # "path32":Ljava/lang/String;
    const-string/jumbo v4, ""

    .restart local v4    # "path64":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWebViewPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "initialPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    new-array v0, v2, [I

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-static {v2, p0}, Landroid/app/ActivityThread;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v0

    .line 266
    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v0, "com.android.webview"

    return-object v0

    .line 271
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 107
    packed-switch p0, :pswitch_data_0

    .line 115
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 109
    :pswitch_1
    const-string/jumbo v0, "Time out waiting for Relro files being created"

    return-object v0

    .line 111
    :pswitch_2
    const-string/jumbo v0, "No WebView installed"

    return-object v0

    .line 113
    :pswitch_3
    const-string/jumbo v0, "Crashed for unknown reason"

    return-object v0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static loadNativeLibrary(Ljava/lang/ClassLoader;)I
    .locals 6
    .param p0, "clazzLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v3, 0x0

    .line 671
    sget-boolean v2, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-nez v2, :cond_0

    .line 672
    const-string/jumbo v2, "WebViewFactory"

    const-string/jumbo v3, "can\'t load with relro file; address space not reserved"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v2, 0x2

    return v2

    .line 676
    :cond_0
    sget-object v2, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "args":[Ljava/lang/String;
    aget-object v2, v0, v3

    .line 678
    const/4 v3, 0x1

    aget-object v3, v0, v3

    .line 679
    const-string/jumbo v4, "/data/misc/shared_relro/libwebviewchromium32.relro"

    .line 680
    const-string/jumbo v5, "/data/misc/shared_relro/libwebviewchromium64.relro"

    .line 677
    invoke-static {v2, v3, v4, v5, p0}, Landroid/webkit/WebViewFactory;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v1

    .line 682
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 683
    const-string/jumbo v2, "WebViewFactory"

    const-string/jumbo v3, "failed to load with relro file, proceeding without"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_1
    return v1
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "clazzLoader"    # Ljava/lang/ClassLoader;

    .prologue
    const/4 v9, 0x1

    .line 145
    const/4 v5, 0x0

    .line 147
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v6

    invoke-interface {v6}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 154
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v6, :cond_0

    .line 155
    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 156
    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    return v6

    .line 148
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "error waiting for relro creation"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/16 v6, 0x8

    return v6

    .line 158
    .end local v1    # "e":Landroid/os/RemoteException;
    .local v5, "response":Landroid/webkit/WebViewProviderResponse;
    :cond_0
    iget-object v6, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 159
    return v9

    .line 162
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 166
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const v6, 0x10000080

    .line 165
    :try_start_1
    invoke-virtual {v4, p0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 171
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    .line 173
    invoke-static {p1}, Landroid/webkit/WebViewFactory;->loadNativeLibrary(Ljava/lang/ClassLoader;)I

    move-result v2

    .line 176
    .local v2, "loadNativeRet":I
    if-nez v2, :cond_2

    iget v6, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    return v6

    .line 167
    .end local v2    # "loadNativeRet":I
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "WebViewFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t find package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v9

    .line 177
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "loadNativeRet":I
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    return v2
.end method

.method private static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I
.end method

.method private static native nativeReserveAddressSpace(J)Z
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .locals 21
    .param p0, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 472
    const/4 v5, 0x0

    .line 474
    .local v5, "nativeLibs":[Ljava/lang/String;
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/webkit/WebViewFactory;->getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v5

    .line 475
    .local v5, "nativeLibs":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 476
    const-wide/16 v6, 0x0

    .line 478
    .local v6, "newVmSize":J
    const/4 v13, 0x0

    array-length v0, v5

    move/from16 v17, v0

    move/from16 v16, v13

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    aget-object v8, v5, v16

    .line 479
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 478
    :cond_0
    :goto_1
    add-int/lit8 v13, v16, 0x1

    move/from16 v16, v13

    goto :goto_0

    .line 481
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 483
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1

    .line 486
    :cond_2
    const-string/jumbo v13, "!/"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 487
    const-string/jumbo v13, "!/"

    invoke-static {v8, v13}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 488
    .local v9, "split":[Ljava/lang/String;
    array-length v13, v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    .line 489
    const/4 v14, 0x0

    const/4 v11, 0x0

    .local v11, "z":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v12, Ljava/util/zip/ZipFile;

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-direct {v12, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 490
    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .local v12, "z":Ljava/util/zip/ZipFile;
    const/4 v13, 0x1

    :try_start_2
    aget-object v13, v9, v13

    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 491
    .local v3, "e":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v13

    if-nez v13, :cond_6

    .line 492
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v6

    .line 498
    if-eqz v12, :cond_3

    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_2
    if-eqz v14, :cond_0

    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 496
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    move-object v11, v12

    .line 497
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_5
    const-string/jumbo v13, "WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "error reading APK file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v9, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "split":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v13, "WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "error sizing load for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 517
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "nativeLibs":[Ljava/lang/String;
    .end local v6    # "newVmSize":J
    .end local v8    # "path":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 519
    .local v10, "t":Ljava/lang/Throwable;
    const-string/jumbo v13, "WebViewFactory"

    const-string/jumbo v14, "error preparing webview native library"

    invoke-static {v13, v14, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    .end local v10    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    invoke-static {v5}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)I

    move-result v13

    return v13

    .line 498
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "nativeLibs":[Ljava/lang/String;
    .restart local v6    # "newVmSize":J
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "split":[Ljava/lang/String;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v14

    goto :goto_2

    :cond_6
    if-eqz v12, :cond_7

    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    :goto_5
    if-eqz v14, :cond_4

    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :catch_3
    move-exception v14

    goto :goto_5

    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v13

    .end local v11    # "z":Ljava/util/zip/ZipFile;
    :goto_6
    :try_start_8
    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v14

    move-object/from16 v20, v14

    move-object v14, v13

    move-object/from16 v13, v20

    :goto_7
    if-eqz v11, :cond_8

    :try_start_9
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_8
    :goto_8
    if-eqz v14, :cond_a

    :try_start_a
    throw v14

    .line 496
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 498
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v15

    if-nez v14, :cond_9

    move-object v14, v15

    goto :goto_8

    :cond_9
    if-eq v14, v15, :cond_8

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_a
    throw v13
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 512
    .end local v4    # "f":Ljava/io/File;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "split":[Ljava/lang/String;
    :cond_b
    const-wide/16 v14, 0x2

    mul-long/2addr v14, v6

    const-wide/32 v16, 0x6400000

    :try_start_b
    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 513
    const-string/jumbo v13, "WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Setting new address space to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const-string/jumbo v13, "persist.sys.webview.vmsize"

    .line 515
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 514
    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    .line 498
    .restart local v4    # "f":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "split":[Ljava/lang/String;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v13

    goto :goto_7

    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v13

    move-object v11, v12

    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .local v11, "z":Ljava/util/zip/ZipFile;
    goto :goto_7

    .end local v11    # "z":Ljava/util/zip/ZipFile;
    .restart local v12    # "z":Ljava/util/zip/ZipFile;
    :catch_7
    move-exception v13

    move-object v11, v12

    .end local v12    # "z":Ljava/util/zip/ZipFile;
    .restart local v11    # "z":Ljava/util/zip/ZipFile;
    goto :goto_6
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)I
    .locals 3
    .param p0, "nativeLibraryPaths"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 449
    const/4 v0, 0x0

    .line 454
    .local v0, "numRelros":I
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 456
    invoke-static {v2, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x1

    .line 460
    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 462
    const/4 v1, 0x1

    invoke-static {v1, p0}, Landroid/webkit/WebViewFactory;->createRelroFile(Z[Ljava/lang/String;)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    .line 465
    :cond_1
    return v0
.end method

.method public static prepareWebViewInZygote()V
    .locals 6

    .prologue
    .line 427
    :try_start_0
    const-string/jumbo v3, "webviewchromium_loader"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v3, "persist.sys.webview.vmsize"

    .line 430
    const-wide/32 v4, 0x6400000

    .line 429
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 431
    .local v0, "addressSpaceToReserve":J
    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->nativeReserveAddressSpace(J)Z

    move-result v3

    sput-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    .line 433
    sget-boolean v3, Landroid/webkit/WebViewFactory;->sAddressSpaceReserved:Z

    if-eqz v3, :cond_0

    .line 425
    :goto_0
    return-void

    .line 438
    :cond_0
    const-string/jumbo v3, "WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reserving "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 439
    const-string/jumbo v5, " bytes of address space failed"

    .line 438
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    :catch_0
    move-exception v2

    .line 443
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error preparing native loader"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .prologue
    const/4 v3, 0x0

    .line 220
    if-nez p0, :cond_1

    .line 221
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 223
    :cond_1
    if-nez p1, :cond_2

    return v3

    .line 225
    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 226
    .local v0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, p0, v4

    .line 227
    .local v2, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    .end local v2    # "signature":Landroid/content/pm/Signature;
    :cond_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 230
    .local v1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v2, p1, v3

    .line 231
    .restart local v2    # "signature":Landroid/content/pm/Signature;
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 233
    .end local v2    # "signature":Landroid/content/pm/Signature;
    :cond_4
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .param p0, "chosen"    # Landroid/content/pm/PackageInfo;
    .param p1, "toUse"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 238
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    const-string/jumbo v2, " actual: "

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 241
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 239
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_1

    .line 244
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    const-string/jumbo v2, " actual: "

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 249
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to load an invalid WebView provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string/jumbo v1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_3
    return-void
.end method
