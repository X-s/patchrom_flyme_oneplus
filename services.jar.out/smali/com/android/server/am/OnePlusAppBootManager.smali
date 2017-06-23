.class public Lcom/android/server/am/OnePlusAppBootManager;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;,
        Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;,
        Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.haha.action.test"

.field private static final APPBOOT_FILE:Ljava/lang/String; = "/data/system/appboot/appboot.xml"

.field private static APPBOOT_VERSION:Ljava/lang/String; = null

.field public static BLACKLIST_ENABLE:Z = false

.field public static DEBUG:Z = false

.field public static DEBUG_BINDER:Z = false

.field private static INSTANCE:Lcom/android/server/am/OnePlusAppBootManager; = null

.field public static IN_USING:Z = false

.field private static final MSG_DELAY_FORCE_STOP_PKG:I = 0x2

.field private static final MSG_PERSIST_APPBOOT_LIST:I = 0x1

.field private static final MSG_TYPE_PKG_ADD:I = 0x17

.field private static final MSG_TYPE_PKG_REINSTALL:I = 0x15

.field private static final MSG_TYPE_PKG_REMOVE:I = 0x16

.field private static final PRELIST_FILE:Ljava/lang/String; = "/system/etc/presetlist.xml"

.field private static final PROP_ALLOW:Ljava/lang/String; = "persist.sys.appboot.allow"

.field private static final PROP_BLACKLIST:Ljava/lang/String; = "persist.sys.appboot.blacklist"

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.appboot.debug"

.field private static final PROP_USING:Ljava/lang/String; = "persist.sys.appboot.using"

.field private static final SPECIAL_FILE:Ljava/lang/String; = "/system/etc/appbootspecial.xml"

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field public static final VERSION:I = 0xf58459

.field private static final XML_ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final XML_ATTR_BOOT:Ljava/lang/String; = "boot"

.field private static final XML_ATTR_CALLEE:Ljava/lang/String; = "callee"

.field private static final XML_ATTR_CALLER:Ljava/lang/String; = "caller"

.field private static final XML_ATTR_FLAG:Ljava/lang/String; = "flag"

.field private static final XML_ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_APPBOOT:Ljava/lang/String; = "appboot"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_PRELIST:Ljava/lang/String; = "prelist"

.field public static mAppBootSwitch:Z

.field private static mCurrentActivityPkg:Ljava/lang/String;

.field private static mCurrentIME:Ljava/lang/String;

.field private static mCurrentWallPaperPkg:Ljava/lang/String;

.field private static mLastActivityPkg:Ljava/lang/String;

.field private static mPrePkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mABILock:Ljava/lang/Object;

.field private mActivityClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field mAppBootThread:Landroid/os/HandlerThread;

.field mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

.field private mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastIntentClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mPresetWhiteListPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceClassBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-array v0, v3, [I

    const/16 v1, 0x16

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 90
    sput-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 91
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 92
    sput-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    .line 101
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 104
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 105
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 106
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 107
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    .line 124
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 1736
    const-string v0, "1"

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 5
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    .line 1039
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.android.vending"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    .line 1350
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager$1;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 1404
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 1405
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 1407
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager$2;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1510
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 1511
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 207
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 208
    const-string v0, "persist.sys.appboot.using"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 213
    const-string v0, "persist.sys.appboot.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 214
    const-string v0, "persist.sys.appboot.blacklist"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 215
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 216
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 217
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_prelist()I

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    .line 221
    return-void
.end method

.method private static WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "xmlStr"    # Ljava/lang/String;

    .prologue
    .line 1619
    if-nez p1, :cond_1

    .line 1620
    const/4 v6, -0x1

    .line 1655
    :cond_0
    :goto_0
    return v6

    .line 1623
    :cond_1
    const/4 v3, 0x0

    .line 1625
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1626
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1627
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1628
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1631
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1633
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1634
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    const/4 v6, -0x2

    .line 1649
    if-eqz v3, :cond_0

    .line 1650
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1651
    const/4 v3, 0x0

    goto :goto_0

    .line 1653
    :catch_0
    move-exception v0

    .line 1654
    .local v0, "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1639
    .end local v0    # "ec":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1640
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1641
    .local v5, "pidbuffer":[B
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1642
    const/4 v6, 0x1

    .line 1649
    if-eqz v4, :cond_4

    .line 1650
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1651
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1653
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1654
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "ec":Ljava/io/IOException;
    :cond_4
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1644
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pidbuffer":[B
    :catch_2
    move-exception v1

    .line 1645
    .local v1, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_5
    const-string v6, "OnePlusAppBootManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException # WriteStringToFile # "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1646
    const/4 v6, -0x3

    .line 1649
    if-eqz v3, :cond_0

    .line 1650
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1651
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1653
    :catch_3
    move-exception v0

    .line 1654
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1648
    .end local v0    # "ec":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1649
    :goto_2
    if-eqz v3, :cond_5

    .line 1650
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1651
    const/4 v3, 0x0

    .line 1655
    :cond_5
    :goto_3
    throw v6

    .line 1653
    :catch_4
    move-exception v0

    .line 1654
    .restart local v0    # "ec":Ljava/io/IOException;
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException # WriteStringToFile # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1648
    .end local v0    # "ec":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1644
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusAppBootManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # J

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpPkgMapInfos()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->forceStopPkg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->removeAppBootInfo(Ljava/lang/String;)V

    return-void
.end method

.method private dumpInfo()V
    .locals 3

    .prologue
    .line 224
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "# dump # VERSION # 16090201"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # IN_USING # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mAppBootSwitch # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # DEBUG # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # BLACKLIST_ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method private dumpPkgMapInfos()V
    .locals 7

    .prologue
    .line 234
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v4

    .line 235
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 236
    const-string v3, "OnePlusAppBootManager"

    const-string v5, " # dump # mPkgMap = null"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v4

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v1, 0x0

    .line 240
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 241
    .local v2, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    add-int/lit8 v1, v1, 0x1

    .line 242
    const-string v3, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "index":I
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private forceStopPkg(Ljava/lang/String;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1569
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forceStopPkg # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1571
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v5, :cond_5

    if-eqz p1, :cond_5

    .line 1573
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1574
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 1596
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :goto_0
    return v2

    .line 1577
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-ne v5, v2, :cond_2

    move v2, v3

    .line 1578
    goto :goto_0

    .line 1580
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1581
    const/4 v2, 0x3

    goto :goto_0

    .line 1583
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1584
    const/4 v2, 0x4

    goto :goto_0

    .line 1586
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1587
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1588
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1589
    monitor-exit v3

    move v2, v4

    goto :goto_0

    .line 1590
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1591
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catch_0
    move-exception v1

    .line 1592
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception# forceStopPkg: forceStopPkg error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1596
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " !!!!!!!Exception # getAppBootInfo # pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 252
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 253
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 255
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 256
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# getAppBootInfo # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 268
    :cond_2
    return-object v0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static final getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;
    .locals 1
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 200
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 203
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    return-object v0
.end method

.method private getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 399
    if-nez p1, :cond_1

    .line 400
    const-string v2, "OnePlusAppBootManager"

    const-string v3, "Fatal Exception # getPkgNameFromIntent # intent=null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, 0x0

    .line 410
    :cond_0
    :goto_0
    return-object v1

    .line 403
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 405
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 406
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isPackageInPresetWhitelist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1043
    if-nez p1, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return v2

    .line 1047
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1048
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1049
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1050
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# isPackageInPresetWhitelist # whitelist-pkg # pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 189
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    if-eqz v1, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#cuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cpid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readXml_specialList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1907
    const-string v9, "readXml_specialList"

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1908
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1909
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/etc/appbootspecial.xml"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1910
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1911
    const-string v9, "readXml_specialList # file don\'t exist!"

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1993
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    const/4 v4, 0x0

    .line 1918
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1919
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 1920
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1923
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 1924
    .local v7, "type":I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    .line 1925
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1926
    .local v6, "tag":Ljava/lang/String;
    const-string v9, "svcActB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1927
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1928
    .local v8, "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1. svcActB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1929
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1930
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1970
    .end local v6    # "tag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    if-ne v7, v11, :cond_2

    .line 1976
    if-eqz v5, :cond_14

    .line 1977
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1978
    const/4 v4, 0x0

    .line 1983
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_2
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1984
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1985
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1986
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1987
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1988
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1989
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mActivityClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1990
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mProviderClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1932
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v9, "svcActW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1933
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1934
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "2. svcActW # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1935
    :cond_6
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1936
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1972
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 1973
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string v9, "OnePlusAppBootManager"

    const-string v10, "readXml_specialList # failed parsing "

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1976
    if-eqz v4, :cond_7

    .line 1977
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1978
    const/4 v4, 0x0

    .line 1983
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 1984
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1985
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1986
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mServiceClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1987
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1988
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1989
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mActivityClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1990
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mProviderClassBlackList size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1938
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_8
    :try_start_6
    const-string v9, "svcClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1939
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1940
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3. svcClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1941
    :cond_9
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1942
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1975
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v4, v5

    .line 1976
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v4, :cond_a

    .line 1977
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1978
    const/4 v4, 0x0

    .line 1983
    :cond_a
    :goto_6
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 1984
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mServiceActionBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1985
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mServiceActionWhiteList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1986
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mServiceClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1987
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1988
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1989
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mActivityClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1990
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mProviderClassBlackList size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_b
    throw v9

    .line 1944
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_c
    :try_start_8
    const-string v9, "brdClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1945
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1946
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "4. brdClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1947
    :cond_d
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1948
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1950
    .end local v8    # "value":Ljava/lang/String;
    :cond_e
    const-string v9, "brdActW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1951
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1952
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "5. brdActW # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1953
    :cond_f
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1954
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1956
    .end local v8    # "value":Ljava/lang/String;
    :cond_10
    const-string v9, "actClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1957
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1958
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "6. actClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1959
    :cond_11
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1960
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1962
    .end local v8    # "value":Ljava/lang/String;
    :cond_12
    const-string v9, "pvdClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1963
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 1964
    .restart local v8    # "value":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_13

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "7. pvdClsB # value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1965
    :cond_13
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 1966
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 1980
    .end local v6    # "tag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1981
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_14
    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 1980
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1981
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 1980
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 1981
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 1975
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    goto/16 :goto_5

    .line 1972
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method private registerGeneralReceiver()V
    .locals 3

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1394
    const-string v1, "OnePlusAppBootManager"

    const-string v2, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    :goto_0
    return-void

    .line 1397
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1398
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.haha.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1399
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1400
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerPackageReceiver()V
    .locals 3

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1456
    const-string v1, "OnePlusAppBootManager"

    const-string v2, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :goto_0
    return-void

    .line 1459
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1460
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1462
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1464
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1465
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeAppBootInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 298
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# removeAppBootInfo # pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    monitor-exit v1

    .line 304
    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private schedulePersistAppBootInfo(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 1600
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1609
    :goto_0
    return-void

    .line 1603
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "schedulePersistAppBootInfo #"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1604
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1605
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "schedulePersistAppBootInfo # hasMessages # MSG_PERSIST_APPBOOT_LIST"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1606
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 1608
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " !!!!!!!Exception # updateAppBootInfo # pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 276
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 277
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-nez v0, :cond_2

    .line 278
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 279
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 280
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# updateAppBootInfo # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 294
    :cond_1
    return-object v0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 289
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    goto :goto_1
.end method

.method private updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "abi"    # Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .param p2, "callerStr"    # Ljava/lang/String;
    .param p3, "calleeStr"    # Ljava/lang/String;

    .prologue
    .line 1697
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1698
    .local v1, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 1699
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1700
    .local v2, "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1701
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1702
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 1704
    :cond_2
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # caller pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1709
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1710
    if-eqz v1, :cond_7

    .line 1711
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1712
    .restart local v2    # "s":Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1713
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1714
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_1

    .line 1716
    :cond_6
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# updateLinkedPkgsInfo # callee pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1720
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_7
    return-void
.end method


# virtual methods
.method public addDependencyPackageFlag(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .prologue
    .line 826
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 831
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    .line 833
    .local v1, "pkgFlag":I
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_0

    .line 834
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setDependencyPackageFlag()V

    .line 835
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# addDependencyPackageFlag # go pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 335
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 376
    :cond_1
    :goto_0
    return v1

    .line 338
    :cond_2
    const/4 v1, 0x1

    .line 340
    .local v1, "ret":Z
    if-eqz p1, :cond_6

    .line 341
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 343
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo # aInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 346
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo #2 className ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 351
    :cond_3
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 352
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",aInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 360
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 364
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 365
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 368
    :cond_5
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 369
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 372
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_6
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v2, :cond_7

    if-nez v1, :cond_1

    .line 373
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canActivityGo # ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", aInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingPackage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "calllingPid"    # I
    .param p3, "callingUid"    # I

    .prologue
    const/4 v3, 0x1

    .line 307
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 331
    :cond_1
    :goto_0
    return v2

    .line 311
    :cond_2
    const/4 v2, 0x1

    .line 312
    .local v2, "ret":Z
    const/16 v4, 0x2710

    if-le p3, v4, :cond_3

    .line 313
    const/4 v2, 0x0

    .line 316
    :cond_3
    if-eqz v2, :cond_4

    .line 317
    if-eqz p1, :cond_4

    .line 318
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 320
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 321
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 322
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 327
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canInstrumentationGo # className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", calllingPid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 789
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 822
    :cond_1
    :goto_0
    return v3

    .line 793
    :cond_2
    const/4 v3, 0x1

    .line 794
    .local v3, "ret":Z
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 795
    .local v2, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 797
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 798
    const/4 v3, 0x1

    .line 805
    :cond_3
    :goto_1
    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 806
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 810
    :cond_4
    const-string v5, "persist.sys.appboot.allow"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 811
    .local v1, "allow":I
    if-ne v1, v4, :cond_a

    .line 812
    const/4 v3, 0x1

    .line 813
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProcGo # pkgName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # force can GO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 819
    :cond_5
    :goto_2
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v4, :cond_6

    if-nez v3, :cond_1

    .line 820
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProcGo # ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # abi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 799
    .end local v1    # "allow":I
    :cond_7
    if-eqz p2, :cond_8

    const-string v5, "activity"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 800
    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    .line 801
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 802
    const/4 v3, 0x0

    goto :goto_1

    .line 814
    .restart local v1    # "allow":I
    :cond_a
    if-ne v1, v7, :cond_5

    .line 815
    const/4 v3, 0x0

    .line 816
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# canProcGo # pkgName= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # force can NOT GO"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public canProviderGo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x1

    .line 712
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_1

    .line 736
    :cond_0
    :goto_0
    return v2

    .line 715
    :cond_1
    const/4 v1, 0x1

    .line 716
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 717
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 719
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canProviderGo # ret=false, appInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x0

    goto :goto_0

    .line 728
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 729
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 732
    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canProviderGo # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # abi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    const/16 v5, 0x2710

    const/4 v2, 0x1

    .line 631
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 708
    :cond_1
    :goto_0
    return v1

    .line 635
    :cond_2
    const/4 v1, 0x0

    .line 636
    .local v1, "ret":Z
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 639
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string v3, "persist.sys.appboot.allow"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 640
    goto :goto_0

    .line 644
    :cond_3
    if-eqz p2, :cond_6

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 645
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 651
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 652
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 655
    :cond_4
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 656
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret=true, info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # white intent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    :cond_5
    move v1, v2

    .line 658
    goto :goto_0

    .line 674
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_10

    .line 675
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 676
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 677
    const/4 v1, 0x1

    .line 697
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 698
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 704
    :cond_8
    :goto_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v2, :cond_9

    if-nez v1, :cond_1

    .line 705
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# canReceiverGo # ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 678
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 679
    const/4 v1, 0x0

    .line 680
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canReceiverGo # ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " # blacklist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 684
    :cond_b
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ge v3, v5, :cond_c

    .line 685
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 686
    :cond_c
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_d

    .line 687
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 688
    :cond_d
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_f

    .line 689
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lt v3, v5, :cond_e

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_7

    .line 691
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 694
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 701
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_2
.end method

.method public canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .locals 16
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "r"    # Lcom/android/server/am/ServiceRecord;
    .param p4, "callingUid"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 415
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v12, :cond_0

    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v12, :cond_2

    .line 416
    :cond_0
    const/4 v10, 0x1

    .line 555
    :cond_1
    :goto_0
    return v10

    .line 419
    :cond_2
    const/4 v9, 0x0

    .line 420
    .local v9, "pkgName":Ljava/lang/String;
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v12, :cond_3

    .line 421
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 424
    :cond_3
    if-nez v9, :cond_4

    .line 425
    const/4 v10, 0x1

    goto :goto_0

    .line 428
    :cond_4
    const/4 v10, 0x0

    .line 429
    .local v10, "ret":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 432
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string v12, "persist.sys.appboot.allow"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 433
    const/4 v10, 0x1

    goto :goto_0

    .line 437
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 441
    .local v7, "compName":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 442
    .local v5, "callerPkg":Ljava/lang/String;
    move-object v4, v9

    .line 443
    .local v4, "calleePkg":Ljava/lang/String;
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_6

    .line 444
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 446
    :cond_6
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " calling "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 447
    :cond_7
    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    .line 448
    const-string v12, "android"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 473
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1a

    .line 474
    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 475
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 476
    const/4 v10, 0x1

    .line 477
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pkgName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # white-action"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 451
    invoke-virtual {v2, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    .line 454
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v12, :cond_8

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 455
    if-eqz v7, :cond_b

    .line 456
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "clz":Ljava/lang/String;
    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 458
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_a

    .line 459
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # ret=false r "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # blackclass"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 460
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 464
    .end local v6    # "clz":Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 465
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_c

    .line 466
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # ret=false intent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # black-action"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 467
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 481
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    .line 482
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 483
    const/4 v10, 0x1

    .line 515
    :cond_e
    :goto_1
    if-eqz v10, :cond_f

    .line 516
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 523
    :cond_f
    :goto_2
    if-nez v10, :cond_11

    .line 524
    if-eqz v5, :cond_11

    sget-object v12, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    sget-object v12, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 527
    :cond_10
    const/4 v11, 0x0

    .line 529
    .local v11, "tag":Ljava/lang/String;
    if-eqz v7, :cond_1b

    .line 530
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 535
    :goto_3
    if-eqz p1, :cond_1c

    .line 536
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 541
    :goto_4
    invoke-virtual {v2, v11}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z

    move-result v10

    .line 542
    if-eqz v10, :cond_11

    .line 543
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v13, 0x2

    invoke-static {v12, v13, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 544
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const-wide/16 v14, 0x7530

    invoke-virtual {v12, v8, v14, v15}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 549
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "tag":Ljava/lang/String;
    :cond_11
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v12, :cond_12

    if-nez v10, :cond_1

    .line 550
    :cond_12
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # abi="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # mCurrentActivityPkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mLastActivityPkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_16

    .line 485
    const/4 v10, 0x0

    .line 486
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_14

    .line 487
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pkgName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # blacklist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 488
    :cond_14
    if-lez p4, :cond_15

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    if-ne v12, v13, :cond_15

    .line 489
    const/4 v10, 0x1

    .line 490
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pkgName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # blacklist # callingUid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 493
    :cond_15
    if-nez v10, :cond_e

    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    if-ne v12, v13, :cond_e

    .line 494
    const/4 v10, 0x1

    .line 495
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "# canServiceGo # ret="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pkgName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " # blacklist # proc uid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 498
    :cond_16
    if-nez v10, :cond_17

    if-lez p4, :cond_17

    .line 499
    const/16 v12, 0x2710

    move/from16 v0, p4

    if-ge v0, v12, :cond_18

    .line 500
    const/4 v10, 0x1

    .line 506
    :cond_17
    :goto_5
    if-nez v10, :cond_e

    if-eqz p1, :cond_e

    .line 507
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0x2710

    if-ge v12, v13, :cond_19

    .line 508
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 501
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v12

    move/from16 v0, p4

    if-ne v0, v12, :cond_17

    .line 502
    const/4 v10, 0x1

    goto :goto_5

    .line 509
    :cond_19
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    if-ne v12, v13, :cond_e

    .line 510
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 520
    :cond_1a
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 532
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_1b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 538
    :cond_1c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4
.end method

.method public filterAppReceivers(Landroid/content/Intent;Ljava/lang/String;IILjava/util/List;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I
    .param p5, "receivers"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 560
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v5, :cond_1

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # callerPackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",callingPid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",callingUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 566
    :cond_2
    const-string v5, "persist.sys.appboot.allow"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 571
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 572
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 573
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # white intent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_3
    const/4 v2, 0x0

    .line 579
    .local v2, "iIndex":I
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    .line 580
    .local v0, "NT":I
    :cond_4
    :goto_1
    if-ge v2, v0, :cond_0

    .line 581
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 582
    .local v4, "temp":Ljava/lang/Object;
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_5

    .line 583
    add-int/lit8 v2, v2, 0x1

    .line 585
    goto :goto_1

    :cond_5
    move-object v3, v4

    .line 587
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 588
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 590
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-eq v5, v7, :cond_d

    .line 591
    const/16 v5, 0x2710

    if-ge p4, v5, :cond_6

    .line 592
    add-int/lit8 v2, v2, 0x1

    .line 593
    goto :goto_1

    .line 596
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 597
    add-int/lit8 v2, v2, 0x1

    .line 598
    goto :goto_1

    .line 599
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 600
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # forbided blacklist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 609
    :cond_8
    if-eqz p2, :cond_9

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 610
    const-string v5, "android"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 618
    :cond_9
    :goto_2
    invoke-interface {p5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 619
    add-int/lit8 v0, v0, -0x1

    .line 620
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# filterAppReceivers # forbided "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 602
    :cond_a
    if-eqz p2, :cond_b

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 604
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 605
    goto/16 :goto_1

    .line 612
    :cond_c
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 613
    invoke-virtual {v1, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 614
    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_2

    .line 623
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public getAllAppBootModes(I)Ljava/util/List;
    .locals 8
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$AppBootMode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 917
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v4, :cond_0

    move-object v0, v3

    .line 935
    :goto_0
    return-object v0

    .line 921
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v0, "abmList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppBootMode;>;"
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v4

    .line 924
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 925
    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 928
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 929
    .local v2, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 930
    new-instance v3, Landroid/app/ActivityManager$AppBootMode;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    invoke-direct {v3, v5, v6, v7}, Landroid/app/ActivityManager$AppBootMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 934
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getAppBootMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 939
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v1, :cond_0

    .line 940
    const/4 v1, -0x1

    .line 944
    :goto_0
    return v1

    .line 943
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 944
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    goto :goto_0
.end method

.method public getAppBootState()Z
    .locals 1

    .prologue
    .line 979
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 982
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    goto :goto_0
.end method

.method getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1661
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .local v4, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_2

    .line 1664
    :cond_0
    const/4 v4, 0x0

    .line 1693
    .end local v4    # "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object v4

    .line 1667
    .restart local v4    # "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1668
    .local v6, "spt":[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v10, :cond_5

    .line 1669
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_4

    .line 1670
    aget-object v7, v6, v9

    aget-object v8, v6, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1671
    .local v3, "ret":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1672
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    .end local v3    # "ret":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1689
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1690
    .local v5, "s":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    array-length v7, v6

    if-le v7, v10, :cond_4

    .line 1675
    aget-object v7, v6, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1676
    .restart local v3    # "ret":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1677
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v2, v6, v7

    .line 1679
    .local v2, "last":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1680
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1681
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_4

    .line 1683
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ret="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1684
    :cond_8
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCalleePackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1011
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-object v0

    .line 1015
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1019
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1020
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1021
    .local v0, "pkgArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getCallerPackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 996
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-object v0

    .line 1000
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1005
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallerPackageArray # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkgSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1006
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1007
    .local v0, "pkgArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method public initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1493
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1507
    :goto_0
    return-void

    .line 1497
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 1498
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 1499
    if-eqz p2, :cond_1

    .line 1500
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerPackageReceiver()V

    .line 1501
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerGeneralReceiver()V

    .line 1504
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppBootThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 1505
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1506
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    goto :goto_0
.end method

.method public initPackages(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1472
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v3, :cond_1

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1476
    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, " initPackages # "

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1477
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1478
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, " initPackages # mPkgMap size > 0 , return"

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1482
    :cond_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1483
    .local v2, "item":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 1484
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 1485
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1488
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v2    # "item":Landroid/content/pm/PackageParser$Package;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_specialList()V

    .line 1489
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_appboot()I

    goto :goto_0
.end method

.method public readXml_appboot()I
    .locals 25

    .prologue
    .line 1793
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v22, :cond_1

    .line 1794
    const/16 v20, -0x4

    .line 1860
    :cond_0
    :goto_0
    return v20

    .line 1796
    :cond_1
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_2

    const-string v22, "# readXml_appboot"

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1797
    :cond_2
    const/16 v20, 0x0

    .line 1798
    .local v20, "ret":I
    new-instance v12, Ljava/io/File;

    const-string v22, "/data/system/appboot/appboot.xml"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1799
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_4

    .line 1800
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_3

    const-string v22, "# readXml_appboot # file not exists"

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1801
    :cond_3
    const/16 v20, -0x1

    goto :goto_0

    .line 1803
    :cond_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 1804
    .local v13, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 1805
    .local v7, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v10, 0x0

    .line 1807
    .local v10, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1808
    invoke-virtual {v7, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 1810
    const-string v22, "appboot"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1811
    .local v17, "nlab":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 1812
    .local v6, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "version"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 1813
    .local v21, "version":Ljava/lang/String;
    sput-object v21, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    .line 1814
    const-string v22, "switch"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1815
    .local v5, "appbootSwitch":Ljava/lang/String;
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " readXml_appboot # version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " switch "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1816
    :cond_5
    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    :goto_1
    sput-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1817
    const-string v22, "pkg"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1818
    .local v16, "nl":Lorg/w3c/dom/NodeList;
    if-nez v16, :cond_7

    .line 1819
    const-string v22, "OnePlusAppBootManager"

    const-string v23, "# readXml_appboot # error # nl = null"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/16 v20, -0x2

    goto/16 :goto_0

    .line 1816
    .end local v16    # "nl":Lorg/w3c/dom/NodeList;
    :cond_6
    const/16 v22, 0x1

    goto :goto_1

    .line 1822
    .restart local v16    # "nl":Lorg/w3c/dom/NodeList;
    :cond_7
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    .line 1823
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    .line 1824
    .local v18, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "package"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    .line 1825
    .local v19, "pkgName":Ljava/lang/String;
    const-string v22, "flag"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 1826
    .local v14, "flag":Ljava/lang/String;
    const-string v22, "action"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 1828
    .local v4, "actionStr":Ljava/lang/String;
    const-string v22, "caller"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 1829
    .local v9, "callerStr":Ljava/lang/String;
    const-string v22, "callee"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 1831
    .local v8, "calleeStr":Ljava/lang/String;
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "package "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # flag "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # action "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # callerStr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " # calleeStr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1835
    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1836
    .local v3, "action":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 1837
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v8}, Lcom/android/server/am/OnePlusAppBootManager;->updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_a

    .line 1839
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1840
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1851
    :cond_9
    :goto_3
    add-int/lit8 v20, v20, 0x1

    .line 1822
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1841
    :cond_a
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v3, v0, :cond_b

    .line 1842
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1843
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1854
    .end local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v3    # "action":I
    .end local v4    # "actionStr":Ljava/lang/String;
    .end local v5    # "appbootSwitch":Ljava/lang/String;
    .end local v6    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "calleeStr":Ljava/lang/String;
    .end local v9    # "callerStr":Ljava/lang/String;
    .end local v14    # "flag":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "nl":Lorg/w3c/dom/NodeList;
    .end local v17    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v18    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v21    # "version":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1855
    .local v11, "e":Ljava/lang/Exception;
    const-string v22, "OnePlusAppBootManager"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "# readXml_appboot # parse error ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1857
    const/16 v20, -0x3

    goto/16 :goto_0

    .line 1844
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v2    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .restart local v3    # "action":I
    .restart local v4    # "actionStr":Ljava/lang/String;
    .restart local v5    # "appbootSwitch":Ljava/lang/String;
    .restart local v6    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "calleeStr":Ljava/lang/String;
    .restart local v9    # "callerStr":Ljava/lang/String;
    .restart local v14    # "flag":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v16    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v17    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v18    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v19    # "pkgName":Ljava/lang/String;
    .restart local v21    # "version":Ljava/lang/String;
    :cond_b
    if-nez v3, :cond_9

    .line 1845
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1846
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_3

    .line 1848
    :cond_c
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public readXml_prelist()I
    .locals 25

    .prologue
    .line 1864
    const/16 v19, 0x0

    .line 1865
    .local v19, "ret":I
    new-instance v11, Ljava/io/File;

    const-string v21, "/system/etc/presetlist.xml"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1866
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 1867
    sget-boolean v21, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v21, :cond_0

    const-string v21, "# readXml_prelist # file not exists"

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1868
    :cond_0
    const/16 v21, -0x1

    .line 1901
    :goto_0
    return v21

    .line 1870
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 1871
    .local v12, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 1872
    .local v8, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v9, 0x0

    .line 1874
    .local v9, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 1875
    invoke-virtual {v8, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 1877
    const-string v21, "prelist"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1878
    .local v16, "nlab":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 1879
    .local v7, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string v21, "version"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 1880
    .local v20, "version":Ljava/lang/String;
    const-string v21, "switch"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 1881
    .local v6, "appbootSwitch":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v21, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " readXml_prelist # version "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " switch "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1883
    :cond_2
    const-string v21, "pkg"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1884
    .local v15, "nl":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_4

    .line 1885
    invoke-interface {v15, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    .line 1886
    .local v17, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string v21, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 1887
    .local v18, "pkgName":Ljava/lang/String;
    const-string v21, "flag"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 1888
    .local v13, "flag":Ljava/lang/String;
    const-string v21, "action"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1890
    .local v5, "action":Ljava/lang/String;
    sget-boolean v21, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v21, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "package "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " # flag "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " # action "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1892
    :cond_3
    sget-object v21, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    new-instance v22, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1894
    add-int/lit8 v19, v19, 0x1

    .line 1884
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1896
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "appbootSwitch":Ljava/lang/String;
    .end local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "flag":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v15    # "nl":Lorg/w3c/dom/NodeList;
    .end local v16    # "nlab":Lorg/w3c/dom/NodeList;
    .end local v17    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v20    # "version":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1897
    .local v10, "e":Ljava/lang/Exception;
    const-string v21, "OnePlusAppBootManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "# readXml_prelist # parse error ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    const/16 v21, -0x2

    goto/16 :goto_0

    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v6    # "appbootSwitch":Ljava/lang/String;
    .restart local v7    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v14    # "i":I
    .restart local v15    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v16    # "nlab":Lorg/w3c/dom/NodeList;
    .restart local v20    # "version":Ljava/lang/String;
    :cond_4
    move/from16 v21, v19

    .line 1901
    goto/16 :goto_0
.end method

.method public setAppBootMode(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 948
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v2, :cond_2

    .line 949
    :cond_0
    const/4 v1, 0x0

    .line 975
    :cond_1
    :goto_0
    return v1

    .line 951
    :cond_2
    const/4 v1, 0x0

    .line 952
    .local v1, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 953
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    packed-switch p2, :pswitch_data_0

    .line 962
    const/16 v1, -0xa

    .line 967
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setAppBootMode # packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 971
    :cond_3
    if-lez v1, :cond_1

    .line 972
    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    goto :goto_0

    .line 957
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 958
    const/4 v1, 0x1

    .line 959
    goto :goto_1

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAppBootState(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 986
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 993
    :goto_0
    return-void

    .line 989
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setAppBootState # on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 990
    :cond_1
    sput-boolean p1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 992
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    goto :goto_0
.end method

.method public setCurrentIME(Landroid/content/Intent;)V
    .locals 4
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 887
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 888
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# setCurrentIME # mCurrentIME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 890
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 891
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 892
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 893
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 895
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    return-void
.end method

.method public setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 898
    if-nez p1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 903
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# setCurrentWallpaperPackage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 905
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 906
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 908
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_0
.end method

.method public updateAccesibilityServiceFlag(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 1025
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 1032
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAccesibilityServiceFlag # packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1033
    :cond_2
    if-ne p2, v2, :cond_0

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    goto :goto_0
.end method

.method public updateAppStopInfo(Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "callingPid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 842
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v6, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v6, p2, :cond_2

    move v3, v4

    .line 847
    .local v3, "samePid":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 848
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v3, :cond_3

    .line 850
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # samePid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v3    # "samePid":Z
    :cond_2
    move v3, v5

    .line 846
    goto :goto_1

    .line 854
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .restart local v3    # "samePid":Z
    :cond_3
    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 855
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # wallpaper"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 859
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    .line 860
    .local v1, "action":I
    if-ne v1, v4, :cond_5

    .line 861
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 862
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 866
    :cond_5
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    .line 867
    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 868
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # blacklist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 872
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    .line 873
    .local v2, "pkgFlag":I
    and-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_7

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_7

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_8

    .line 876
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 877
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # go pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # abi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 880
    :cond_8
    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 881
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# updateAppStopInfo # ignore pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " # abi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateBootFlag(Landroid/content/pm/ResolveInfo;I)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "flag"    # I

    .prologue
    .line 759
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    const/4 v1, 0x0

    .line 764
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 765
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    .line 766
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 775
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 776
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 777
    invoke-virtual {v0, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 780
    :cond_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# updateBootFlag # abi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_3
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_4

    .line 768
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 769
    :cond_4
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    .line 770
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeXml_appboot(Ljava/util/HashMap;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1739
    .local p1, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;>;"
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "writeXml_appboot #"

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1741
    :cond_0
    const/4 v4, 0x0

    .line 1742
    .local v4, "ret":I
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 1743
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 1745
    .local v6, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1746
    const-string v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1747
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1749
    const-string v7, ""

    const-string v8, "appboot"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1750
    const-string v7, ""

    const-string v8, "version"

    sget-object v9, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1751
    const-string v8, ""

    const-string v9, "switch"

    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-eqz v7, :cond_4

    const-string v7, "1"

    :goto_0
    invoke-interface {v5, v8, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1752
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1754
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1755
    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1756
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# writeXml_appboot # abi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1757
    :cond_2
    if-eqz v0, :cond_1

    .line 1759
    :try_start_2
    const-string v7, ""

    const-string v8, "pkg"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1760
    const-string v7, ""

    const-string v8, "package"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1761
    const-string v7, ""

    const-string v8, "flag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1762
    const-string v7, ""

    const-string v8, "boot"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1763
    const-string v7, ""

    const-string v8, "action"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1764
    const-string v7, ""

    const-string v8, "caller"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSetString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1765
    const-string v7, ""

    const-string v8, "callee"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSetString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1766
    const-string v7, ""

    const-string v8, "pkg"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1767
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "abie":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeXml_appboot # Exception # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1774
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v1    # "abie":Ljava/lang/Exception;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1780
    :catch_1
    move-exception v2

    .line 1781
    .local v2, "e":Ljava/lang/Exception;
    const/16 v4, -0xb

    .line 1782
    const-string v7, "OnePlusAppBootManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "writeXml_appboot # Exception # "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1785
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1786
    :cond_3
    return v4

    .line 1751
    :cond_4
    :try_start_5
    const-string v7, "0"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1774
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1775
    :try_start_7
    const-string v7, ""

    const-string v8, "appboot"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1776
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1779
    const-string v7, "/data/system/appboot/appboot.xml"

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusAppBootManager;->WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v4

    goto :goto_2
.end method
