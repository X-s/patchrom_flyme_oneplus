.class public Lcom/android/server/pm/OemCompatibilityHelper;
.super Ljava/lang/Object;
.source "OemCompatibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;
    }
.end annotation


# static fields
.field private static final ABI_TO_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ABI_TO_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPAT_CONFIG_LIST_NAME:Ljava/lang/String; = "CompatConfigList"

.field private static final DATA_FILE_DIR:Ljava/lang/String; = "/data/system/oneplus_cpt_list.xml"

.field private static final DEBUG:Z

.field private static final FILTER_NAME:Ljava/lang/String; = "compatibility_config_values"

.field public static final FORCE_CHECK_OP_SDK:I = 0x46

.field public static final FORCE_CHOOSE_ANDROID_WEBVIEW:I = 0x1

.field public static final FORCE_CHOOSING_TARGETSDK:I = 0x47

.field public static final FORCE_DEX2OAT_ROLLBACK:I = 0x5f

.field public static final FORCE_DISABLE_HARDWAREACCELERATE_FOR_ACTIVITIES:I = 0x4e

.field public static final FORCE_DISABLE_HARDWAREACCELERATE_QCOM:I = 0x55

.field public static final FORCE_ENABLE_DEBUGGER:I = 0x6b

.field public static final FORCE_ENABLE_HARDWAREACCELERATE:I = 0x6f

.field public static final FORCE_ENABLE_HARDWAREACCELERATE_FOR_ACTIVITIES:I = 0x68

.field public static final FORCE_IN_SAFEMODE_DEX:I = 0xd3

.field public static final FORCE_MINI_TRIMMEMORY:I = 0x14b

.field public static final FORCE_RUNNING_IN_32_BIT_V5:I = 0x1bd

.field public static final FORCE_RUNNING_IN_32_BIT_V7:I = 0x1bb

.field public static final FORCE_RUNNING_IN_64_BIT:I = 0x1bc

.field public static final NOT_ALLOEED_INSTALL_PACKAGE:I = 0x0

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "/system/etc/oneplus_cpt_list.xml"

.field private static final TAG:Ljava/lang/String; = "OemCompatibilityHelper"

.field private static mContext:Landroid/content/Context;

.field private static mTotalCount:I

.field private static sConfigLock:Ljava/lang/Object;


# instance fields
.field private mCompatConfigList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/OemCompatibilityHelper;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->resolveCompatConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/OemCompatibilityHelper;->DEBUG:Z

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    .line 89
    sput v3, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    sput-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    .line 94
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "armeabi"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "armeabi-v7a"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    const-string/jumbo v1, "arm64-v8a"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    sput-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    .line 102
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "armeabi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "armeabi-v7a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "arm64-v8a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    .line 168
    sput-object p1, Lcom/android/server/pm/OemCompatibilityHelper;->mContext:Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Lcom/android/server/pm/OemCompatibilityHelper;->parseContentFromXML()V

    .line 170
    sget-boolean v0, Lcom/android/server/pm/OemCompatibilityHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemCompatibilityHelper"

    invoke-virtual {p0}, Lcom/android/server/pm/OemCompatibilityHelper;->dumpToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method private changeActivitiesHW(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 546
    if-eqz p2, :cond_0

    .line 547
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v2, v2, 0x200

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 545
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 549
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, -0x201

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_1

    .line 544
    :cond_1
    return-void
.end method

.method private changeActivityHW(Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 4
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    const-string/jumbo v0, ""

    .line 559
    .local v0, "cmp":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    if-eqz p3, :cond_1

    const/16 v2, 0x68

    .line 561
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    if-eqz p3, :cond_2

    .line 566
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 559
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 563
    :cond_1
    const/16 v2, 0x4e

    goto :goto_1

    .line 568
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, -0x201

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_2

    .line 557
    :cond_3
    return-void
.end method

.method private char2int([C)I
    .locals 2
    .param p1, "in"    # [C

    .prologue
    const/4 v1, 0x0

    .line 321
    aget-char v1, p1, v1

    add-int/lit8 v1, v1, -0x61

    mul-int/lit8 v1, v1, 0x1a

    add-int/lit8 v0, v1, 0x0

    .line 322
    .local v0, "out":I
    const/4 v1, 0x1

    aget-char v1, p1, v1

    add-int/lit8 v1, v1, -0x61

    add-int/2addr v0, v1

    .line 323
    return v0
.end method

.method private customizeHardwareAccelerateForActivityIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 520
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 519
    const/16 v1, 0x68

    .line 518
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/OemCompatibilityHelper;->changeActivityHW(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 523
    const/16 v1, 0x4e

    .line 522
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/OemCompatibilityHelper;->changeActivityHW(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private customizeHardwareAccelerateIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 506
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x6f

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 514
    :goto_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    iget-boolean v1, p1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->changeActivitiesHW(Ljava/util/ArrayList;Z)V

    .line 505
    return-void

    .line 509
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x55

    .line 508
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    goto :goto_0

    .line 512
    :cond_1
    return-void
.end method

.method private customizePrivateFlagsIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 412
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x14b

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 416
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 420
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x5f

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 411
    :cond_2
    return-void
.end method

.method private customizeTargetSdkIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 536
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0x47

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v1, 0x16

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 535
    :cond_0
    return-void
.end method

.method private customizeVMSafeModeIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 530
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v1, 0xd3

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 529
    :cond_0
    return-void
.end method

.method private int2string(I)Ljava/lang/String;
    .locals 3
    .param p1, "in"    # I

    .prologue
    .line 328
    const/4 v1, 0x2

    new-array v0, v1, [C

    .line 329
    .local v0, "out":[C
    div-int/lit8 v1, p1, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    const/4 v2, 0x0

    aput-char v1, v0, v2

    .line 330
    rem-int/lit8 v1, p1, 0x1a

    add-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 331
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isBaiduProtectedApk(JLjava/lang/String;)Z
    .locals 5
    .param p1, "length"    # J
    .param p3, "abiString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, "index":I
    if-eqz p3, :cond_0

    .line 432
    sget-object v1, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 434
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 451
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 436
    :pswitch_0
    const-wide/32 v2, 0x94f50

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 437
    return v4

    .line 441
    :pswitch_1
    const-wide/32 v2, 0x599e4

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 442
    return v4

    .line 446
    :pswitch_2
    const-wide/32 v2, 0x639dc

    cmp-long v1, p1, v2

    if-eqz v1, :cond_2

    const-wide/32 v2, 0x649dc

    cmp-long v1, p1, v2

    if-nez v1, :cond_3

    .line 447
    :cond_2
    :goto_0
    return v4

    .line 446
    :cond_3
    const-wide/32 v2, 0x659dc

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseContentFromXML()V
    .locals 20

    .prologue
    .line 174
    const/4 v7, 0x0

    .line 175
    .local v7, "issystem":Z
    new-instance v6, Ljava/io/File;

    const-string/jumbo v15, "/data/system/oneplus_cpt_list.xml"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 177
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    const-string/jumbo v15, "/system/etc/oneplus_cpt_list.xml"

    invoke-direct {v6, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    return-void

    .line 179
    :cond_0
    const/4 v7, 0x1

    .line 182
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/pm/OemCompatibilityHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "content":Ljava/lang/String;
    if-nez v2, :cond_2

    return-void

    .line 184
    :cond_2
    sget-object v16, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v16

    .line 185
    const/4 v14, 0x0

    .line 186
    .local v14, "xmlReader":Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 187
    .local v9, "strReader":Ljava/io/StringReader;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 190
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 191
    .end local v9    # "strReader":Ljava/io/StringReader;
    .local v10, "strReader":Ljava/io/StringReader;
    :try_start_2
    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 192
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 193
    .local v5, "eventType":I
    :goto_0
    const/4 v15, 0x1

    if-eq v5, v15, :cond_7

    .line 194
    packed-switch v5, :pswitch_data_0

    .line 216
    :cond_3
    :goto_1
    :pswitch_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .line 199
    .local v13, "typeChar":[C
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 200
    array-length v15, v13

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    .line 201
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/pm/OemCompatibilityHelper;->char2int([C)I

    move-result v12

    .line 202
    .local v12, "type":I
    if-ltz v12, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 204
    .local v11, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v11, :cond_5

    .line 205
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .restart local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v15, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    :goto_2
    sget v15, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    add-int/lit8 v15, v15, 0x1

    sput v15, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 218
    .end local v5    # "eventType":I
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "type":I
    .end local v13    # "typeChar":[C
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v9, v10

    .line 219
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strReader":Ljava/io/StringReader;
    :goto_3
    :try_start_3
    const-string/jumbo v15, "OemCompatibilityHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Got execption parsing permissions. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 226
    if-eqz v9, :cond_4

    .line 227
    :try_start_4
    invoke-virtual {v9}, Ljava/io/StringReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_4
    monitor-exit v16

    .line 220
    return-void

    .line 209
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "eventType":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "strReader":Ljava/io/StringReader;
    .restart local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "type":I
    .restart local v13    # "typeChar":[C
    :cond_5
    :try_start_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 221
    .end local v5    # "eventType":I
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "type":I
    .end local v13    # "typeChar":[C
    :catchall_0
    move-exception v15

    move-object v9, v10

    .line 226
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strReader":Ljava/io/StringReader;
    :goto_5
    if-eqz v9, :cond_6

    .line 227
    :try_start_6
    invoke-virtual {v9}, Ljava/io/StringReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    :cond_6
    :goto_6
    :try_start_7
    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 184
    :catchall_1
    move-exception v15

    :goto_7
    monitor-exit v16

    throw v15

    .line 226
    .restart local v5    # "eventType":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "strReader":Ljava/io/StringReader;
    :cond_7
    if-eqz v10, :cond_8

    .line 227
    :try_start_8
    invoke-virtual {v10}, Ljava/io/StringReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_8
    :goto_8
    monitor-exit v16

    .line 235
    if-eqz v7, :cond_9

    .line 236
    sget-object v16, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v16

    .line 237
    :try_start_9
    const-string/jumbo v15, "/data/system/oneplus_cpt_list.xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/OemCompatibilityHelper;->writeCompatConfigListXml(Ljava/lang/String;Landroid/util/SparseArray;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit v16

    .line 173
    :cond_9
    return-void

    .line 229
    :catch_1
    move-exception v3

    .line 230
    .local v3, "e":Ljava/io/IOException;
    :try_start_a
    const-string/jumbo v15, "OemCompatibilityHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Got execption close permReader. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    .line 184
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v15

    move-object v9, v10

    .end local v10    # "strReader":Ljava/io/StringReader;
    .local v9, "strReader":Ljava/io/StringReader;
    goto :goto_7

    .line 229
    .end local v5    # "eventType":I
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "strReader":Ljava/io/StringReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 230
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v15, "OemCompatibilityHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Got execption close permReader. "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 229
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 230
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "OemCompatibilityHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Got execption close permReader. "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_6

    .line 236
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "eventType":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "strReader":Ljava/io/StringReader;
    :catchall_3
    move-exception v15

    monitor-exit v16

    throw v15

    .line 221
    .end local v5    # "eventType":I
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "strReader":Ljava/io/StringReader;
    :catchall_4
    move-exception v15

    goto/16 :goto_5

    .line 218
    .local v9, "strReader":Ljava/io/StringReader;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 294
    if-nez p1, :cond_0

    const-string/jumbo v7, ""

    return-object v7

    .line 295
    :cond_0
    const/4 v4, 0x0

    .line 297
    .local v4, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 299
    .local v3, "in":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v6, ""

    .line 301
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 302
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 305
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .line 306
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 316
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return-object v8

    .line 304
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 311
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 304
    :cond_3
    :goto_3
    return-object v7

    .line 312
    :catch_1
    move-exception v2

    .line 313
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 307
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 308
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    if-eqz v4, :cond_1

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 312
    :catch_3
    move-exception v2

    .line 313
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 312
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 313
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 309
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 311
    :goto_5
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 309
    :cond_4
    :goto_6
    throw v7

    .line 312
    :catch_5
    move-exception v2

    .line 313
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 309
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto :goto_5

    .line 305
    .local v4, "is":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 307
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private resolveCompatConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 17
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    return-void

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 121
    .local v1, "changed":Z
    const/4 v3, 0x0

    .line 122
    .local v3, "count":I
    :try_start_0
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 124
    .local v12, "tmpConfigList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_7

    .line 125
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 126
    .local v7, "json":Lorg/json/JSONObject;
    const-string/jumbo v14, "name"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "compatibility_config_values"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 127
    const-string/jumbo v14, "value"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 129
    .local v2, "configListJsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v5, v14, :cond_6

    .line 130
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 131
    .local v10, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v14, "type"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, "type":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1

    .line 129
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v13}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/pm/OemCompatibilityHelper;->char2int([C)I

    move-result v8

    .line 134
    .local v8, "ntype":I
    const-string/jumbo v14, "pkg"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, "pkg":Ljava/lang/String;
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 136
    .local v11, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v11, :cond_3

    .line 137
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .restart local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v12, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :goto_3
    if-nez v1, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 146
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    :cond_3
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 162
    .end local v1    # "changed":Z
    .end local v2    # "configListJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "index":I
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "ntype":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "tmpConfigList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 163
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "OemCompatibilityHelper"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "resolveCompatConfigFromJSON, error message:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_5
    return-void

    .line 144
    .restart local v1    # "changed":Z
    .restart local v2    # "configListJsonArray":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    .restart local v6    # "index":I
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v8    # "ntype":I
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v10    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .restart local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "tmpConfigList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v13    # "type":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    goto :goto_4

    .line 124
    .end local v2    # "configListJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v8    # "ntype":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v11    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "type":Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 151
    .end local v7    # "json":Lorg/json/JSONObject;
    :cond_7
    :try_start_1
    sget v14, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I

    if-eq v14, v3, :cond_9

    const/4 v14, 0x1

    :goto_6
    or-int/2addr v1, v14

    .line 152
    .local v1, "changed":Z
    sget-boolean v14, Lcom/android/server/pm/OemCompatibilityHelper;->DEBUG:Z

    if-eqz v14, :cond_8

    const-string/jumbo v15, "OemCompatibilityHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "compatibility online config "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 153
    if-eqz v1, :cond_a

    const-string/jumbo v14, "changed."

    .line 152
    :goto_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_8
    if-eqz v1, :cond_4

    .line 155
    const-string/jumbo v14, "/data/system/oneplus_cpt_list.xml"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12}, Lcom/android/server/pm/OemCompatibilityHelper;->writeCompatConfigListXml(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 156
    sget-object v15, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 157
    :try_start_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    .line 158
    sput v3, Lcom/android/server/pm/OemCompatibilityHelper;->mTotalCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v15

    goto :goto_5

    .line 151
    .local v1, "changed":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    .line 153
    .local v1, "changed":Z
    :cond_a
    const-string/jumbo v14, "not change"

    goto :goto_7

    .line 156
    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private writeCompatConfigListXml(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 19
    .param p1, "dir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p2, "configList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 244
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v14, Ljava/io/StringWriter;

    invoke-direct {v14}, Ljava/io/StringWriter;-><init>()V

    .line 245
    .local v14, "writer":Ljava/io/StringWriter;
    const/4 v4, 0x0

    .line 247
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v15, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v10, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 248
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 249
    .local v12, "time":Ljava/lang/String;
    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 250
    const-string/jumbo v15, "UTF-8"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 251
    const-string/jumbo v15, "\n"

    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    const-string/jumbo v15, "compatconfiglist"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string/jumbo v15, "update-time"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string/jumbo v15, "\n"

    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v6, v15, :cond_1

    .line 256
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 257
    .local v8, "ntype":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 258
    .local v9, "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/pm/OemCompatibilityHelper;->int2string(I)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "type":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_0

    .line 260
    const-string/jumbo v15, "  "

    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    const/4 v15, 0x0

    invoke-interface {v11, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    const/4 v15, 0x0

    invoke-interface {v11, v15, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    const-string/jumbo v15, "\n"

    invoke-interface {v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 259
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 255
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 267
    .end local v7    # "j":I
    .end local v8    # "ntype":I
    .end local v9    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "type":Ljava/lang/String;
    :cond_1
    const-string/jumbo v15, "compatconfiglist"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 270
    new-instance v3, Ljava/io/File;

    const-string/jumbo v15, "/data/system/oneplus_cpt_list.xml"

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 275
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    const-string/jumbo v15, "/data/system/oneplus_cpt_list.xml"

    invoke-direct {v5, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 282
    if-eqz v5, :cond_3

    .line 283
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    move-object v4, v5

    .line 242
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "time":Ljava/lang/String;
    :cond_4
    :goto_3
    return-void

    .line 285
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v12    # "time":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 286
    .local v2, "ec":Ljava/io/IOException;
    const-string/jumbo v15, "OemCompatibilityHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "writeCompatConfigListXml # IOException # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 277
    .end local v2    # "ec":Ljava/io/IOException;
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i":I
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "time":Ljava/lang/String;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 278
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    const-string/jumbo v15, "OemCompatibilityHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "writeCompatConfigListXml # Exception # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    if-eqz v4, :cond_4

    .line 283
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 285
    :catch_2
    move-exception v2

    .line 286
    .restart local v2    # "ec":Ljava/io/IOException;
    const-string/jumbo v15, "OemCompatibilityHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "writeCompatConfigListXml # IOException # "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 280
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ec":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 282
    :goto_5
    if-eqz v4, :cond_5

    .line 283
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 280
    :cond_5
    :goto_6
    throw v15

    .line 285
    :catch_3
    move-exception v2

    .line 286
    .restart local v2    # "ec":Ljava/io/IOException;
    const-string/jumbo v16, "OemCompatibilityHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "writeCompatConfigListXml # IOException # "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 280
    .end local v2    # "ec":Ljava/io/IOException;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i":I
    .restart local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v12    # "time":Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 277
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method


# virtual methods
.method public abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageAbiOverride"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 485
    if-nez p2, :cond_0

    .line 486
    return-object p1

    .line 490
    :cond_0
    const/16 v0, 0x1bb

    .line 489
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 492
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 494
    :cond_1
    const/16 v0, 0x1bc

    .line 493
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 496
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 498
    :cond_2
    const/16 v0, 0x1bd

    .line 497
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/OemCompatibilityHelper;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v2, :cond_3

    .line 500
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v2

    return-object v0

    .line 502
    :cond_3
    return-object p1
.end method

.method public convertAbi2Int(Ljava/lang/String;)I
    .locals 1
    .param p1, "abiString"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_INT_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public convertAbi2String(I)Ljava/lang/String;
    .locals 2
    .param p1, "abiInt"    # I

    .prologue
    .line 345
    sget-object v0, Lcom/android/server/pm/OemCompatibilityHelper;->ABI_TO_STRING_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public customizeNativeLibrariesIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 459
    new-instance v0, Ljava/io/File;

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 461
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    .line 462
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "libName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 461
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_1
    const-string/jumbo v6, "libmg20pbase.so"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 467
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0xa4ac

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 468
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 472
    :cond_2
    const-string/jumbo v6, "libbaiduprotect.so"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/pm/OemCompatibilityHelper;->isBaiduProtectedApk(JLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 474
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v8, 0x8000

    or-int/2addr v7, v8

    iput v7, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_1

    .line 458
    .end local v1    # "libName":Ljava/lang/String;
    .end local v2    # "tmp":Ljava/io/File;
    :cond_3
    return-void
.end method

.method public customizePackageIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    .locals 3
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/OemCompatibilityHelper;->abiOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->cpuAbiOverride:Ljava/lang/String;

    .line 390
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeHardwareAccelerateIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeHardwareAccelerateForActivityIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeVMSafeModeIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 399
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizeTargetSdkIfNeeded(Landroid/content/pm/PackageParser$Package;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->customizePrivateFlagsIfNeeded(Landroid/content/pm/PackageParser$Package;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method public dumpToString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v3, "strBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "CompatibilityInfo:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    sget-object v5, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v5

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 371
    iget-object v4, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 372
    .local v1, "key":I
    const-string/jumbo v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    iget-object v4, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 374
    .local v2, "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "key":I
    .end local v2    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v5

    .line 378
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 369
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public initCompatOnlineConfig()V
    .locals 5

    .prologue
    .line 349
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/pm/OemCompatibilityHelper;->mContext:Landroid/content/Context;

    .line 350
    new-instance v2, Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;

    invoke-direct {v2, p0}, Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;-><init>(Lcom/android/server/pm/OemCompatibilityHelper;)V

    const-string/jumbo v3, "CompatConfigList"

    .line 349
    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 351
    iget-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 348
    return-void
.end method

.method public isInConfigList(ILjava/lang/String;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 355
    sget-object v1, Lcom/android/server/pm/OemCompatibilityHelper;->sConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper;->mCompatConfigList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 362
    return v2

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
