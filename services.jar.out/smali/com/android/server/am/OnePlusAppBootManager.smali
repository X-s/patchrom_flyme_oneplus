.class public Lcom/android/server/am/OnePlusAppBootManager;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;,
        Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;,
        Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;,
        Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.haha.action.test"

.field private static APPBOOT_CONFIG_NAME:Ljava/lang/String; = null

.field private static final APPBOOT_FILE:Ljava/lang/String; = "/data/system/appboot/appboot.xml"

.field private static APPBOOT_VERSION:Ljava/lang/String; = null

.field public static BLACKLIST_ENABLE:Z = false

.field public static DEBUG:Z = false

.field public static DEBUG_BINDER:Z = false

.field private static INSTANCE:Lcom/android/server/am/OnePlusAppBootManager; = null

.field public static IN_USING:Z = false

.field private static final MSG_DELAY_FORCE_STOP_PKG:I = 0x2

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

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

.field private mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

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

    .line 96
    new-array v0, v3, [I

    const/16 v1, 0x16

    aput v1, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 97
    sput-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 98
    sput-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 99
    sput-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    .line 108
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 111
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 112
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 113
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 114
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 116
    const-string v0, "AppBoot"

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    .line 142
    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 1834
    const-string v0, "1"

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 5
    .param p1, "pms"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    const/4 v4, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    .line 144
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    .line 1057
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

    .line 1370
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager$1;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 1424
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 1425
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 1427
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager$2;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1531
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 1532
    iput-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 225
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 226
    const-string v0, "persist.sys.appboot.using"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    .line 231
    const-string v0, "persist.sys.appboot.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    .line 232
    const-string v0, "persist.sys.appboot.blacklist"

    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    .line 233
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 234
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_prelist()I

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    .line 239
    return-void
.end method

.method private static WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "xmlStr"    # Ljava/lang/String;

    .prologue
    .line 1717
    if-nez p1, :cond_1

    .line 1718
    const/4 v6, -0x1

    .line 1753
    :cond_0
    :goto_0
    return v6

    .line 1721
    :cond_1
    const/4 v3, 0x0

    .line 1723
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1724
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1725
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1726
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1729
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1731
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1732
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

    .line 1733
    const/4 v6, -0x2

    .line 1747
    if-eqz v3, :cond_0

    .line 1748
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1749
    const/4 v3, 0x0

    goto :goto_0

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
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

    .line 1737
    .end local v0    # "ec":Ljava/io/IOException;
    :cond_3
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1738
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 1739
    .local v5, "pidbuffer":[B
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1740
    const/4 v6, 0x1

    .line 1747
    if-eqz v4, :cond_4

    .line 1748
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1749
    const/4 v3, 0x0

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1751
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 1752
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

    .line 1742
    .end local v2    # "f":Ljava/io/File;
    .end local v5    # "pidbuffer":[B
    :catch_2
    move-exception v1

    .line 1743
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

    .line 1744
    const/4 v6, -0x3

    .line 1747
    if-eqz v3, :cond_0

    .line 1748
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1749
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1751
    :catch_3
    move-exception v0

    .line 1752
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

    .line 1746
    .end local v0    # "ec":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1747
    :goto_2
    if-eqz v3, :cond_5

    .line 1748
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1749
    const/4 v3, 0x0

    .line 1753
    :cond_5
    :goto_3
    throw v6

    .line 1751
    :catch_4
    move-exception v0

    .line 1752
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

    .line 1746
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

    .line 1742
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
    .line 93
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusAppBootManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # J

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->removeAppBootInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->dumpPkgMapInfos()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusAppBootManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->forceStopPkg(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusAppBootManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->resolveAppBootConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    return-object v0
.end method

.method private dumpInfo()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "OnePlusAppBootManager"

    const-string v1, "# dump # VERSION # 16090201"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
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

    .line 244
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

    .line 245
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

    .line 248
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

    .line 249
    return-void
.end method

.method private dumpPkgMapInfos()V
    .locals 7

    .prologue
    .line 252
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v4

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 254
    const-string v3, "OnePlusAppBootManager"

    const-string v5, " # dump # mPkgMap = null"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    monitor-exit v4

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_0
    const/4 v1, 0x0

    .line 258
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

    .line 259
    .local v2, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    add-int/lit8 v1, v1, 0x1

    .line 260
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

    .line 262
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

    .line 1596
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

    .line 1598
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v5, :cond_5

    if-eqz p1, :cond_5

    .line 1600
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 1601
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-eq v5, v3, :cond_1

    .line 1623
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :goto_0
    return v2

    .line 1604
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-ne v5, v2, :cond_2

    move v2, v3

    .line 1605
    goto :goto_0

    .line 1607
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1608
    const/4 v2, 0x3

    goto :goto_0

    .line 1610
    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1611
    const/4 v2, 0x4

    goto :goto_0

    .line 1613
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1614
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, p1, v5}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 1615
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1616
    monitor-exit v3

    move v2, v4

    goto :goto_0

    .line 1617
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1618
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catch_0
    move-exception v1

    .line 1619
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

    .line 1620
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1623
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
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

    .line 269
    :cond_0
    const/4 v0, 0x0

    .line 270
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 271
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 273
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 274
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 276
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :cond_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 284
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

    .line 286
    :cond_2
    return-object v0

    .line 277
    :catch_0
    move-exception v1

    .line 278
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

    .line 279
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 281
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
    .line 218
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusAppBootManager;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    .line 221
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusAppBootManager;->INSTANCE:Lcom/android/server/am/OnePlusAppBootManager;

    return-object v0
.end method

.method private getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 417
    if-nez p1, :cond_1

    .line 418
    const-string v2, "OnePlusAppBootManager"

    const-string v3, "Fatal Exception # getPkgNameFromIntent # intent=null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v1, 0x0

    .line 428
    :cond_0
    :goto_0
    return-object v1

    .line 421
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 423
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 424
    .local v0, "compName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private isPackageInPresetWhitelist(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1061
    if-nez p1, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return v2

    .line 1065
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPresetWhiteListPackagesList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 1066
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

    .line 1067
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
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

    .line 1075
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
    .line 206
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 207
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG_BINDER:Z

    if-eqz v1, :cond_1

    .line 208
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

    .line 209
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

    .line 214
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readXml_specialList()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 2005
    const-string v9, "readXml_specialList"

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2006
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2007
    .local v1, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/etc/appbootspecial.xml"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2009
    const-string v9, "readXml_specialList # file don\'t exist!"

    invoke-static {v9}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2091
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    const/4 v4, 0x0

    .line 2016
    .local v4, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2017
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2018
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v3, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2021
    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 2022
    .local v7, "type":I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    .line 2023
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2024
    .local v6, "tag":Ljava/lang/String;
    const-string v9, "svcActB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2025
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 2026
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

    .line 2027
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 2028
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2068
    .end local v6    # "tag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    :goto_1
    if-ne v7, v11, :cond_2

    .line 2074
    if-eqz v5, :cond_14

    .line 2075
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2076
    const/4 v4, 0x0

    .line 2081
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_2
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 2082
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

    .line 2083
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

    .line 2084
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

    .line 2085
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

    .line 2086
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

    .line 2087
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

    .line 2088
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

    .line 2030
    .end local v4    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v9, "svcActW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 2031
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 2032
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

    .line 2033
    :cond_6
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 2034
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2070
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v4, v5

    .line 2071
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

    .line 2074
    if-eqz v4, :cond_7

    .line 2075
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2076
    const/4 v4, 0x0

    .line 2081
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    sget-boolean v9, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 2082
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

    .line 2083
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

    .line 2084
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

    .line 2085
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

    .line 2086
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

    .line 2087
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

    .line 2088
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

    .line 2036
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

    .line 2037
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 2038
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

    .line 2039
    :cond_9
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 2040
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 2073
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v8    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v9

    move-object v4, v5

    .line 2074
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    :goto_5
    if-eqz v4, :cond_a

    .line 2075
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 2076
    const/4 v4, 0x0

    .line 2081
    :cond_a
    :goto_6
    sget-boolean v10, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 2082
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

    .line 2083
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

    .line 2084
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

    .line 2085
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

    .line 2086
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

    .line 2087
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

    .line 2088
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

    .line 2042
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

    .line 2043
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 2044
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

    .line 2045
    :cond_d
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 2046
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2048
    .end local v8    # "value":Ljava/lang/String;
    :cond_e
    const-string v9, "brdActW"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 2049
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 2050
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

    .line 2051
    :cond_f
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 2052
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2054
    .end local v8    # "value":Ljava/lang/String;
    :cond_10
    const-string v9, "actClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 2055
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 2056
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

    .line 2057
    :cond_11
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 2058
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mActivityClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2060
    .end local v8    # "value":Ljava/lang/String;
    :cond_12
    const-string v9, "pvdClsB"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2061
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 2062
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

    .line 2063
    :cond_13
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 2064
    iget-object v9, p0, Lcom/android/server/am/OnePlusAppBootManager;->mProviderClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2078
    .end local v6    # "tag":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2079
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_14
    move-object v4, v5

    .end local v5    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .line 2078
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 2079
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 2078
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2079
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 2073
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    goto/16 :goto_5

    .line 2070
    :catch_4
    move-exception v0

    goto/16 :goto_3
.end method

.method private registerGeneralReceiver()V
    .locals 3

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1414
    const-string v1, "OnePlusAppBootManager"

    const-string v2, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :goto_0
    return-void

    .line 1417
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1418
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.haha.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1419
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerPackageReceiver()V
    .locals 3

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 1476
    const-string v1, "OnePlusAppBootManager"

    const-string v2, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :goto_0
    return-void

    .line 1479
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1480
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1481
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1484
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1485
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private removeAppBootInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 316
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 317
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

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    monitor-exit v1

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resolveAppBootConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 21
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 1653
    if-nez p1, :cond_1

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_6

    .line 1658
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 1659
    .local v11, "json":Lorg/json/JSONObject;
    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "pre_pkg_map"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1660
    sget-object v17, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    monitor-enter v17
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1661
    :try_start_1
    sget-object v16, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 1662
    const-string v16, "value"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 1663
    .local v12, "pkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_3

    .line 1664
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1665
    .local v13, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string v16, "package"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1666
    .local v14, "pkgName":Ljava/lang/String;
    const-string v16, "flag"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1667
    .local v7, "flag":Ljava/lang/String;
    const-string v16, "action"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1668
    .local v5, "action":Ljava/lang/String;
    sget-object v16, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    new-instance v18, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    sget-boolean v16, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v16, :cond_2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "resolveAppBootConfigFromJSON # "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v18, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1663
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1671
    .end local v5    # "action":Ljava/lang/String;
    .end local v7    # "flag":Ljava/lang/String;
    .end local v13    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_3
    monitor-exit v17

    .line 1657
    .end local v8    # "i":I
    .end local v12    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1671
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v16
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1675
    .end local v11    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 1676
    .local v6, "e":Lorg/json/JSONException;
    const-string v16, "OnePlusAppBootManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[OnlineConfig] JSONException:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_3
    sget-object v16, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    if-nez v16, :cond_5

    sget-object v16, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 1685
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1686
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v16

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 1687
    monitor-exit v17

    goto/16 :goto_0

    .line 1689
    :catchall_1
    move-exception v16

    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v16

    .line 1674
    :cond_6
    :try_start_4
    const-string v16, "OnePlusAppBootManager"

    const-string v17, "[OnlineConfig] AppBoot updated complete"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1677
    :catch_1
    move-exception v6

    .line 1678
    .local v6, "e":Ljava/lang/Exception;
    const-string v16, "OnePlusAppBootManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[OnlineConfig] Exception:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1689
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1691
    sget-object v16, Lcom/android/server/am/OnePlusAppBootManager;->mPrePkgMap:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;

    .line 1692
    .local v15, "ppi":Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;
    if-eqz v15, :cond_8

    iget-object v0, v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    iget v0, v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mFlag:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x4000

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 1694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 1695
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mPkgName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 1696
    .local v4, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v4, :cond_a

    .line 1697
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v16

    iget v0, v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    iget v0, v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    iget v0, v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    move/from16 v16, v0

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 1700
    :cond_9
    iget v0, v15, Lcom/android/server/am/OnePlusAppBootManager$PrePkgInfo;->mAction:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1703
    :cond_a
    monitor-exit v17

    goto :goto_4

    .end local v4    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :catchall_2
    move-exception v16

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v16
.end method

.method private schedulePersistAppBootInfo(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    const/4 v1, 0x1

    .line 1627
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1636
    :goto_0
    return-void

    .line 1630
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "schedulePersistAppBootInfo #"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1631
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1632
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "schedulePersistAppBootInfo # hasMessages # MSG_PERSIST_APPBOOT_LIST"

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1633
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->removeMessages(I)V

    .line 1635
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
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

    .line 293
    :cond_0
    const/4 v0, 0x0

    .line 294
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    check-cast v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 295
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-nez v0, :cond_2

    .line 296
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 297
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 298
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 310
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

    .line 312
    :cond_1
    return-object v0

    .line 301
    :catch_0
    move-exception v1

    .line 302
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

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 305
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 307
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
    .line 1795
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1796
    .local v1, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 1797
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

    .line 1798
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

    .line 1799
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1800
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 1802
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

    .line 1807
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "s":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/am/OnePlusAppBootManager;->getArrayListFromString(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1808
    if-eqz v1, :cond_7

    .line 1809
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

    .line 1810
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

    .line 1811
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1812
    invoke-virtual {p1, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_1

    .line 1814
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

    .line 1818
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
    .line 844
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 848
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 849
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v1

    .line 851
    .local v1, "pkgFlag":I
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_0

    .line 852
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setDependencyPackageFlag()V

    .line 853
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 854
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

    .line 353
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 394
    :cond_1
    :goto_0
    return v1

    .line 356
    :cond_2
    const/4 v1, 0x1

    .line 358
    .local v1, "ret":Z
    if-eqz p1, :cond_6

    .line 359
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 361
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 362
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

    .line 364
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    .line 365
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

    .line 369
    :cond_3
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 370
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

    .line 374
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

    .line 378
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 382
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 383
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 386
    :cond_5
    sget-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    .line 387
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    .line 390
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_6
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v2, :cond_7

    if-nez v1, :cond_1

    .line 391
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

    .line 325
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 349
    :cond_1
    :goto_0
    return v2

    .line 329
    :cond_2
    const/4 v2, 0x1

    .line 330
    .local v2, "ret":Z
    const/16 v4, 0x2710

    if-le p3, v4, :cond_3

    .line 331
    const/4 v2, 0x0

    .line 334
    :cond_3
    if-eqz v2, :cond_4

    .line 335
    if-eqz p1, :cond_4

    .line 336
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 338
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 339
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 340
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 345
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_4
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 346
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

    .line 807
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 840
    :cond_1
    :goto_0
    return v3

    .line 811
    :cond_2
    const/4 v3, 0x1

    .line 812
    .local v3, "ret":Z
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 813
    .local v2, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 815
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-ne v5, v4, :cond_7

    .line 816
    const/4 v3, 0x1

    .line 823
    :cond_3
    :goto_1
    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 824
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 828
    :cond_4
    const-string v5, "persist.sys.appboot.allow"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 829
    .local v1, "allow":I
    if-ne v1, v4, :cond_a

    .line 830
    const/4 v3, 0x1

    .line 831
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

    .line 837
    :cond_5
    :goto_2
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v4, :cond_6

    if-nez v3, :cond_1

    .line 838
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

    .line 817
    .end local v1    # "allow":I
    :cond_7
    if-eqz p2, :cond_8

    const-string v5, "activity"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 818
    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    .line 819
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_3

    .line 820
    const/4 v3, 0x0

    goto :goto_1

    .line 832
    .restart local v1    # "allow":I
    :cond_a
    if-ne v1, v7, :cond_5

    .line 833
    const/4 v3, 0x0

    .line 834
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

    .line 730
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_1

    .line 754
    :cond_0
    :goto_0
    return v2

    .line 733
    :cond_1
    const/4 v1, 0x1

    .line 734
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    .line 735
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 737
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

    .line 741
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

    .line 743
    const/4 v2, 0x0

    goto :goto_0

    .line 746
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 747
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 750
    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 751
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

    .line 649
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 726
    :cond_1
    :goto_0
    return v1

    .line 653
    :cond_2
    const/4 v1, 0x0

    .line 654
    .local v1, "ret":Z
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 657
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string v3, "persist.sys.appboot.allow"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v1, v2

    .line 658
    goto :goto_0

    .line 662
    :cond_3
    if-eqz p2, :cond_6

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 663
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 669
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 670
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 673
    :cond_4
    const-wide/16 v4, 0x2710

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    .line 674
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

    .line 676
    goto :goto_0

    .line 692
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v3

    if-eq v3, v2, :cond_10

    .line 693
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 694
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 695
    const/4 v1, 0x1

    .line 715
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 716
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 722
    :cond_8
    :goto_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v2, :cond_9

    if-nez v1, :cond_1

    .line 723
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

    .line 696
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 697
    const/4 v1, 0x0

    .line 698
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

    .line 702
    :cond_b
    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-ge v3, v5, :cond_c

    .line 703
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 704
    :cond_c
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_d

    .line 705
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 706
    :cond_d
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_f

    .line 707
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lt v3, v5, :cond_e

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_7

    .line 709
    :cond_e
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 712
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 719
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
    .line 433
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v12, :cond_0

    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v12, :cond_2

    .line 434
    :cond_0
    const/4 v10, 0x1

    .line 573
    :cond_1
    :goto_0
    return v10

    .line 437
    :cond_2
    const/4 v9, 0x0

    .line 438
    .local v9, "pkgName":Ljava/lang/String;
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v12, :cond_3

    .line 439
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 442
    :cond_3
    if-nez v9, :cond_4

    .line 443
    const/4 v10, 0x1

    goto :goto_0

    .line 446
    :cond_4
    const/4 v10, 0x0

    .line 447
    .local v10, "ret":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 450
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    const-string v12, "persist.sys.appboot.allow"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 451
    const/4 v10, 0x1

    goto :goto_0

    .line 455
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    .line 459
    .local v7, "compName":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 460
    .local v5, "callerPkg":Ljava/lang/String;
    move-object v4, v9

    .line 461
    .local v4, "calleePkg":Ljava/lang/String;
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_6

    .line 462
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 464
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

    .line 465
    :cond_7
    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    .line 466
    const-string v12, "android"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 491
    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_1a

    .line 492
    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 493
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 494
    const/4 v10, 0x1

    .line 495
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

    .line 468
    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 469
    invoke-virtual {v2, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    .line 472
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->BLACKLIST_ENABLE:Z

    if-eqz v12, :cond_8

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBlackListEnableFlag()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 473
    if-eqz v7, :cond_b

    .line 474
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, "clz":Ljava/lang/String;
    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceClassBlackList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 476
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_a

    .line 477
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

    .line 478
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 482
    .end local v6    # "clz":Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mServiceActionBlackList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 483
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_c

    .line 484
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

    .line 485
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 499
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_13

    .line 500
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 501
    const/4 v10, 0x1

    .line 533
    :cond_e
    :goto_1
    if-eqz v10, :cond_f

    .line 534
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 541
    :cond_f
    :goto_2
    if-nez v10, :cond_11

    .line 542
    if-eqz v5, :cond_11

    sget-object v12, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentActivityPkg:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    sget-object v12, Lcom/android/server/am/OnePlusAppBootManager;->mLastActivityPkg:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 545
    :cond_10
    const/4 v11, 0x0

    .line 547
    .local v11, "tag":Ljava/lang/String;
    if-eqz v7, :cond_1b

    .line 548
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

    .line 553
    :goto_3
    if-eqz p1, :cond_1c

    .line 554
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

    .line 559
    :goto_4
    invoke-virtual {v2, v11}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->updateLastCallingServiceBootPolicy(Ljava/lang/String;)Z

    move-result v10

    .line 560
    if-eqz v10, :cond_11

    .line 561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v13, 0x2

    invoke-static {v12, v13, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 562
    .local v8, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const-wide/16 v14, 0x7530

    invoke-virtual {v12, v8, v14, v15}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 567
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "tag":Ljava/lang/String;
    :cond_11
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-nez v12, :cond_12

    if-nez v10, :cond_1

    .line 568
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

    .line 502
    :cond_13
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_16

    .line 503
    const/4 v10, 0x0

    .line 504
    sget-boolean v12, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v12, :cond_14

    .line 505
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

    .line 506
    :cond_14
    if-lez p4, :cond_15

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    if-ne v12, v13, :cond_15

    .line 507
    const/4 v10, 0x1

    .line 508
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

    .line 511
    :cond_15
    if-nez v10, :cond_e

    if-eqz p1, :cond_e

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    if-ne v12, v13, :cond_e

    .line 512
    const/4 v10, 0x1

    .line 513
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

    .line 516
    :cond_16
    if-nez v10, :cond_17

    if-lez p4, :cond_17

    .line 517
    const/16 v12, 0x2710

    move/from16 v0, p4

    if-ge v0, v12, :cond_18

    .line 518
    const/4 v10, 0x1

    .line 524
    :cond_17
    :goto_5
    if-nez v10, :cond_e

    if-eqz p1, :cond_e

    .line 525
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0x2710

    if-ge v12, v13, :cond_19

    .line 526
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 519
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v12

    move/from16 v0, p4

    if-ne v0, v12, :cond_17

    .line 520
    const/4 v10, 0x1

    goto :goto_5

    .line 527
    :cond_19
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getUid()I

    move-result v13

    if-ne v12, v13, :cond_e

    .line 528
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 538
    :cond_1a
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 550
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

    .line 556
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

    .line 578
    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v5, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 581
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

    .line 584
    :cond_2
    const-string v5, "persist.sys.appboot.allow"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_0

    .line 589
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 590
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mBroadcastIntentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 591
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

    .line 596
    :cond_3
    const/4 v2, 0x0

    .line 597
    .local v2, "iIndex":I
    if-eqz p5, :cond_4

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    .line 598
    .local v0, "NT":I
    :cond_4
    :goto_1
    if-ge v2, v0, :cond_0

    .line 599
    invoke-interface {p5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 600
    .local v4, "temp":Ljava/lang/Object;
    instance-of v5, v4, Landroid/content/pm/ResolveInfo;

    if-nez v5, :cond_5

    .line 601
    add-int/lit8 v2, v2, 0x1

    .line 603
    goto :goto_1

    :cond_5
    move-object v3, v4

    .line 605
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 606
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v1

    .line 608
    .local v1, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v5

    if-eq v5, v7, :cond_d

    .line 609
    const/16 v5, 0x2710

    if-ge p4, v5, :cond_6

    .line 610
    add-int/lit8 v2, v2, 0x1

    .line 611
    goto :goto_1

    .line 614
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_7

    .line 615
    add-int/lit8 v2, v2, 0x1

    .line 616
    goto :goto_1

    .line 617
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 618
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

    .line 627
    :cond_8
    if-eqz p2, :cond_9

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_9

    .line 628
    const-string v5, "android"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 636
    :cond_9
    :goto_2
    invoke-interface {p5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 637
    add-int/lit8 v0, v0, -0x1

    .line 638
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

    .line 620
    :cond_a
    if-eqz p2, :cond_b

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 622
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 623
    goto/16 :goto_1

    .line 630
    :cond_c
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 631
    invoke-virtual {v1, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCallerPackage(Ljava/lang/String;)V

    .line 632
    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v5

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->addCalleePackage(Ljava/lang/String;)V

    goto :goto_2

    .line 641
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

    .line 935
    sget-boolean v4, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v4, :cond_0

    move-object v0, v3

    .line 953
    :goto_0
    return-object v0

    .line 939
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v0, "abmList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppBootMode;>;"
    iget-object v4, p0, Lcom/android/server/am/OnePlusAppBootManager;->mABILock:Ljava/lang/Object;

    monitor-enter v4

    .line 942
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 943
    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 946
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

    .line 947
    .local v2, "item":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    .line 948
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

    .line 952
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
    .line 957
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v1, :cond_0

    .line 958
    const/4 v1, -0x1

    .line 962
    :goto_0
    return v1

    .line 961
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 962
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    goto :goto_0
.end method

.method public getAppBootState()Z
    .locals 1

    .prologue
    .line 997
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1000
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

    .line 1759
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1761
    .local v4, "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_2

    .line 1762
    :cond_0
    const/4 v4, 0x0

    .line 1791
    .end local v4    # "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return-object v4

    .line 1765
    .restart local v4    # "retArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1766
    .local v6, "spt":[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v10, :cond_5

    .line 1767
    aget-object v7, v6, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_4

    .line 1768
    aget-object v7, v6, v9

    aget-object v8, v6, v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1769
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

    .line 1770
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    .end local v3    # "ret":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 1787
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

    .line 1788
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

    .line 1772
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    :cond_5
    array-length v7, v6

    if-le v7, v10, :cond_4

    .line 1773
    aget-object v7, v6, v9

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1774
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

    .line 1775
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    aget-object v2, v6, v7

    .line 1777
    .local v2, "last":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1778
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

    .line 1779
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    if-ge v0, v7, :cond_4

    .line 1781
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

    .line 1782
    :cond_8
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCalleePackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1029
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-object v0

    .line 1033
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1037
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1038
    .local v1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1039
    .local v0, "pkgArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getCallerPackageArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1014
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-object v0

    .line 1018
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 1022
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSet()Ljava/util/HashSet;

    move-result-object v1

    .line 1023
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

    .line 1024
    :cond_2
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1025
    .local v0, "pkgArray":[Ljava/lang/String;
    goto :goto_0
.end method

.method public initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 2
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1513
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1528
    :goto_0
    return-void

    .line 1517
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 1518
    iput-object p2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    .line 1519
    if-eqz p2, :cond_1

    .line 1520
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerPackageReceiver()V

    .line 1521
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->registerGeneralReceiver()V

    .line 1524
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppBootThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    .line 1525
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1526
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    .line 1527
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->initOnlineConfig()V

    goto :goto_0
.end method

.method public initOnlineConfig()V
    .locals 5

    .prologue
    .line 1647
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    new-instance v3, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;-><init>(Lcom/android/server/am/OnePlusAppBootManager;)V

    sget-object v4, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 1648
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 1649
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAppbootHandler:Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->sendMessage(Landroid/os/Message;)Z

    .line 1650
    return-void
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
    .line 1492
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v3, :cond_1

    .line 1510
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, " initPackages # "

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1497
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1498
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, " initPackages # mPkgMap size > 0 , return"

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1502
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

    .line 1503
    .local v2, "item":Landroid/content/pm/PackageParser$Package;
    new-instance v0, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;-><init>(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 1504
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setPPPackage(Landroid/content/pm/PackageParser$Package;)V

    .line 1505
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1508
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .end local v2    # "item":Landroid/content/pm/PackageParser$Package;
    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_specialList()V

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusAppBootManager;->readXml_appboot()I

    goto :goto_0
.end method

.method public readXml_appboot()I
    .locals 25

    .prologue
    .line 1891
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v22, :cond_1

    .line 1892
    const/16 v20, -0x4

    .line 1958
    :cond_0
    :goto_0
    return v20

    .line 1894
    :cond_1
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_2

    const-string v22, "# readXml_appboot"

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1895
    :cond_2
    const/16 v20, 0x0

    .line 1896
    .local v20, "ret":I
    new-instance v12, Ljava/io/File;

    const-string v22, "/data/system/appboot/appboot.xml"

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1897
    .local v12, "f":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v22

    if-nez v22, :cond_4

    .line 1898
    sget-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v22, :cond_3

    const-string v22, "# readXml_appboot # file not exists"

    invoke-static/range {v22 .. v22}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1899
    :cond_3
    const/16 v20, -0x1

    goto :goto_0

    .line 1901
    :cond_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 1902
    .local v13, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 1903
    .local v7, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v10, 0x0

    .line 1905
    .local v10, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1906
    invoke-virtual {v7, v12}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v10

    .line 1908
    const-string v22, "appboot"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1909
    .local v17, "nlab":Lorg/w3c/dom/NodeList;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 1910
    .local v6, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "version"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 1911
    .local v21, "version":Ljava/lang/String;
    sput-object v21, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    .line 1912
    const-string v22, "switch"

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1913
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

    .line 1914
    :cond_5
    const-string v22, "0"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    const/16 v22, 0x0

    :goto_1
    sput-boolean v22, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1915
    const-string v22, "pkg"

    move-object/from16 v0, v22

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1916
    .local v16, "nl":Lorg/w3c/dom/NodeList;
    if-nez v16, :cond_7

    .line 1917
    const-string v22, "OnePlusAppBootManager"

    const-string v23, "# readXml_appboot # error # nl = null"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    const/16 v20, -0x2

    goto/16 :goto_0

    .line 1914
    .end local v16    # "nl":Lorg/w3c/dom/NodeList;
    :cond_6
    const/16 v22, 0x1

    goto :goto_1

    .line 1920
    .restart local v16    # "nl":Lorg/w3c/dom/NodeList;
    :cond_7
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v15, v0, :cond_0

    .line 1921
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    .line 1922
    .local v18, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string v22, "package"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    .line 1923
    .local v19, "pkgName":Ljava/lang/String;
    const-string v22, "flag"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 1924
    .local v14, "flag":Ljava/lang/String;
    const-string v22, "action"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    .line 1926
    .local v4, "actionStr":Ljava/lang/String;
    const-string v22, "caller"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 1927
    .local v9, "callerStr":Ljava/lang/String;
    const-string v22, "callee"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 1929
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

    .line 1933
    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1934
    .local v3, "action":I
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v2

    .line 1935
    .local v2, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v8}, Lcom/android/server/am/OnePlusAppBootManager;->updateLinkedPkgsInfo(Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_a

    .line 1937
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1938
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 1949
    :cond_9
    :goto_3
    add-int/lit8 v20, v20, 0x1

    .line 1920
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 1939
    :cond_a
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v3, v0, :cond_b

    .line 1940
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 1941
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1952
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

    .line 1953
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

    .line 1954
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1955
    const/16 v20, -0x3

    goto/16 :goto_0

    .line 1942
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

    .line 1943
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1944
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    goto :goto_3

    .line 1946
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
    .line 1962
    const/16 v19, 0x0

    .line 1963
    .local v19, "ret":I
    new-instance v11, Ljava/io/File;

    const-string v21, "/system/etc/presetlist.xml"

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1964
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_1

    .line 1965
    sget-boolean v21, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v21, :cond_0

    const-string v21, "# readXml_prelist # file not exists"

    invoke-static/range {v21 .. v21}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1966
    :cond_0
    const/16 v21, -0x1

    .line 1999
    :goto_0
    return v21

    .line 1968
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    .line 1969
    .local v12, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 1970
    .local v8, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v9, 0x0

    .line 1972
    .local v9, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    .line 1973
    invoke-virtual {v8, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 1975
    const-string v21, "prelist"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1976
    .local v16, "nlab":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 1977
    .local v7, "attr":Lorg/w3c/dom/NamedNodeMap;
    const-string v21, "version"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 1978
    .local v20, "version":Ljava/lang/String;
    const-string v21, "switch"

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 1979
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

    .line 1981
    :cond_2
    const-string v21, "pkg"

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1982
    .local v15, "nl":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_4

    .line 1983
    invoke-interface {v15, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    .line 1984
    .local v17, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string v21, "package"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 1985
    .local v18, "pkgName":Ljava/lang/String;
    const-string v21, "flag"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 1986
    .local v13, "flag":Ljava/lang/String;
    const-string v21, "action"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 1988
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

    .line 1990
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

    .line 1992
    add-int/lit8 v19, v19, 0x1

    .line 1982
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1994
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

    .line 1995
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

    .line 1996
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

    .line 1999
    goto/16 :goto_0
.end method

.method public setAppBootMode(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 966
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v2, :cond_2

    .line 967
    :cond_0
    const/4 v1, 0x0

    .line 993
    :cond_1
    :goto_0
    return v1

    .line 969
    :cond_2
    const/4 v1, 0x0

    .line 970
    .local v1, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 971
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    packed-switch p2, :pswitch_data_0

    .line 980
    const/16 v1, -0xa

    .line 985
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 986
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

    .line 989
    :cond_3
    if-lez v1, :cond_1

    .line 990
    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    goto :goto_0

    .line 975
    :pswitch_0
    invoke-virtual {v0, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 976
    const/4 v1, 0x1

    .line 977
    goto :goto_1

    .line 971
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
    .line 1004
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v0, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 1007
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

    .line 1008
    :cond_1
    sput-boolean p1, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    .line 1010
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->schedulePersistAppBootInfo(J)V

    goto :goto_0
.end method

.method public setCurrentIME(Landroid/content/Intent;)V
    .locals 4
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 905
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getPkgNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    .line 906
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

    .line 908
    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 909
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentIME:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 910
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setAction(I)V

    .line 911
    invoke-virtual {v0, v3}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 913
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_1
    return-void
.end method

.method public setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 916
    if-nez p1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    .line 921
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

    .line 923
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 924
    sget-object v1, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 926
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

    .line 1043
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-nez v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 1050
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

    .line 1051
    :cond_2
    if-ne p2, v2, :cond_0

    .line 1052
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

    .line 860
    sget-boolean v6, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v6, :cond_1

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/OnePlusAppBootManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v6, p2, :cond_2

    move v3, v4

    .line 865
    .local v3, "samePid":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 866
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    if-eqz v3, :cond_3

    .line 868
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

    .line 864
    goto :goto_1

    .line 872
    .restart local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    .restart local v3    # "samePid":Z
    :cond_3
    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/am/OnePlusAppBootManager;->mCurrentWallPaperPkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 873
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

    .line 877
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getAction()I

    move-result v1

    .line 878
    .local v1, "action":I
    if-ne v1, v4, :cond_5

    .line 879
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 880
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

    .line 884
    :cond_5
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    .line 885
    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 886
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

    .line 890
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgFlag()I

    move-result v2

    .line 891
    .local v2, "pkgFlag":I
    and-int/lit8 v6, v2, 0x8

    if-nez v6, :cond_7

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_7

    and-int/lit8 v6, v2, 0x20

    if-eqz v6, :cond_8

    .line 894
    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 895
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

    .line 898
    :cond_8
    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 899
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
    .line 777
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-nez v2, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    const/4 v1, 0x0

    .line 782
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 783
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    .line 784
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 793
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->getAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    move-result-object v0

    .line 794
    .local v0, "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getBootFlag()I

    move-result v2

    if-eq v2, p2, :cond_2

    .line 795
    invoke-virtual {v0, p2}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->setBootFlag(I)V

    .line 798
    :cond_2
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 799
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

    .line 785
    .end local v0    # "abi":Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    :cond_3
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_4

    .line 786
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 787
    :cond_4
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v2, :cond_0

    .line 788
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
    .line 1837
    .local p1, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;>;"
    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "writeXml_appboot #"

    invoke-static {v7}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 1839
    :cond_0
    const/4 v4, 0x0

    .line 1840
    .local v4, "ret":I
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 1841
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 1843
    .local v6, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1844
    const-string v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1845
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1847
    const-string v7, ""

    const-string v8, "appboot"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1848
    const-string v7, ""

    const-string v8, "version"

    sget-object v9, Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_VERSION:Ljava/lang/String;

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1849
    const-string v8, ""

    const-string v9, "switch"

    sget-boolean v7, Lcom/android/server/am/OnePlusAppBootManager;->mAppBootSwitch:Z

    if-eqz v7, :cond_4

    const-string v7, "1"

    :goto_0
    invoke-interface {v5, v8, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1850
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1852
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1853
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

    .line 1854
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

    .line 1855
    :cond_2
    if-eqz v0, :cond_1

    .line 1857
    :try_start_2
    const-string v7, ""

    const-string v8, "pkg"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1858
    const-string v7, ""

    const-string v8, "package"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getPkgName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1859
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

    .line 1860
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

    .line 1861
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

    .line 1862
    const-string v7, ""

    const-string v8, "caller"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCallerPackageSetString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1863
    const-string v7, ""

    const-string v8, "callee"

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;->getCalleePackageSetString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1864
    const-string v7, ""

    const-string v8, "pkg"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1865
    const-string v7, "\n"

    invoke-interface {v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1866
    :catch_0
    move-exception v1

    .line 1867
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

    .line 1868
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1872
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

    .line 1878
    :catch_1
    move-exception v2

    .line 1879
    .local v2, "e":Ljava/lang/Exception;
    const/16 v4, -0xb

    .line 1880
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

    .line 1881
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1883
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

    .line 1884
    :cond_3
    return v4

    .line 1849
    :cond_4
    :try_start_5
    const-string v7, "0"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1872
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1873
    :try_start_7
    const-string v7, ""

    const-string v8, "appboot"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1874
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1877
    const-string v7, "/data/system/appboot/appboot.xml"

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusAppBootManager;->WriteStringToFile(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result v4

    goto :goto_2
.end method
