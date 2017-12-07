.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field public static final BLOCK_MAP_FILE:Ljava/io/File;

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final LAST_INSTALL_FILE:Ljava/io/File;

.field private static final LAST_PREFIX:Ljava/lang/String; = "last_"

.field private static final LOG_FILE:Ljava/io/File;

.field private static final LOG_FILE_MAX_LENGTH:I = 0x10000

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static final RECOVERY_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field public static final UNCRYPT_PACKAGE_FILE:Ljava/io/File;

.field public static final UNCRYPT_STATUS_FILE:Ljava/io/File;

.field private static mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final sRequestLock:Ljava/lang/Object;


# instance fields
.field private final mService:Landroid/os/IRecoverySystem;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 74
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 75
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 76
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "last_install"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    .line 96
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 106
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "block.map"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    .line 114
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    .line 122
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "uncrypt_status"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->UNCRYPT_STATUS_FILE:Ljava/io/File;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1014
    return-void
.end method

.method public constructor <init>(Landroid/os/IRecoverySystem;)V
    .locals 0
    .param p1, "service"    # Landroid/os/IRecoverySystem;

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    .line 1021
    return-void
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    sget-object v3, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    .local v1, "command":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    .line 784
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 785
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    const-string/jumbo v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 792
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "recovery"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RecoverySystem;

    .line 793
    .local v2, "rs":Landroid/os/RecoverySystem;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V

    .line 795
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Reboot failed (no permissions?)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static varargs bootCommand([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    sget-object v2, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 570
    sget-object v2, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 572
    new-instance v1, Ljava/io/FileWriter;

    sget-object v2, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 574
    .local v1, "command":Ljava/io/FileWriter;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 575
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 576
    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v4, "\n"

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 568
    return-void

    .line 580
    :catchall_0
    move-exception v2

    .line 581
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 580
    throw v2
.end method

.method public static cancelScheduledUpdate(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    const-string/jumbo v1, "recovery"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RecoverySystem;

    .line 639
    .local v0, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v0}, Landroid/os/RecoverySystem;->clearBcb()Z

    move-result v1

    if-nez v1, :cond_0

    .line 640
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "cancel scheduled update failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :cond_0
    return-void
.end method

.method private clearBcb()Z
    .locals 2

    .prologue
    .line 983
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1}, Landroid/os/IRecoverySystem;->clearBcb()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 984
    :catch_0
    move-exception v0

    .line 986
    .local v0, "unused":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 151
    .local v4, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    .line 152
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 154
    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 156
    .local v5, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string/jumbo v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 157
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 158
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 160
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 162
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .line 168
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 167
    throw v6

    .line 163
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    .line 164
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 163
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 170
    return-object v4
.end method

.method public static handleAftermath(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 885
    const/4 v4, 0x0

    .line 887
    .local v4, "log":Ljava/lang/String;
    :try_start_0
    sget-object v7, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    const-string/jumbo v8, "...\n"

    const/high16 v9, -0x10000

    invoke-static {v7, v9, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 894
    .end local v4    # "log":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 895
    invoke-static {p0}, Landroid/os/RecoverySystem;->parseLastInstallLog(Landroid/content/Context;)V

    .line 899
    :cond_0
    sget-object v7, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    .line 900
    .local v6, "reservePackage":Z
    if-nez v6, :cond_1

    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 901
    const/4 v2, 0x0

    .line 903
    .local v2, "filename":Ljava/lang/String;
    :try_start_1
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 910
    .end local v2    # "filename":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_1

    const-string/jumbo v7, "/data"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 911
    sget-object v7, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 912
    const-string/jumbo v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Deleted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_1
    :goto_2
    sget-object v7, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-eqz v5, :cond_7

    array-length v7, v5

    if-ge v3, v7, :cond_7

    .line 927
    aget-object v7, v5, v3

    const-string/jumbo v8, "last_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 926
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 890
    .end local v3    # "i":I
    .end local v5    # "names":[Ljava/lang/String;
    .end local v6    # "reservePackage":Z
    .restart local v4    # "log":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "RecoverySystem"

    const-string/jumbo v8, "Error reading recovery log"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 888
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 889
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "RecoverySystem"

    const-string/jumbo v8, "No recovery log file"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 904
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "log":Ljava/lang/String;
    .restart local v2    # "filename":Ljava/lang/String;
    .restart local v6    # "reservePackage":Z
    :catch_2
    move-exception v1

    .line 905
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "RecoverySystem"

    const-string/jumbo v8, "Error reading uncrypt file"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 914
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "filename":Ljava/lang/String;
    :cond_3
    const-string/jumbo v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t delete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 928
    .restart local v3    # "i":I
    .restart local v5    # "names":[Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    aget-object v7, v5, v3

    sget-object v8, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 929
    :cond_5
    if-eqz v6, :cond_6

    aget-object v7, v5, v3

    sget-object v8, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 931
    :cond_6
    new-instance v7, Ljava/io/File;

    sget-object v8, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v9, v5, v3

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    goto :goto_4

    .line 934
    :cond_7
    return-object v4
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;Z)V

    .line 454
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "processed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    sget-object v13, Landroid/os/RecoverySystem;->sRequestLock:Ljava/lang/Object;

    monitor-enter v13

    .line 477
    :try_start_0
    sget-object v12, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 479
    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 481
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "filename":Ljava/lang/String;
    const-string/jumbo v12, "/storage/emulated"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 484
    const-string/jumbo v12, "/storage/emulated"

    const-string/jumbo v14, "/data/media"

    invoke-virtual {v3, v12, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 487
    :cond_0
    const-string/jumbo v12, "RecoverySystem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " !!!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v12, Ljava/io/File;

    const-string/jumbo v14, "/cache"

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 491
    .local v5, "files":[Ljava/io/File;
    if-eqz v5, :cond_1

    array-length v12, v5

    if-nez v12, :cond_3

    .line 492
    :cond_1
    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v14, "!!! There is no any extra files in cache root directory !!!"

    invoke-static {v12, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_2
    const-string/jumbo v12, "_s.zip"

    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    .line 509
    .local v10, "securityUpdate":Z
    const-string/jumbo v12, "/data/"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 510
    if-eqz p2, :cond_5

    .line 511
    sget-object v12, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    .line 512
    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v14, "Package claimed to have been processed but failed to find the block map file."

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v14, "Failed to find block map file"

    invoke-direct {v12, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "files":[Ljava/io/File;
    .end local v10    # "securityUpdate":Z
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 494
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v5    # "files":[Ljava/io/File;
    :cond_3
    :try_start_1
    const-string/jumbo v12, "RecoverySystem"

    const-string/jumbo v14, "Deleting unuseful files in cache partition..."

    invoke-static {v12, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v12, 0x0

    array-length v14, v5

    :goto_0
    if-ge v12, v14, :cond_2

    aget-object v2, v5, v12

    .line 496
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-nez v15, :cond_4

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v15

    if-nez v15, :cond_4

    .line 498
    const-string/jumbo v15, "TAG"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "!!! Delete "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "failed !!!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "f":Ljava/io/File;
    .restart local v10    # "securityUpdate":Z
    :cond_5
    new-instance v11, Ljava/io/FileWriter;

    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    .local v11, "uncryptFile":Ljava/io/FileWriter;
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 521
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    .line 525
    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 526
    sget-object v12, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 530
    :goto_1
    sget-object v12, Landroid/os/RecoverySystem;->BLOCK_MAP_FILE:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 535
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    :cond_6
    const-string/jumbo v3, "@/cache/recovery/block.map"

    .line 538
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "--update_package="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "filenameArg":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "--locale="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "localeArg":Ljava/lang/String;
    const-string/jumbo v9, "--security\n"

    .line 542
    .local v9, "securityArg":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "command":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 544
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, "--security\n"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 548
    :cond_8
    const-string/jumbo v12, "recovery"

    .line 547
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RecoverySystem;

    .line 549
    .local v8, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v8, v1}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 550
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v14, "Setup BCB failed"

    invoke-direct {v12, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 520
    .end local v1    # "command":Ljava/lang/String;
    .end local v4    # "filenameArg":Ljava/lang/String;
    .end local v6    # "localeArg":Ljava/lang/String;
    .end local v8    # "rs":Landroid/os/RecoverySystem;
    .end local v9    # "securityArg":Ljava/lang/String;
    .restart local v11    # "uncryptFile":Ljava/io/FileWriter;
    :catchall_1
    move-exception v12

    .line 521
    invoke-virtual {v11}, Ljava/io/FileWriter;->close()V

    .line 520
    throw v12

    .line 527
    :cond_9
    const-string/jumbo v12, "RecoverySystem"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error setting permission for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 553
    .end local v11    # "uncryptFile":Ljava/io/FileWriter;
    .restart local v1    # "command":Ljava/lang/String;
    .restart local v4    # "filenameArg":Ljava/lang/String;
    .restart local v6    # "localeArg":Ljava/lang/String;
    .restart local v8    # "rs":Landroid/os/RecoverySystem;
    .restart local v9    # "securityArg":Ljava/lang/String;
    :cond_a
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v4, v12, v14

    const/4 v14, 0x1

    aput-object v6, v12, v14

    invoke-static {v12}, Landroid/os/RecoverySystem;->bootCommand([Ljava/lang/String;)V

    .line 556
    const-string/jumbo v12, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 557
    .local v7, "pm":Landroid/os/PowerManager;
    const-string/jumbo v12, "recovery-update"

    invoke-virtual {v7, v12}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 559
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v14, "Reboot failed (no permissions?)"

    invoke-direct {v12, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static parseLastInstallLog(Landroid/content/Context;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 802
    const/16 v22, 0x0

    const/4 v10, 0x0

    .local v10, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/FileReader;

    sget-object v23, Landroid/os/RecoverySystem;->LAST_INSTALL_FILE:Ljava/io/File;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 803
    .end local v10    # "in":Ljava/io/BufferedReader;
    .local v11, "in":Ljava/io/BufferedReader;
    const/4 v12, 0x0

    .line 804
    .local v12, "line":Ljava/lang/String;
    const/4 v6, -0x1

    .local v6, "bytesWrittenInMiB":I
    const/4 v5, -0x1

    .line 805
    .local v5, "bytesStashedInMiB":I
    const/16 v19, -0x1

    .line 806
    .local v19, "timeTotal":I
    const/16 v20, -0x1

    .line 807
    .local v20, "uncryptTime":I
    const/16 v18, -0x1

    .line 808
    .end local v12    # "line":Ljava/lang/String;
    .local v18, "sourceVersion":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .local v12, "line":Ljava/lang/String;
    if-eqz v12, :cond_9

    .line 814
    const/16 v21, 0x3a

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 815
    .local v13, "numIndex":I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_0

    add-int/lit8 v21, v13, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 818
    add-int/lit8 v21, v13, 0x1

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 821
    .local v14, "numString":Ljava/lang/String;
    :try_start_2
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v16

    .line 827
    .local v16, "parsedNum":J
    const/high16 v4, 0x100000

    .line 830
    .local v4, "MiB":I
    :try_start_3
    const-string/jumbo v21, "bytes"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 831
    const-wide/32 v24, 0x100000

    div-long v24, v16, v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_3
    .catch Ljava/lang/ArithmeticException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v15

    .line 840
    .local v15, "scaled":I
    :goto_1
    :try_start_4
    const-string/jumbo v21, "time"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 841
    move/from16 v19, v15

    goto :goto_0

    .line 822
    .end local v4    # "MiB":I
    .end local v15    # "scaled":I
    .end local v16    # "parsedNum":J
    :catch_0
    move-exception v9

    .line 823
    .local v9, "ignored":Ljava/lang/NumberFormatException;
    const-string/jumbo v21, "RecoverySystem"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Failed to parse numbers in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 874
    .end local v9    # "ignored":Ljava/lang/NumberFormatException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "numIndex":I
    .end local v14    # "numString":Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object v10, v11

    .end local v5    # "bytesStashedInMiB":I
    .end local v6    # "bytesWrittenInMiB":I
    .end local v11    # "in":Ljava/io/BufferedReader;
    .end local v18    # "sourceVersion":I
    .end local v19    # "timeTotal":I
    .end local v20    # "uncryptTime":I
    :goto_2
    :try_start_5
    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v22

    move-object/from16 v26, v22

    move-object/from16 v22, v21

    move-object/from16 v21, v26

    :goto_3
    if-eqz v10, :cond_1

    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    :goto_4
    if-eqz v22, :cond_12

    :try_start_7
    throw v22
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 872
    :catch_2
    move-exception v7

    .line 873
    .local v7, "e":Ljava/io/IOException;
    :goto_5
    const-string/jumbo v21, "RecoverySystem"

    const-string/jumbo v22, "Failed to read lines in last_install"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v7    # "e":Ljava/io/IOException;
    :goto_6
    return-void

    .line 833
    .restart local v4    # "MiB":I
    .restart local v5    # "bytesStashedInMiB":I
    .restart local v6    # "bytesWrittenInMiB":I
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "numIndex":I
    .restart local v14    # "numString":Ljava/lang/String;
    .restart local v16    # "parsedNum":J
    .restart local v18    # "sourceVersion":I
    .restart local v19    # "timeTotal":I
    .restart local v20    # "uncryptTime":I
    :cond_2
    :try_start_8
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toIntExact(J)I
    :try_end_8
    .catch Ljava/lang/ArithmeticException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v15

    .restart local v15    # "scaled":I
    goto :goto_1

    .line 835
    .end local v15    # "scaled":I
    :catch_3
    move-exception v8

    .line 836
    .local v8, "ignored":Ljava/lang/ArithmeticException;
    :try_start_9
    const-string/jumbo v21, "RecoverySystem"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Number overflows in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 874
    .end local v4    # "MiB":I
    .end local v8    # "ignored":Ljava/lang/ArithmeticException;
    .end local v12    # "line":Ljava/lang/String;
    .end local v13    # "numIndex":I
    .end local v14    # "numString":Ljava/lang/String;
    .end local v16    # "parsedNum":J
    :catchall_1
    move-exception v21

    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .local v10, "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 842
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "MiB":I
    .restart local v11    # "in":Ljava/io/BufferedReader;
    .restart local v12    # "line":Ljava/lang/String;
    .restart local v13    # "numIndex":I
    .restart local v14    # "numString":Ljava/lang/String;
    .restart local v15    # "scaled":I
    .restart local v16    # "parsedNum":J
    :cond_3
    const-string/jumbo v21, "uncrypt_time"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 843
    move/from16 v20, v15

    goto/16 :goto_0

    .line 844
    :cond_4
    const-string/jumbo v21, "source_build"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 845
    move/from16 v18, v15

    goto/16 :goto_0

    .line 846
    :cond_5
    const-string/jumbo v21, "bytes_written"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 847
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_6

    move v6, v15

    goto/16 :goto_0

    .line 848
    :cond_6
    add-int/2addr v6, v15

    goto/16 :goto_0

    .line 849
    :cond_7
    const-string/jumbo v21, "bytes_stashed"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 850
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_8

    move v5, v15

    goto/16 :goto_0

    .line 851
    :cond_8
    add-int/2addr v5, v15

    goto/16 :goto_0

    .line 856
    .end local v4    # "MiB":I
    .end local v13    # "numIndex":I
    .end local v14    # "numString":Ljava/lang/String;
    .end local v15    # "scaled":I
    .end local v16    # "parsedNum":J
    :cond_9
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 857
    const-string/jumbo v21, "ota_time_total"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 859
    :cond_a
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 860
    const-string/jumbo v21, "ota_uncrypt_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 862
    :cond_b
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 863
    const-string/jumbo v21, "ota_source_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 865
    :cond_c
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v6, v0, :cond_d

    .line 866
    const-string/jumbo v21, "ota_written_in_MiBs"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 868
    :cond_d
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_e

    .line 869
    const-string/jumbo v21, "ota_stashed_in_MiBs"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 874
    :cond_e
    if-eqz v11, :cond_f

    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_f
    :goto_7
    if-eqz v22, :cond_10

    :try_start_b
    throw v22
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 872
    :catch_4
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 874
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "in":Ljava/io/BufferedReader;
    .restart local v11    # "in":Ljava/io/BufferedReader;
    :catch_5
    move-exception v22

    goto :goto_7

    :cond_10
    move-object v10, v11

    .end local v11    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_6

    .end local v5    # "bytesStashedInMiB":I
    .end local v6    # "bytesWrittenInMiB":I
    .end local v10    # "in":Ljava/io/BufferedReader;
    .end local v12    # "line":Ljava/lang/String;
    .end local v18    # "sourceVersion":I
    .end local v19    # "timeTotal":I
    .end local v20    # "uncryptTime":I
    :catch_6
    move-exception v23

    if-nez v22, :cond_11

    move-object/from16 v22, v23

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    :try_start_c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_12
    throw v21
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .local v10, "in":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v21

    goto/16 :goto_3

    :catch_7
    move-exception v21

    goto/16 :goto_2
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V

    .line 435
    return-void
.end method

.method public static processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "filename":Ljava/lang/String;
    const-string/jumbo v5, "/data/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 365
    return-void

    .line 370
    :cond_0
    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 371
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v5, "RecoverySystem-screen"

    const/16 v6, 0x1a

    invoke-virtual {v1, v6, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Landroid/os/RecoverySystem;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 372
    sget-object v5, Landroid/os/RecoverySystem;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 373
    const-string/jumbo v5, "RecoverySystem"

    const-string/jumbo v6, "keep screen on up to 60 seconds for OTA follow"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string/jumbo v5, "recovery"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RecoverySystem;

    .line 377
    .local v4, "rs":Landroid/os/RecoverySystem;
    const/4 v3, 0x0

    .line 378
    .local v3, "progressListener":Landroid/os/IRecoverySystemProgressListener;
    if-eqz p2, :cond_1

    .line 380
    if-eqz p3, :cond_2

    .line 381
    move-object v2, p3

    .line 385
    .local v2, "progressHandler":Landroid/os/Handler;
    :goto_0
    new-instance v3, Landroid/os/RecoverySystem$2;

    .end local v3    # "progressListener":Landroid/os/IRecoverySystemProgressListener;
    invoke-direct {v3, v2, p2}, Landroid/os/RecoverySystem$2;-><init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V

    .line 413
    .end local v2    # "progressHandler":Landroid/os/Handler;
    :cond_1
    invoke-direct {v4, v0, v3}, Landroid/os/RecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 414
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "process package failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    .restart local v3    # "progressListener":Landroid/os/IRecoverySystemProgressListener;
    :cond_2
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .restart local v2    # "progressHandler":Landroid/os/Handler;
    goto :goto_0

    .line 362
    .end local v2    # "progressHandler":Landroid/os/Handler;
    .end local v3    # "progressListener":Landroid/os/IRecoverySystemProgressListener;
    :cond_3
    return-void
.end method

.method private rebootRecoveryWithCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 995
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->rebootRecoveryWithCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    :goto_0
    return-void

    .line 996
    :catch_0
    move-exception v0

    .local v0, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static rebootWipeAb(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    const/4 v3, 0x0

    .line 764
    .local v3, "reasonArg":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 768
    .end local v3    # "reasonArg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "filename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--wipe_package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "filenameArg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "--locale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, "localeArg":Ljava/lang/String;
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "--wipe_ab"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    const/4 v1, 0x0

    .line 741
    .local v1, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .end local v1    # "reasonArg":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "--wipe_cache"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 657
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 664
    invoke-static {p0, v0, p1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 663
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V

    .line 669
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 697
    .local v13, "um":Landroid/os/UserManager;
    if-nez p3, :cond_0

    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v13, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Wiping data is not allowed for this user."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .line 702
    .local v9, "condition":Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 704
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 705
    const-string/jumbo v3, "android.permission.MASTER_CLEAR"

    .line 706
    new-instance v4, Landroid/os/RecoverySystem$3;

    invoke-direct {v4, v9}, Landroid/os/RecoverySystem$3;-><init>(Landroid/os/ConditionVariable;)V

    .line 711
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 704
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 714
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    .line 716
    const/4 v12, 0x0

    .line 717
    .local v12, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 718
    const-string/jumbo v12, "--shutdown_after"

    .line 721
    .end local v12    # "shutdownArg":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .line 722
    .local v11, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 726
    .end local v11    # "reasonArg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--locale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 727
    .local v10, "localeArg":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v0, v2

    const-string/jumbo v2, "--wipe_data"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object v11, v0, v2

    const/4 v2, 0x3

    aput-object v10, v0, v2

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 6
    .param p0, "name"    # Ljava/io/File;

    .prologue
    .line 941
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 942
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 944
    new-instance v0, Ljava/io/File;

    aget-object v3, v1, v2

    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 945
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/os/RecoverySystem;->recursiveDelete(Ljava/io/File;)V

    .line 943
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 950
    const-string/jumbo v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_1
    return-void

    .line 952
    :cond_1
    const-string/jumbo v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3f

    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1006
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 1007
    return-object p0
.end method

.method public static scheduleUpdateOnBoot(Landroid/content/Context;Ljava/io/File;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "filename":Ljava/lang/String;
    const-string/jumbo v7, "_s.zip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    .line 606
    .local v6, "securityUpdate":Z
    const-string/jumbo v7, "/data/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 607
    const-string/jumbo v1, "@/cache/recovery/block.map"

    .line 610
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--update_package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "filenameArg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "--locale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "localeArg":Ljava/lang/String;
    const-string/jumbo v5, "--security\n"

    .line 614
    .local v5, "securityArg":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "command":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 616
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "--security\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    :cond_1
    const-string/jumbo v7, "recovery"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RecoverySystem;

    .line 620
    .local v4, "rs":Landroid/os/RecoverySystem;
    invoke-direct {v4, v0}, Landroid/os/RecoverySystem;->setupBcb(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 621
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "schedule update on boot failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 600
    :cond_2
    return-void
.end method

.method private setupBcb(Ljava/lang/String;)Z
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 972
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1}, Landroid/os/IRecoverySystem;->setupBcb(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 973
    :catch_0
    move-exception v0

    .line 975
    .local v0, "unused":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    .locals 2
    .param p1, "packageFile"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/os/IRecoverySystemProgressListener;

    .prologue
    .line 961
    :try_start_0
    iget-object v1, p0, Landroid/os/RecoverySystem;->mService:Landroid/os/IRecoverySystem;

    invoke-interface {v1, p1, p2}, Landroid/os/IRecoverySystem;->uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 962
    :catch_0
    move-exception v0

    .line 964
    .local v0, "unused":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 30
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 204
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 206
    .local v3, "fileLen":J
    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .local v8, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 209
    .local v6, "startTimeMillis":J
    if-eqz p1, :cond_0

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 213
    :cond_0
    const-wide/16 v28, 0x6

    sub-long v28, v3, v28

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 214
    const/4 v2, 0x6

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 215
    .local v16, "footer":[B
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 217
    const/4 v2, 0x2

    aget-byte v2, v16, v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_1

    const/4 v2, 0x3

    aget-byte v2, v16, v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 218
    :cond_1
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "no signature in file (no footer)"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v6    # "startTimeMillis":J
    .end local v16    # "footer":[B
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    .line 338
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 337
    throw v2

    .line 221
    .restart local v6    # "startTimeMillis":J
    .restart local v16    # "footer":[B
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_2
    const/4 v2, 0x4

    :try_start_1
    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v9, 0x5

    aget-byte v9, v16, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v5, v2, v9

    .line 222
    .local v5, "commentSize":I
    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v9, 0x1

    aget-byte v9, v16, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int v21, v2, v9

    .line 224
    .local v21, "signatureStart":I
    add-int/lit8 v2, v5, 0x16

    new-array v15, v2, [B

    .line 225
    .local v15, "eocd":[B
    add-int/lit8 v2, v5, 0x16

    int-to-long v0, v2

    move-wide/from16 v28, v0

    sub-long v28, v3, v28

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 226
    invoke-virtual {v8, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 230
    const/4 v2, 0x0

    aget-byte v2, v15, v2

    const/16 v9, 0x50

    if-ne v2, v9, :cond_3

    const/4 v2, 0x1

    aget-byte v2, v15, v2

    const/16 v9, 0x4b

    if-eq v2, v9, :cond_4

    .line 232
    :cond_3
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "no signature in file (bad footer)"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_4
    const/4 v2, 0x2

    aget-byte v2, v15, v2

    const/4 v9, 0x5

    if-ne v2, v9, :cond_3

    const/4 v2, 0x3

    aget-byte v2, v15, v2

    const/4 v9, 0x6

    if-ne v2, v9, :cond_3

    .line 235
    const/16 v17, 0x4

    .local v17, "i":I
    :goto_0
    array-length v2, v15

    add-int/lit8 v2, v2, -0x3

    move/from16 v0, v17

    if-ge v0, v2, :cond_6

    .line 236
    aget-byte v2, v15, v17

    const/16 v9, 0x50

    if-ne v2, v9, :cond_5

    add-int/lit8 v2, v17, 0x1

    aget-byte v2, v15, v2

    const/16 v9, 0x4b

    if-ne v2, v9, :cond_5

    .line 237
    add-int/lit8 v2, v17, 0x2

    aget-byte v2, v15, v2

    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    add-int/lit8 v2, v17, 0x3

    aget-byte v2, v15, v2

    const/4 v9, 0x6

    if-ne v2, v9, :cond_5

    .line 238
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "EOCD marker found after start of EOCD"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 244
    :cond_6
    new-instance v10, Lsun/security/pkcs/PKCS7;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v9, v5, 0x16

    sub-int v9, v9, v21

    move/from16 v0, v21

    invoke-direct {v2, v15, v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v10, v2}, Lsun/security/pkcs/PKCS7;-><init>(Ljava/io/InputStream;)V

    .line 248
    .local v10, "block":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v14

    .line 249
    .local v14, "certificates":[Ljava/security/cert/X509Certificate;
    if-eqz v14, :cond_7

    array-length v2, v14

    if-nez v2, :cond_8

    .line 250
    :cond_7
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature contains no certificates"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_8
    const/4 v2, 0x0

    aget-object v13, v14, v2

    .line 253
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v20

    .line 255
    .local v20, "signatureKey":Ljava/security/PublicKey;
    invoke-virtual {v10}, Lsun/security/pkcs/PKCS7;->getSignerInfos()[Lsun/security/pkcs/SignerInfo;

    move-result-object v23

    .line 256
    .local v23, "signerInfos":[Lsun/security/pkcs/SignerInfo;
    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    array-length v2, v0

    if-nez v2, :cond_a

    .line 257
    :cond_9
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature contains no signedData"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_a
    const/4 v2, 0x0

    aget-object v22, v23, v2

    .line 263
    .local v22, "signerInfo":Lsun/security/pkcs/SignerInfo;
    const/16 v25, 0x0

    .line 265
    .local v25, "verified":Z
    if-nez p2, :cond_b

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 264
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_b
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v24

    .line 266
    .local v24, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "c$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 267
    .local v11, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 268
    const/16 v25, 0x1

    .line 272
    .end local v11    # "c":Ljava/security/cert/X509Certificate;
    :cond_d
    if-nez v25, :cond_e

    .line 273
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature doesn\'t match any trusted key"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_e
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 279
    move-object/from16 v19, p1

    .line 280
    .local v19, "listenerForInner":Landroid/os/RecoverySystem$ProgressListener;
    new-instance v2, Landroid/os/RecoverySystem$1;

    move-object/from16 v9, p1

    invoke-direct/range {v2 .. v9}, Landroid/os/RecoverySystem$1;-><init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v2}, Lsun/security/pkcs/PKCS7;->verify(Lsun/security/pkcs/SignerInfo;Ljava/io/InputStream;)Lsun/security/pkcs/SignerInfo;

    move-result-object v26

    .line 325
    .local v26, "verifyResult":Lsun/security/pkcs/SignerInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v18

    .line 326
    .local v18, "interrupted":Z
    if-eqz p1, :cond_f

    .line 327
    const/16 v2, 0x64

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 330
    :cond_f
    if-eqz v18, :cond_10

    .line 331
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "verification was interrupted"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_10
    if-nez v26, :cond_11

    .line 335
    new-instance v2, Ljava/security/SignatureException;

    const-string/jumbo v9, "signature digest verification failed"

    invoke-direct {v2, v9}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :cond_11
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 203
    return-void
.end method
